import { onCall, HttpsError } from "firebase-functions/v2/https";
import { defineSecret } from "firebase-functions/params";
import Anthropic from "@anthropic-ai/sdk";
import { initializeApp } from "firebase-admin/app";
import { getAuth } from "firebase-admin/auth";
import { getFirestore, FieldPath, FieldValue, Transaction } from "firebase-admin/firestore";
import { GAME_SYSTEM_PROMPT } from "./gamePrompt";
import { checkInputForCrisis, checkOutputForCrisis, crisisRefusalMessage, crisisSafeAnalysis, logCrisisTrigger } from "./crisisFilter";

initializeApp();
const db = getFirestore();

const anthropicApiKey = defineSecret("ANTHROPIC_API_KEY");

const MODEL = "claude-opus-4-8";
const MAX_TEXT_LENGTH = 500;
const FIELD_COUNT = 32;

// Soft cap on game generation specifically — the "Unlimited Journeys"
// subscription tier means unlimited *play*, not an unbounded AI bill.
// Hitting the cap doesn't block anything: generateGame just throws
// resource-exhausted, and the client's existing fallback (static field
// content) engages transparently — see GameContentService on the Dart side.
const MONTHLY_GENERATION_LIMIT = 10;
const DAILY_FINAL_ANALYSIS_LIMIT = 10;

async function reserveDailyAiCall(
  uid: string,
  action: "final",
  limit: number
): Promise<void> {
  const day = new Date().toISOString().slice(0, 10);
  const ref = db.collection("aiUsage").doc(`${uid}_${action}_${day}`);
  await db.runTransaction(async (tx: Transaction) => {
    const snap = await tx.get(ref);
    const count = (snap.data()?.count as number | undefined) ?? 0;
    if (count >= limit) {
      throw new HttpsError(
        "resource-exhausted",
        `Daily ${action} limit (${limit}) reached.`
      );
    }
    tx.set(ref, {
      uid,
      action,
      day,
      count: count + 1,
      updatedAt: FieldValue.serverTimestamp(),
    }, { merge: true });
  });
}

export const deleteAccount = onCall(
  { region: "us-central1" },
  async (request) => {
    requireAuth(request);
    const uid = request.auth!.uid;
    const usage = await db.collection("gameGenerationUsage")
      .orderBy(FieldPath.documentId())
      .startAt(`${uid}_`)
      .endAt(`${uid}_\uf8ff`)
      .get();
    const aiUsage = await db.collection("aiUsage").where("uid", "==", uid).get();
    const crisisTriggers = await db.collection("crisisTriggers").where("uid", "==", uid).get();
    const batch = db.batch();
    batch.delete(db.collection("users").doc(uid));
    for (const document of usage.docs) batch.delete(document.ref);
    for (const document of aiUsage.docs) batch.delete(document.ref);
    for (const document of crisisTriggers.docs) batch.delete(document.ref);
    await batch.commit();
    await getAuth().deleteUser(uid);
    return { deleted: true };
  }
);

/** Atomically checks and consumes one of this month's generation slots for
 * [uid]. Throws HttpsError('resource-exhausted', ...) once the monthly cap
 * is reached. Reserves the slot before calling Claude (not after success),
 * so a failed generation still costs a slot — simpler and race-safe, at
 * the cost of occasionally "wasting" one on a rare failure. */
async function reserveGenerationSlot(uid: string): Promise<void> {
  const period = new Date().toISOString().slice(0, 7); // "YYYY-MM"
  const ref = db.collection("gameGenerationUsage").doc(`${uid}_${period}`);
  await db.runTransaction(async (tx: Transaction) => {
    const snap = await tx.get(ref);
    const count = (snap.data()?.count as number | undefined) ?? 0;
    if (count >= MONTHLY_GENERATION_LIMIT) {
      throw new HttpsError(
        "resource-exhausted",
        `Monthly game-generation limit (${MONTHLY_GENERATION_LIMIT}) reached.`
      );
    }
    tx.set(ref, { count: count + 1, updatedAt: FieldValue.serverTimestamp() }, { merge: true });
  });
}

const GENERATE_GAME_SYSTEM_SUFFIX = `

Your job here: personalize the game for one player before they start.
For EACH of the 32 fields listed above, write:
- "intro": an empty string. The app keeps the approved static intro for each
  field, so do not rewrite it.
- "question": 1-3 short sentences personalizing the field's original question
  to this player's desire (and life focus area, if given). Keep the field's
  underlying theme and meaning intact.
- "arrivalNote": ONE short sentence — what it means for this player when
  their journey (a dice-driven path that can skip fields entirely) leads
  them to this specific field, given their desire.
Special requirement for field 1: personalize an affirming, inspiring intro,
but return an empty string for "question" because this field has no question
or task.
Respond in the same language as the player's desire. Return exactly one
entry per field number 1-32, no more, no fewer.`;

