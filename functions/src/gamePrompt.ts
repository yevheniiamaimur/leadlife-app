// Ported from lib/models/field.dart's `kFields` (English base text).
// Kept as a hand copy rather than a shared source — the field list rarely
// changes, and the app already accepts the same duplication between
// field.dart and lib/l10n/app_en.arb's translations.
interface GameFieldInfo {
  n: number;
  name: string;
  subtitle: string;
  task: string;
}

const GAME_FIELDS: GameFieldInfo[] = [
  { n: 1, name: "Light", subtitle: "Desire", task: "What desire are you bringing into this journey?" },
  { n: 2, name: "Connection", subtitle: "Initiative", task: "When did this desire first appear in your life? Who could you share it with today that would support its realization?" },
  { n: 3, name: "Form", subtitle: "Vision", task: "What does success look like?" },
  { n: 4, name: "Scale", subtitle: "Contribution", task: "Who benefits when you achieve this?" },
  { n: 5, name: "Limitation", subtitle: "Resilience", task: "What limitations do you currently have (physical, emotional, financial, social, or other)? How are they helping you grow?" },
  { n: 6, name: "Values", subtitle: "Authenticity", task: "What has always been important to you? Does this desire reflect those values? What qualities came naturally to you as a child? Which of them are still alive in you today? How could these qualities help you achieve your desire?" },
  { n: 7, name: "Feelings", subtitle: "Emotional Awareness", task: "What emotions do you experience most often? How do they affect your desire?" },
  { n: 8, name: "Thinking", subtitle: "Clarity", task: "What beliefs support you, and what beliefs hold you back?" },
  { n: 9, name: "Subconsciousness", subtitle: "Imagination", task: "If your desire were already real, what would your life look like? Describe it." },
  { n: 10, name: "Reality", subtitle: "Action", task: "Write 10 actions you can take today to move closer to your goal." },
  { n: 11, name: "Possibility", subtitle: "Trust", task: "Do you truly believe your desire is possible? If yes, can you trust the process?" },
  { n: 12, name: "Will", subtitle: "Resourcefulness", task: "What resources do you already have to reach your wish?" },
  { n: 13, name: "Intuition", subtitle: "Inner silence", task: "What is your inner voice saying about this desire?" },
  { n: 14, name: "Creation", subtitle: "Creativity", task: "How can this desire take its first form? What are you already creating in your life?" },
  { n: 15, name: "Power", subtitle: "Management", task: "What do you need to manage to move closer to your goal?" },
  { n: 16, name: "Knowledge", subtitle: "Experience", task: "Do you already have enough knowledge to achieve your goal? If not, where can you find the knowledge you need?" },
  { n: 17, name: "Choice", subtitle: "Self-Trust", task: "What feels truly right for you?" },
  { n: 18, name: "Movement", subtitle: "Discipline", task: "What action are you willing to do with discipline to reach your desire? For how long?" },
  { n: 19, name: "Truth", subtitle: "Honesty", task: "What is true for you right now?" },
  { n: 20, name: "Purpose", subtitle: "Courage", task: "How could your desire benefit others?" },
  { n: 21, name: "Change", subtitle: "Flexibility", task: "What is beginning to unfold in your life right now?" },
  { n: 22, name: "Balance", subtitle: "Self-Mastery", task: "Where in your life could you stop forcing and start responding with balance?" },
  { n: 23, name: "Observe", subtitle: "Awareness", task: "What are you trying to force right now? Take one minute to pause and observe." },
  { n: 24, name: "Transformation", subtitle: "Ability to Change", task: "What are you holding on to that no longer serves you? What needs to change in you to reach your goal?" },
  { n: 25, name: "Intention", subtitle: "Focus", task: "Why does this desire matter to you?" },
  { n: 26, name: "Attachment", subtitle: "Self-Honesty", task: "What are you doing because you are afraid not to?" },
  { n: 27, name: "Breakdown", subtitle: "Resilience", task: "What do you think about your desire? What do you feel about it? Is there a contradiction between the two?" },
  { n: 28, name: "Guidance", subtitle: "Alignment with Flow", task: "Where is this desire guiding you?" },
  { n: 29, name: "Feeling", subtitle: "Sensitivity", task: "What are you afraid to face?" },
  { n: 30, name: "Integration", subtitle: "Recognition", task: "Who are you when this desire is already part of your life?" },
  { n: 31, name: "Awakening", subtitle: "Action", task: "What action can you no longer postpone?" },
  { n: 32, name: "Wholeness", subtitle: "Bravery", task: "What fears still stand between you and your next step?" },
];

const FIELD_LIST_TEXT = GAME_FIELDS.map(
  (f) => `${f.n}. ${f.name} (${f.subtitle}) — ${f.task}`
).join("\n");

const GAME_OVERVIEW = `You are the in-app assistant for "Leadlife" — a 32-field self-development board game.
The player starts by naming a "desire" (their wish/goal), then journeys through 32 fields in order,
rolling dice and, on each field, reflecting on that field's question in relation to their desire.
Each field explores one theme (e.g. Vision, Resilience, Purpose) via its own superpower/subtitle.
The 32 fields, in order, are:
${FIELD_LIST_TEXT}`;

export function fieldInfo(fieldNumber: number): GameFieldInfo | undefined {
  return GAME_FIELDS.find((f) => f.n === fieldNumber);
}

export const GAME_SYSTEM_PROMPT = GAME_OVERVIEW;
