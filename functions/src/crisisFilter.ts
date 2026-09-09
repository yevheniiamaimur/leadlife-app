import { FieldValue, Firestore } from "firebase-admin/firestore";

// Baseline crisis-safety filter for generateGame/finalAnalysis. Wraps user
// free text (pre-processing, before it reaches Claude) and Claude's own
// output (post-processing, before it reaches the client). Keyword/regex
// baseline for now — the exported signatures here are the contract; a real
// classifier or a dedicated safety API can replace the body of
// checkInputForCrisis/checkOutputForCrisis later without touching index.ts.
//
// Known gap (deliberately out of scope): this filter only wraps the two
// Anthropic-calling Cloud Functions. Diary entries (DiaryService/
// CloudSyncService) never flow into an Anthropic call today and are not
// covered here.

export interface CrisisCheckResult {
  flagged: boolean;
  category?: string;
}

interface PatternSet {
  category: string;
  patterns: RegExp[];
}

const PATTERNS: PatternSet[] = [
  {
    category: "self-harm",
    patterns: [
      // English
      /\bsuicid\w*/i,
      /\bkill(ing)? myself\b/i,
      /\bend(ing)? my (own )?life\b/i,
      /\bwant(ed)? to die\b/i,
      /\bself[- ]?harm\w*/i,
      /\bcutting myself\b/i,
      /\bno reason to live\b/i,
      // Russian
      /покончить с собой/iu,
      /самоубийств\w*/iu,
      /суицид\w*/iu,
      /хочу умереть/iu,
      /не хочу жить/iu,
      /причинить себе вред/iu,
      /порезать себя/iu,
      // Ukrainian
      /покінчити з собою/iu,
      /самогубств\w*/iu,
      /суїцид\w*/iu,
      /хочу померти/iu,
      /не хочу жити/iu,
      /завдати собі шкоди/iu,
      // Spanish
      /suicid\w*/iu,
      /quitarme la vida/iu,
      /quiero morir/iu,
      /hacerme daño/iu,
      /autolesion\w*/iu,
      // German
      /suizid\w*/iu,
      /selbstmord\w*/iu,
      /mir das leben nehmen/iu,
      /ich will sterben/iu,
      /mich selbst verletzen/iu,
    ],
  },
  {
    category: "danger-to-others",
    patterns: [
      // English
      /\bkill (him|her|them|someone|somebody)\b/i,
      /\bhurt (him|her|them|someone|somebody)\b/i,
      /\bi('m| am) going to kill\b/i,
      // Russian
      /убить (его|её|их|кого)/iu,
      /причинить вред (ему|ей|им)/iu,
      // Ukrainian
      /вбити (його|її|їх)/iu,
      /завдати шкоди (йому|їй|їм)/iu,
      // Spanish
      /matar a (él|ella|ellos|alguien)/iu,
      /hacerle daño a/iu,
      // German
      /jemanden (töten|umbringen)/iu,
      /jemandem wehtun/iu,
    ],
  },
];

function scan(text: string): CrisisCheckResult {
  for (const set of PATTERNS) {
    for (const pattern of set.patterns) {
      if (pattern.test(text)) {
        return { flagged: true, category: set.category };
      }
    }
  }
  return { flagged: false };
}

/** Run on raw user free text (wish, focus, or joined journal answers) before
 * it's sent to Claude. */
export function checkInputForCrisis(text: string): CrisisCheckResult {
  return scan(text);
}

/** Run on Claude's generated output text before it's returned to the
 * client, in case the model itself produced something unsafe. */
export function checkOutputForCrisis(text: string): CrisisCheckResult {
  return scan(text);
}

interface SafeContent {
  refusalMessage: string;
  safeAnalysis: {
    analysis: string;
    finalDirection: string;
    recommendations: string[];
  };
}

// Keyed by the same full language names produced by index.ts's
// outputLanguage() (OUTPUT_LANGUAGES values), not ISO codes. Deliberately
// generic, non-hotline-specific language — the app knows the player's
// language, not their country, so a hardcoded local hotline number would
// often be wrong. Never live-AI-generated.
const SAFE_CONTENT: Record<string, SafeContent> = {
  English: {
    refusalMessage:
      "Hatchpot noticed something in what you wrote that deserves more care than this game can offer. Please reach out to someone you trust, a mental health professional, or your local emergency services. You don't have to go through this alone.",
    safeAnalysis: {
      analysis:
        "What you shared deserves more care than this game can offer. Hatchpot is not a substitute for professional support, and this journey has been paused rather than analyzed.",
      finalDirection: "Reach out to someone you trust or a mental health professional.",
      recommendations: [
        "Talk to someone you trust about how you're feeling right now.",
        "Contact a mental health professional or counselor.",
        "If you or someone else is in immediate danger, contact your local emergency services.",
      ],
    },
  },
  Russian: {
    refusalMessage:
      "Hatchpot заметил в твоём сообщении то, что заслуживает большего внимания, чем может дать эта игра. Пожалуйста, обратись к тому, кому доверяешь, к специалисту по психическому здоровью или в службу экстренной помощи в своей стране. Тебе не нужно проходить через это в одиночку.",
    safeAnalysis: {
      analysis:
        "То, чем ты поделился(-ась), заслуживает большего внимания, чем может дать эта игра. Hatchpot не заменяет профессиональную помощь, и это путешествие приостановлено, а не проанализировано.",
      finalDirection: "Обратись к тому, кому доверяешь, или к специалисту по психическому здоровью.",
      recommendations: [
        "Поговори с кем-то, кому доверяешь, о том, что ты сейчас чувствуешь.",
        "Обратись к специалисту по психическому здоровью.",
        "Если тебе или кому-то ещё угрожает непосредственная опасность, обратись в службу экстренной помощи.",
      ],
    },
  },
  Ukrainian: {
    refusalMessage:
      "Hatchpot помітив у твоєму повідомленні те, що заслуговує на більшу увагу, ніж може дати ця гра. Будь ласка, звернися до когось, кому довіряєш, до фахівця з психічного здоров'я або до служби екстреної допомоги у своїй країні. Ти не мусиш проходити через це наодинці.",
    safeAnalysis: {
      analysis:
        "Те, чим ти поділився(-лася), заслуговує на більшу увагу, ніж може дати ця гра. Hatchpot не замінює професійну допомогу, і цю подорож призупинено, а не проаналізовано.",
      finalDirection: "Звернися до когось, кому довіряєш, або до фахівця з психічного здоров'я.",
      recommendations: [
        "Поговори з кимось, кому довіряєш, про те, що ти зараз відчуваєш.",
        "Звернися до фахівця з психічного здоров'я.",
        "Якщо тобі або комусь іншому загрожує безпосередня небезпека, звернися до служби екстреної допомоги.",
      ],
    },
  },
  Spanish: {
    refusalMessage:
      "Hatchpot ha notado algo en lo que escribiste que merece más atención de la que este juego puede ofrecer. Por favor, busca a alguien de confianza, a un profesional de la salud mental o a los servicios de emergencia de tu país. No tienes que pasar por esto solo(a).",
    safeAnalysis: {
      analysis:
        "Lo que compartiste merece más atención de la que este juego puede ofrecer. Hatchpot no sustituye el apoyo profesional, y este viaje se ha pausado en lugar de analizarse.",
      finalDirection: "Busca a alguien de confianza o a un profesional de la salud mental.",
      recommendations: [
        "Habla con alguien de confianza sobre cómo te sientes ahora mismo.",
        "Contacta a un profesional de la salud mental.",
        "Si tú u otra persona están en peligro inmediato, contacta a los servicios de emergencia de tu país.",
      ],
    },
  },
  German: {
    refusalMessage:
      "Hatchpot hat in deiner Nachricht etwas bemerkt, das mehr Aufmerksamkeit verdient, als dieses Spiel bieten kann. Bitte wende dich an jemanden, dem du vertraust, an eine Fachperson für psychische Gesundheit oder an den Notdienst in deinem Land. Du musst das nicht allein durchstehen.",
    safeAnalysis: {
      analysis:
        "Was du geteilt hast, verdient mehr Aufmerksamkeit, als dieses Spiel bieten kann. Hatchpot ersetzt keine professionelle Unterstützung, und diese Reise wurde pausiert statt analysiert.",
      finalDirection: "Wende dich an jemanden, dem du vertraust, oder an eine Fachperson für psychische Gesundheit.",
      recommendations: [
        "Sprich mit jemandem, dem du vertraust, darüber, wie es dir gerade geht.",
        "Wende dich an eine Fachperson für psychische Gesundheit.",
        "Wenn du oder jemand anderes in unmittelbarer Gefahr ist, wende dich an den Notdienst in deinem Land.",
      ],
    },
  },
};

function content(language: string): SafeContent {
  return SAFE_CONTENT[language] ?? SAFE_CONTENT.English;
}

/** Localized, pre-written (never live-AI-generated) safe fallback for a
 * blocked generateGame call. */
export function crisisRefusalMessage(language: string): string {
  return content(language).refusalMessage;
}

/** Localized, pre-written safe fallback matching finalAnalysis's normal
 * response shape, so index.ts can return it directly with no client-side
 * special-casing. */
export function crisisSafeAnalysis(language: string): SafeContent["safeAnalysis"] {
  return content(language).safeAnalysis;
}

/** Logs a crisis trigger to Firestore. Never logs the raw flagged text —
 * only uid, function name, timestamp, and category (data minimization). */
export async function logCrisisTrigger(
  db: Firestore,
  uid: string,
  fn: "generateGame" | "finalAnalysis",
  category: string
): Promise<void> {
  await db.collection("crisisTriggers").add({
    uid,
    fn,
    category,
    timestamp: FieldValue.serverTimestamp(),
  });
}
