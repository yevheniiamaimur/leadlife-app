import { onCall, HttpsError } from "firebase-functions/v2/https";
import { defineSecret } from "firebase-functions/params";
import Anthropic from "@anthropic-ai/sdk";
import { initializeApp } from "firebase-admin/app";
import { getAuth } from "firebase-admin/auth";
import { getFirestore, FieldPath, FieldValue, Transaction } from "firebase-admin/firestore";
import { GAME_SYSTEM_PROMPT } from "./gamePrompt";

initializeApp();
const db = getFirestore();

const anthropicApiKey = defineSecret("ANTHROPIC_API_KEY");

const MODEL = "claude-opus-4-8";
const MAX_TEXT_LENGTH = 500;
const MAX_HISTORY_TURNS = 20;
const FIELD_COUNT = 32;

// Soft cap on game generation specifically — the "Unlimited Journeys"
// subscription tier means unlimited *play*, not an unbounded AI bill.
// Hitting the cap doesn't block anything: generateGame just throws
// resource-exhausted, and the client's existing fallback (static field
// content) engages transparently — see GameContentService on the Dart side.
const MONTHLY_GENERATION_LIMIT = 10;

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
    const batch = db.batch();
    batch.delete(db.collection("users").doc(uid));
    for (const document of usage.docs) batch.delete(document.ref);
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

const CLARIFY_SYSTEM_SUFFIX = `

Your job here: help the player turn a vague desire into ONE clear, specific,
present-tense wish statement — in the style "I have…", "I am…", "I experience…"
(present tense, as if it's already true — not "I want" or future tense).
Ask at most one or two short, warm clarifying questions per turn to sharpen
vague or generic desires. Keep replies brief (2-4 sentences).
Once the wish feels concrete, specific, and present-tense, end your reply
with a final line, on its own, formatted EXACTLY as:
SUGGESTED_WISH: <the wish statement>
Only include that line when you're confident the wish is ready — not on every turn.`;

const GENERATE_GAME_SYSTEM_SUFFIX = `

Your job here: personalize the game for one player before they start.
For EACH of the 32 fields listed above, write:
- "intro": 2-4 sentences replacing the field's original reflective intro,
  tailored to this player's desire (and life focus area, if given). Keep the
  field's underlying theme and meaning intact.
- "question": 1-3 short sentences replacing the field's original question,
  tailored the same way.
- "arrivalNote": ONE short sentence — what it means for this player when
  their journey (a dice-driven path that can skip fields entirely) leads
  them to this specific field, given their desire.
Respond in the same language as the player's desire. Return exactly one
entry per field number 1-32, no more, no fewer.`;

const FINAL_ANALYSIS_SYSTEM_SUFFIX = `

Your job here: the player has just completed their journey — they rolled
dice through some subset of the 32 fields (not necessarily all of them,
since the dice can skip fields) and answered each field's question in
relation to their desire. Given their desire and the answers they gave,
write:
- "analysis": 3-6 sentences of warm, insightful analysis connecting patterns
  across their answers back to their original desire.
- "finalDirection": ONE clear, motivating sentence naming the single most
  important next area of focus for them.
- "recommendations": 3-5 short, concrete, imperative-sentence next steps.
Respond in the same language as their answers.`;

interface ChatTurnInput {
  role: "user" | "assistant";
  text: string;
}