const FINAL_ANALYSIS_SYSTEM_SUFFIX = `

Your job here: the player has just completed their journey — they rolled
dice through some subset of the 32 fields (not necessarily all of them,
since the dice can skip fields) and answered each field's question in
relation to their desire. Given their desire and the answers they gave,
write:
- "analysis": 3-6 sentences of warm, insightful analysis connecting patterns
  across their answers back to their original desire. Include the superpowers
  activated by the fields they visited and explain how these superpowers support
  the player's process.
- "finalDirection": ONE clear, motivating sentence naming the single most
  important next area of focus for them.
- "recommendations": 3-5 short, concrete, imperative-sentence next steps. When
  helpful, name the relevant superpower in the recommendation.
Respond in the same language as their answers.`;

const OUTPUT_LANGUAGES: Record<string, string> = {
  en: "English",
  es: "Spanish",
  de: "German",
  uk: "Ukrainian",
  ru: "Russian",
};

function outputLanguage(data: unknown): string {
  if (typeof data !== "string" || !(data in OUTPUT_LANGUAGES)) {
    return OUTPUT_LANGUAGES.en;
  }
  return OUTPUT_LANGUAGES[data];
}

interface AnswerEntryInput {
  n: number;
  fieldName: string;
  superpower?: string;
  question: string;
  answer: string;
  codes?: string[];
  roll?: number;
  nextFieldNumber?: number;
}

function extractText(response: Anthropic.Message): string {
  const parts: string[] = [];
  for (const block of response.content) {
    if (block.type === "text") {
      parts.push(block.text);
    }
  }
  return parts.join("\n").trim();
}

function requireAuth(request: { auth?: unknown }): void {
  if (!request.auth) {
    throw new HttpsError("unauthenticated", "Sign-in required.");
  }
}

export const generateGame = onCall(
  { secrets: [anthropicApiKey], region: "us-central1", timeoutSeconds: 120 },
  async (request) => {
    requireAuth(request);

    const wish = request.data?.wish;
    const focus = request.data?.focus;
    const language = outputLanguage(request.data?.language);

    if (typeof wish !== "string" || wish.trim().length === 0) {
      throw new HttpsError("invalid-argument", "wish must be a non-empty string.");
    }
    if (focus !== undefined && focus !== null && typeof focus !== "string") {
      throw new HttpsError("invalid-argument", "focus must be a string when provided.");
    }
    const trimmedWish = wish.trim().slice(0, MAX_TEXT_LENGTH);
    const trimmedFocus = typeof focus === "string" ? focus.trim().slice(0, MAX_TEXT_LENGTH) : "";

    const inputCheck = checkInputForCrisis(`${trimmedWish}\n${trimmedFocus}`);
    if (inputCheck.flagged) {
      await logCrisisTrigger(db, request.auth!.uid, "generateGame", inputCheck.category!);
      throw new HttpsError("failed-precondition", crisisRefusalMessage(language), { category: inputCheck.category });
    }

    await reserveGenerationSlot(request.auth!.uid);

    const client = new Anthropic({ apiKey: anthropicApiKey.value() });

    const response = await client.messages.create({
      model: MODEL,
      max_tokens: 8000,
      output_config: {
        format: {
          type: "json_schema",
          schema: {
            type: "object",
            properties: {
              fields: {
                type: "array",
                items: {
                  type: "object",
                  properties: {
                    n: { type: "integer" },
                    intro: { type: "string" },
                    question: { type: "string" },
                    arrivalNote: { type: "string" },
                  },
                  required: ["n", "intro", "question", "arrivalNote"],
                  additionalProperties: false,
                },
              },
            },
            required: ["fields"],
            additionalProperties: false,
          },
        },
      },
      system: [
        {
          type: "text",
          text: GAME_SYSTEM_PROMPT + GENERATE_GAME_SYSTEM_SUFFIX,
          cache_control: { type: "ephemeral" },
        },
      ],
      messages: [
        {
          role: "user",
          content: trimmedFocus
            ? `Output language: ${language}. Write every generated field only in ${language}.\nMy desire: "${trimmedWish}"\nMy life focus area: "${trimmedFocus}"`
            : `Output language: ${language}. Write every generated field only in ${language}.\nMy desire: "${trimmedWish}"`,
        },
      ],
    });

    const text = extractText(response);
    if (!text) {
      throw new HttpsError("internal", "The assistant returned an empty response.");
    }

    let parsed: { fields?: unknown };
    try {
      parsed = JSON.parse(text);
    } catch {
      throw new HttpsError("internal", "The assistant returned invalid JSON.");
    }

    const fields = parsed.fields;
    if (!Array.isArray(fields) || fields.length !== FIELD_COUNT) {
      throw new HttpsError("internal", `Expected ${FIELD_COUNT} fields, got ${Array.isArray(fields) ? fields.length : "non-array"}.`);
    }
    const seen = new Set<number>();
    for (const f of fields as Array<{ n?: unknown }>) {
      const n = f.n;
      if (typeof n !== "number" || n < 1 || n > FIELD_COUNT || seen.has(n)) {
        throw new HttpsError("internal", "The assistant returned an invalid or duplicate field number.");
      }
      seen.add(n);
    }

    const outputCheck = checkOutputForCrisis(
      (fields as Array<{ question?: unknown; arrivalNote?: unknown; intro?: unknown }>)
        .map((f) => `${f.intro ?? ""}\n${f.question ?? ""}\n${f.arrivalNote ?? ""}`)
        .join("\n")
    );
    if (outputCheck.flagged) {
      await logCrisisTrigger(db, request.auth!.uid, "generateGame", outputCheck.category!);
      throw new HttpsError("failed-precondition", crisisRefusalMessage(language), { category: outputCheck.category });
    }

    return { fields };
  }
);