interface AnswerEntryInput {
  n: number;
  fieldName: string;
  question: string;
  answer: string;
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

function extractSuggestedWish(raw: string): { reply: string; suggestedWish: string | null } {
  const match = raw.match(/^SUGGESTED_WISH:\s*(.+)$/m);
  if (!match) {
    return { reply: raw, suggestedWish: null };
  }
  const suggestedWish = match[1].trim();
  const reply = raw.slice(0, match.index).trim();
  return { reply: reply || suggestedWish, suggestedWish };
}

function requireAuth(request: { auth?: unknown }): void {
  if (!request.auth) {
    throw new HttpsError("unauthenticated", "Sign-in required.");
  }
}

export const clarifyWish = onCall(
  { secrets: [anthropicApiKey], region: "us-central1" },
  async (request) => {
    requireAuth(request);

    const history = request.data?.history;
    if (!Array.isArray(history) || history.length === 0) {
      throw new HttpsError("invalid-argument", "history must be a non-empty array.");
    }
    if (history.length > MAX_HISTORY_TURNS) {
      throw new HttpsError("invalid-argument", `history cannot exceed ${MAX_HISTORY_TURNS} turns.`);
    }

    const messages: Anthropic.MessageParam[] = [];
    for (const turn of history as ChatTurnInput[]) {
      if (
        (turn.role !== "user" && turn.role !== "assistant") ||
        typeof turn.text !== "string" ||
        turn.text.trim().length === 0
      ) {
        throw new HttpsError("invalid-argument", "Each history entry needs a role and non-empty text.");
      }
      messages.push({ role: turn.role, content: turn.text.trim().slice(0, MAX_TEXT_LENGTH) });
    }
    if (messages[messages.length - 1].role !== "user") {
      throw new HttpsError("invalid-argument", "The last history entry must be from the user.");
    }

    const client = new Anthropic({ apiKey: anthropicApiKey.value() });

    const response = await client.messages.create({
      model: MODEL,
      max_tokens: 500,
      output_config: { effort: "medium" },
      system: [
        {
          type: "text",
          text: GAME_SYSTEM_PROMPT + CLARIFY_SYSTEM_SUFFIX,
          cache_control: { type: "ephemeral" },
        },
      ],
      messages,
    });

    const rawText = extractText(response);
    if (!rawText) {
      throw new HttpsError("internal", "The assistant returned an empty response.");
    }

    return extractSuggestedWish(rawText);
  }
);

export const generateGame = onCall(
  { secrets: [anthropicApiKey], region: "us-central1", timeoutSeconds: 120 },
  async (request) => {
    requireAuth(request);

    const wish = request.data?.wish;
    const focus = request.data?.focus;

    if (typeof wish !== "string" || wish.trim().length === 0) {
      throw new HttpsError("invalid-argument", "wish must be a non-empty string.");
    }
    if (focus !== undefined && focus !== null && typeof focus !== "string") {
      throw new HttpsError("invalid-argument", "focus must be a string when provided.");
    }
    const trimmedWish = wish.trim().slice(0, MAX_TEXT_LENGTH);
    const trimmedFocus = typeof focus === "string" ? focus.trim().slice(0, MAX_TEXT_LENGTH) : "";

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
            ? `My desire: "${trimmedWish}"\nMy life focus area: "${trimmedFocus}"`
            : `My desire: "${trimmedWish}"`,
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

    return { fields };
  }
);

export const finalAnalysis = onCall(
  { secrets: [anthropicApiKey], region: "us-central1" },
  async (request) => {
    requireAuth(request);

    const wish = request.data?.wish;
    const entries = request.data?.entries;

    if (typeof wish !== "string" || wish.trim().length === 0) {
      throw new HttpsError("invalid-argument", "wish must be a non-empty string.");
    }
    if (!Array.isArray(entries) || entries.length === 0) {
      throw new HttpsError("invalid-argument", "entries must be a non-empty array.");
    }

    const lines: string[] = [];
    for (const e of entries as AnswerEntryInput[]) {
      if (
        typeof e.n !== "number" ||
        typeof e.fieldName !== "string" ||
        typeof e.question !== "string" ||
        typeof e.answer !== "string" ||
        e.answer.trim().length === 0
      ) {
        throw new HttpsError("invalid-argument", "Each entry needs n, fieldName, question, and a non-empty answer.");
      }
      lines.push(
        `Field ${e.n} (${e.fieldName.slice(0, MAX_TEXT_LENGTH)}) — "${e.question.slice(0, MAX_TEXT_LENGTH)}"\n` +
          `Answer: "${e.answer.trim().slice(0, MAX_TEXT_LENGTH)}"`
      );
    }

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
          content: `My desire: "${wish.trim().slice(0, MAX_TEXT_LENGTH)}"\n\n${lines.join("\n\n")}`,
        },
      ],
    });

    const text = extractText(response);
    if (!text) {
      throw new HttpsError("internal", "The assistant returned an empty response.");
    }

    try {
      return JSON.parse(text);
    } catch {
      throw new HttpsError("internal", "The assistant returned invalid JSON.");
    }
  }
);