export const finalAnalysis = onCall(
  { secrets: [anthropicApiKey], region: "us-central1" },
  async (request) => {
    requireAuth(request);

    const wish = request.data?.wish;
    const entries = request.data?.entries;
    const language = outputLanguage(request.data?.language);

    if (typeof wish !== "string" || wish.trim().length === 0) {
      throw new HttpsError("invalid-argument", "wish must be a non-empty string.");
    }
    if (!Array.isArray(entries) || entries.length === 0 || entries.length > FIELD_COUNT) {
      throw new HttpsError("invalid-argument", "entries must be a non-empty array.");
    }

    const lines: string[] = [];
    for (const e of entries as AnswerEntryInput[]) {
      if (
        typeof e.n !== "number" ||
        typeof e.fieldName !== "string" ||
        (e.superpower !== undefined && typeof e.superpower !== "string") ||
        typeof e.question !== "string" ||
        typeof e.answer !== "string" ||
        (e.answer.trim().length === 0 && (!Array.isArray(e.codes) || e.codes.length === 0))
      ) {
        throw new HttpsError("invalid-argument", "Each entry needs n, fieldName, question, and a non-empty answer.");
      }
      const codes = Array.isArray(e.codes)
        ? e.codes.filter((code) => typeof code === "string").map((code) => code.slice(0, MAX_TEXT_LENGTH))
        : [];
      const transition = typeof e.roll === "number" && typeof e.nextFieldNumber === "number"
        ? `\nDice: ${e.roll}; next field: ${e.nextFieldNumber}.`
        : "";
      lines.push(
        `Field ${e.n} (${e.fieldName.slice(0, MAX_TEXT_LENGTH)}; superpower: ${(e.superpower ?? "").slice(0, MAX_TEXT_LENGTH)}) — "${e.question.slice(0, MAX_TEXT_LENGTH)}"\n` +
          `Answer: "${e.answer.trim().slice(0, MAX_TEXT_LENGTH)}"` +
          (codes.length > 0 ? `\nCompleted codes: ${codes.map((code) => `"${code}"`).join("; ")}` : "") +
          transition
      );
    }

    const inputCheck = checkInputForCrisis(`${wish.trim()}\n${lines.join("\n")}`);
    if (inputCheck.flagged) {
      await logCrisisTrigger(db, request.auth!.uid, "finalAnalysis", inputCheck.category!);
      return crisisSafeAnalysis(language);
    }

    await reserveDailyAiCall(request.auth!.uid, "final", DAILY_FINAL_ANALYSIS_LIMIT);

    const client = new Anthropic({ apiKey: anthropicApiKey.value() });

    const response = await client.messages.create({
      model: MODEL,
      max_tokens: 1500,
      output_config: {
        effort: "high",
        format: {
          type: "json_schema",
          schema: {
            type: "object",
            properties: {
              analysis: { type: "string" },
              finalDirection: { type: "string" },
              recommendations: { type: "array", items: { type: "string" } },
            },
            required: ["analysis", "finalDirection", "recommendations"],
            additionalProperties: false,
          },
        },
      },
      system: [
        {
          type: "text",
          text: GAME_SYSTEM_PROMPT + FINAL_ANALYSIS_SYSTEM_SUFFIX,
          cache_control: { type: "ephemeral" },
        },
      ],
      messages: [
        {
          role: "user",
          content: `Output language: ${language}. Write the complete analysis only in ${language}.\nMy desire: "${wish.trim().slice(0, MAX_TEXT_LENGTH)}"\n\n${lines.join("\n\n")}`,
        },
      ],
    });

    const text = extractText(response);
    if (!text) {
      throw new HttpsError("internal", "The assistant returned an empty response.");
    }

    let parsedAnalysis: { analysis?: unknown; finalDirection?: unknown; recommendations?: unknown };
    try {
      parsedAnalysis = JSON.parse(text);
    } catch {
      throw new HttpsError("internal", "The assistant returned invalid JSON.");
    }

    const outputCheck = checkOutputForCrisis(
      `${parsedAnalysis.analysis ?? ""}\n${parsedAnalysis.finalDirection ?? ""}\n${
        Array.isArray(parsedAnalysis.recommendations) ? parsedAnalysis.recommendations.join("\n") : ""
      }`
    );
    if (outputCheck.flagged) {
      await logCrisisTrigger(db, request.auth!.uid, "finalAnalysis", outputCheck.category!);
      return crisisSafeAnalysis(language);
    }

    return parsedAnalysis;
  }
);
