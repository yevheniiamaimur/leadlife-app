import 'package:flutter/material.dart';
import '../l10n/app_localizations.dart';

class GameField {
  const GameField({
    required this.n,
    required this.name,
    required this.subtitle,
    required this.superpower,
    required this.color,
    required this.intro,
    required this.task,
    this.arrivalNote = '',
  });

  final int n;
  final String name;
  final String subtitle;
  final String superpower;
  final Color color;
  final String intro;
  final String task;

  /// AI-personalized flavor text shown when the dice-driven path leads the
  /// player to this field (see GameContentService). Empty when this field's
  /// content wasn't AI-generated (fallback mode).
  final String arrivalNote;

  String get paddedNumber => n.toString().padLeft(2, '0');
}

const List<GameField> kFields = [
  GameField(
    n: 1,
    name: 'Light',
    subtitle: 'Desire',
    superpower: 'Desire',
    color: Color(0xFFFFFFFF),
    intro:
        'In Hatchpot, Light is the symbolic beginning — the energy already present in your idea.\n\nThe desire you wrote reflects something genuinely important to you. Let its value support you as your path begins.',
    task: '',
  ),
  GameField(
    n: 2,
    name: 'Connection',
    subtitle: 'Initiative',
    superpower: 'Initiative',
    color: Color(0xFFD9D9D9),
    intro:
        'Every idea starts as a spark.\n\nGrowth begins when you share it with the world.\nEvery desire has an origin.\nRemember where this dream first appeared in your life.',
    task:
        'When did this desire first appear in your life?\n\nWho could you share it with today that would support its realization?',
  ),
  GameField(
    n: 3,
    name: 'Form',
    subtitle: 'Vision',
    superpower: 'Vision',
    color: Color(0xFF000000),
    intro:
        'A desire becomes real when it has a clear shape.\nImagine what success looks like for you.',
    task: 'What does success look like?',
  ),
  GameField(
    n: 4,
    name: 'Scale',
    subtitle: 'Contribution',
    superpower: 'Contribution',
    color: Color(0xFF29368D),
    intro:
        'A desire needs a structure that can hold its energy and actions.\n\nThis field is connected with scale, expansion, and kindness.',
    task:
        'Why is it valuable to the world for your desire to come true? Write as many points as feel natural.\n\nI give the world __________, and the world accepts me and gives me opportunities and support.',
  ),
  GameField(
    n: 5,
    name: 'Limitation',
    subtitle: 'Resilience',
    superpower: 'Resilience',
    color: Color(0xFFFF3131),
    intro:
        'Obstacles are a normal stage of every process of becoming.\n\nLook at what stands in your way again: it may already be revealing the strength growing within you.',
    task:
        'What currently seems like a limitation? What positive quality or behavior is it teaching you?',
  ),
  GameField(
    n: 6,
    name: 'Values',
    subtitle: 'Authenticity',
    superpower: 'Authenticity',
    color: Color(0xFFFFDE59),
    intro:
        'Your desire reflects a part of you that is ready to manifest.\n\nSee who you become for yourself and the world when it is realized, and what value stands behind it. This field also reflects the inner child and love.',
    task:
        'What part of you does this desire express? Who do you become for yourself and the world when it is realized? What value stands behind it?\n\nI acknowledge myself as __________ and use these qualities to realize what I intend.',
  ),
  GameField(
    n: 7,
    name: 'Feelings',
    subtitle: 'Emotional Awareness',
    superpower: 'Emotional Awareness',
    color: Color(0xFF00BF63),
    intro:
        'This field shows the emotional dimension of your request. Emotions are signs. If you do not suppress them, but live through them, energy begins to move in the right direction.\n\nThis field works as a readiness filter: it shows which states are now slowing movement down and which ones are opening the way.',
    task:
        'What emotions do you experience most often specifically in relation to your request? Is there an emotion or repeating emotional cycle where you feel stuck? What usually causes these states?\n\nI release __________ and allow energy to move toward the realization of my request.',
  ),
  GameField(
    n: 8,
    name: 'Thinking',
    subtitle: 'Clarity',
    superpower: 'Clarity',
    color: Color(0xFFFF914D),
    intro:
        'This field shows which thoughts and beliefs surround your request. Some beliefs support movement, while others may quietly limit manifestation.\n\nWhen you see them clearly, you can choose a new direction.',
    task:
        'What do you really think about your request? Which beliefs or assumptions may be blocking its realization?\n\nI transform limiting beliefs into freedom of manifestation.',
  ),
  GameField(
    n: 9,
    name: 'Subconsciousness',
    subtitle: 'Imagination',
    superpower: 'Imagination',
    color: Color(0xFF8C52FF),
    intro:
        'Your subconscious holds all past events and experiences, as well as future probabilities.\n\nThrough this field, we tune in to the desired branch of probability.',
    task:
        'Imagine the realization of your request from the heart. What picture do you see? Describe it in brief points: what is happening, where you are, what you feel, and what has already become real.',
  ),
  GameField(
    n: 10,
    name: 'Reality',
    subtitle: 'Action',
    superpower: 'Action',
    color: Color(0xFF000000),
    intro:
        'This field is about reality and the physical world. Here, the request begins to move from idea, feeling, and image into concrete action.\n\nIf your request is connected with matter, money, the body, or a visible result, this field is especially important.',
    task:
        'Write 10 actions that, in your view, will help realize your request. Try to make most of them actions you can take today, at least half of them.',
  ),
  GameField(
    n: 11,
    name: 'Possibility',
    subtitle: 'Trust',
    superpower: 'Trust',
    color: Color(0xFFFED738),
    intro: 'Within every desire lies the possibility of its realization.',
    task:
        'Do you truly believe your desire is possible? If yes, can you trust the process?',
  ),
  GameField(
    n: 12,
    name: 'Will',
    subtitle: 'Resourcefulness',
    superpower: 'Resourcefulness',
    color: Color(0xFFFFC009),
    intro: 'Your will is your most powerful resource.',
    task: 'What resources do you already have to reach your wish?',
  ),
  GameField(
    n: 13,
    name: 'Intuition',
    subtitle: 'Inner silence',
    superpower: 'Inner silence',
    color: Color(0xFF0796C0),
    intro: 'Your inner voice always knows the way.',
    task: 'What is your inner voice saying about this desire?',
  ),
  GameField(
    n: 14,
    name: 'Creation',
    subtitle: 'Creativity',
    superpower: 'Creativity',
    color: Color(0xFF15B263),
    intro:
        'Every reality begins as a possibility.\n\nCreation is the bridge between an idea and its expression.\n\nCreation turns possibilities into reality.\n\nEvery day you create something through your actions, energy, and attention.',
    task:
        'How can this desire take its first form?\n\nWhat are you already creating in your life?',
  ),
  GameField(
    n: 15,
    name: 'Power',
    subtitle: 'Management',
    superpower: 'Management',
    color: Color(0xFFD02323),
    intro:
        'Power begins with structure.\n\nYou can only manage what has structure.\n\nWhat you can manage, you can improve.',
    task:
        'What do you need to manage to move closer to your goal?\n\nI create structure in __________ to build __________.',
  ),
  GameField(
    n: 16,
    name: 'Knowledge',
    subtitle: 'Experience',
    superpower: 'Experience',
    color: Color(0xFFFE480D),
    intro:
        'Knowledge becomes valuable when you use it.\n\nReal wisdom appears through action.\n\nThe right knowledge can show you the next step forward.',
    task:
        'Do you already have enough knowledge to achieve your goal?\n\nIf yes, what knowledge will help you?\n\nIf not, where can you find the knowledge you need?\n\nThe knowledge that will help me move forward is __________.\n\nI can gain new knowledge from __________.',
  ),
  GameField(
    n: 17,
    name: 'Choice',
    subtitle: 'Self-Trust',
    superpower: 'Self-Trust',
    color: Color(0xFFFA9138),
    intro:
        'Every choice shapes who you become.\n\nWhen you choose what is truly yours, you move forward with confidence.\n\nYour heart already knows what feels true.\n\nTrust yourself enough to choose it.',
    task:
        'What feels truly right for you?\n\nI choose __________ because it is mine.',
  ),
  GameField(
    n: 18,
    name: 'Movement',
    subtitle: 'Discipline',
    superpower: 'Discipline',
    color: Color(0xFFFFAE3C),
    intro:
        'Your desire requires discipline from you.\nThrough small, consistent steps, you can move closer to what you want.',
    task:
        'What action are you willing to do with discipline to reach your desire?\n\nFor how long are you willing to keep doing it?\n\nI will do __________ regularly for __________ to move closer to my desire.',
  ),
  GameField(
    n: 19,
    name: 'Truth',
    subtitle: 'Honesty',
    superpower: 'Honesty',
    color: Color(0xFFF5ED39),
    intro:
        'Progress begins with seeing things as they are.\n\nTruth creates the foundation for change.',
    task:
        'What is true for you right now?\n\nMy truth right now is __________.\n\nTo move closer to my desire, I intend to improve __________.',
  ),
  GameField(
    n: 20,
    name: 'Purpose',
    subtitle: 'Courage',
    superpower: 'Courage',
    color: Color(0xFFB0D229),
    intro:
        'A meaningful goal benefits more than just yourself.\n\nWhen your desire serves a greater purpose, it becomes stronger.\n\nIt takes courage to follow your own path.\n\nThe more meaningful your goal is, the more people it can inspire and help.',
    task:
        'How could your desire benefit others?\n\nWrite 10 ways your desire could help other people.',
  ),
  GameField(
    n: 21,
    name: 'Change',
    subtitle: 'Flexibility',
    superpower: 'Flexibility',
    color: Color(0xFF5B1F4B),
    intro:
        'Life keeps moving.\n\nYou cannot control every change, but you can learn to move with it.',
    task:
        'What is beginning to unfold in your life right now?\n\nI let go of control over __________ and allow life to move.\n\nI notice that __________ is beginning to unfold in my life.\n\nI start doing __________ to grow __________.',
  ),
  GameField(
    n: 22,
    name: 'Balance',
    subtitle: 'Self-Mastery',
    superpower: 'Self-Mastery',
    color: Color(0xFF039A5D),
    intro:
        'True strength is not force.\n\nIt is the ability to balance power and gentleness.',
    task:
        'Where in your life could you stop forcing and start responding with balance?\n\nWhere could you use less force and more balance?\n\nMy strength is that I can __________ without forcing, controlling, or fighting.',
  ),
  GameField(
    n: 23,
    name: 'Observe',
    subtitle: 'Awareness',
    superpower: 'Awareness',
    color: Color(0xFF2F9AC2),
    intro:
        'Sometimes a pause is also a step forward.\n\nBy observing, you begin to see things differently.',
    task:
        'What are you trying to force right now?\n\nTake one minute to pause and observe.\n\nWhat do you see differently now?\n\nBy slowing down, I realize __________.',
  ),
  GameField(
    n: 24,
    name: 'Transformation',
    subtitle: 'Ability to Change',
    superpower: 'Ability to Change',
    color: Color(0xFF02757E),
    intro:
        'Growth requires change.\n\nTo create something new, you may need to let go of something old.',
    task:
        'What are you holding on to that no longer serves you?\n\nWhat needs to change in you to reach your goal?\n\nI let go of __________ to become myself.',
  ),
  GameField(
    n: 25,
    name: 'Intention',
    subtitle: 'Focus',
    superpower: 'Focus',
    color: Color(0xFF06578C),
    intro:
        'What you focus on grows.\n\nA clear intention gives your desire direction and meaning.',
    task:
        'Why does this desire matter to you?\n\nThis desire matters to me because __________.',
  ),
  GameField(
    n: 26,
    name: 'Attachment',
    subtitle: 'Self-Honesty',
    superpower: 'Self-Honesty',
    color: Color(0xFF231239),
    intro:
        'Not everything you hold onto is truly yours.\n\nSometimes fear disguises itself as a desire.',
    task:
        'What are you doing because you are afraid not to?\n\nOne goal that no longer feels truly mine is __________.\n\nOne intention that still feels true is __________.',
  ),
  GameField(
    n: 27,
    name: 'Breakdown',
    subtitle: 'Resilience',
    superpower: 'Resilience',
    color: Color(0xFFC32939),
    intro:
        'Sometimes something old needs to break down before you can move forward.\n\nWhen your thoughts and feelings work together, your path becomes clearer.',
    task:
        'What do you think about your desire?\n\nWhat do you feel about your desire?\n\nIs there a contradiction between the two?\n\nIf there is a contradiction, try to bring your thoughts and feelings together.\n\nWhat do your feelings need to hear?\n\nWhat do your thoughts need to understand?',
  ),
  GameField(
    n: 28,
    name: 'Guidance',
    subtitle: 'Alignment with Flow',
    superpower: 'Alignment with Flow',
    color: Color(0xFF6E2564),
    intro:
        'Life flows through receiving and giving.\n\nThe more open you are to this flow, the easier it becomes to follow your path.',
    task:
        'Where is this desire guiding you?\n\nMy desire is guiding me toward __________.\n\nI choose to be myself and trust the flow, even if __________.',
  ),
  GameField(
    n: 29,
    name: 'Feeling',
    subtitle: 'Sensitivity',
    superpower: 'Sensitivity',
    color: Color(0xFFCE11A4),
    intro:
        'Not everything can be seen clearly.\n\nSometimes the only way forward is to trust what you feel.',
    task:
        'What are you afraid to face?\n\nI am ready to face __________.\n\nI meet the shadow that __________.',
  ),
  GameField(
    n: 30,
    name: 'Integration',
    subtitle: 'Recognition',
    superpower: 'Recognition',
    color: Color(0xFFFF8E26),
    intro:
        'You begin to recognize yourself in a new reality.\n\nThe more clearly you see who you are becoming, the easier it becomes to integrate this identity into your life.',
    task:
        'Who are you when this desire is already part of your life?\n\nWho are you when this desire has already come true?\n\nI am a person who __________.\n\nI recognize myself as someone who __________.',
  ),
  GameField(
    n: 31,
    name: 'Awakening',
    subtitle: 'Action',
    superpower: 'Action',
    color: Color(0xFFA71E2F),
    intro:
        'You already know enough.\n\nThe question is no longer what you want. The question is whether you are ready to act.',
    task:
        'What action can you no longer postpone?\n\nWhat action do you know you need to take?\n\nI am ready to take action and __________.\n\nI wake up and take action by __________.',
  ),
  GameField(
    n: 32,
    name: 'Wholeness',
    subtitle: 'Bravery',
    superpower: 'Bravery',
    color: Color(0xFF3E1E5F),
    intro:
        'Wholeness begins when you gather all parts of yourself.\n\nYou may still feel fear, but you are ready to take the next step.',
    task:
        'What fears still stand between you and your next step?\n\nI acknowledge these fears, and I choose to move toward __________ anyway.',
  ),
];

GameField localizeField(AppLocalizations l10n, GameField field) {
  switch (field.n) {
    case 1:
      return GameField(
        n: field.n,
        name: l10n.field01Name,
        subtitle: l10n.field01Subtitle,
        superpower: field.superpower,
        color: field.color,
        intro: l10n.field01Intro,
        task: l10n.field01Task,
      );
    case 2:
      return GameField(
        n: field.n,
        name: l10n.field02Name,
        subtitle: l10n.field02Subtitle,
        superpower: field.superpower,
        color: field.color,
        intro: l10n.field02Intro,
        task: l10n.field02Task,
      );
    case 3:
      return GameField(
        n: field.n,
        name: l10n.field03Name,
        subtitle: l10n.field03Subtitle,
        superpower: field.superpower,
        color: field.color,
        intro: l10n.field03Intro,
        task: l10n.field03Task,
      );
    case 4:
      return GameField(
        n: field.n,
        name: l10n.field04Name,
        subtitle: l10n.field04Subtitle,
        superpower: field.superpower,
        color: field.color,
        intro: l10n.field04Intro,
        task: l10n.field04Task,
      );
    case 5:
      return GameField(
        n: field.n,
        name: l10n.field05Name,
        subtitle: l10n.field05Subtitle,
        superpower: field.superpower,
        color: field.color,
        intro: l10n.field05Intro,
        task: l10n.field05Task,
      );
    case 6:
      return GameField(
        n: field.n,
        name: l10n.field06Name,
        subtitle: l10n.field06Subtitle,
        superpower: field.superpower,
        color: field.color,
        intro: l10n.field06Intro,
        task: l10n.field06Task,
      );
    case 7:
      return GameField(
        n: field.n,
        name: l10n.field07Name,
        subtitle: l10n.field07Subtitle,
        superpower: field.superpower,
        color: field.color,
        intro: l10n.field07Intro,
        task: l10n.field07Task,
      );
    case 8:
      return GameField(
        n: field.n,
        name: l10n.field08Name,
        subtitle: l10n.field08Subtitle,
        superpower: field.superpower,
        color: field.color,
        intro: l10n.field08Intro,
        task: l10n.field08Task,
      );
    case 9:
      return GameField(
        n: field.n,
        name: l10n.field09Name,
        subtitle: l10n.field09Subtitle,
        superpower: field.superpower,
        color: field.color,
        intro: l10n.field09Intro,
        task: l10n.field09Task,
      );
    case 10:
      return GameField(
        n: field.n,
        name: l10n.field10Name,
        subtitle: l10n.field10Subtitle,
        superpower: field.superpower,
        color: field.color,
        intro: l10n.field10Intro,
        task: l10n.field10Task,
      );
    case 11:
      return GameField(
        n: field.n,
        name: l10n.field11Name,
        subtitle: l10n.field11Subtitle,
        superpower: field.superpower,
        color: field.color,
        intro: l10n.field11Intro,
        task: l10n.field11Task,
      );
    case 12:
      return GameField(
        n: field.n,
        name: l10n.field12Name,
        subtitle: l10n.field12Subtitle,
        superpower: field.superpower,
        color: field.color,
        intro: l10n.field12Intro,
        task: l10n.field12Task,
      );
    case 13:
      return GameField(
        n: field.n,
        name: l10n.field13Name,
        subtitle: l10n.field13Subtitle,
        superpower: field.superpower,
        color: field.color,
        intro: l10n.field13Intro,
        task: l10n.field13Task,
      );
    case 14:
      return GameField(
        n: field.n,
        name: l10n.field14Name,
        subtitle: l10n.field14Subtitle,
        superpower: field.superpower,
        color: field.color,
        intro: l10n.field14Intro,
        task: l10n.field14Task,
      );
    case 15:
      return GameField(
        n: field.n,
        name: l10n.field15Name,
        subtitle: l10n.field15Subtitle,
        superpower: field.superpower,
        color: field.color,
        intro: l10n.field15Intro,
        task: l10n.field15Task,
      );
    case 16:
      return GameField(
        n: field.n,
        name: l10n.field16Name,
        subtitle: l10n.field16Subtitle,
        superpower: field.superpower,
        color: field.color,
        intro: l10n.field16Intro,
        task: l10n.field16Task,
      );
    case 17:
      return GameField(
        n: field.n,
        name: l10n.field17Name,
        subtitle: l10n.field17Subtitle,
        superpower: field.superpower,
        color: field.color,
        intro: l10n.field17Intro,
        task: l10n.field17Task,
      );
    case 18:
      return GameField(
        n: field.n,
        name: l10n.field18Name,
        subtitle: l10n.field18Subtitle,
        superpower: field.superpower,
        color: field.color,
        intro: l10n.field18Intro,
        task: l10n.field18Task,
      );
    case 19:
      return GameField(
        n: field.n,
        name: l10n.field19Name,
        subtitle: l10n.field19Subtitle,
        superpower: field.superpower,
        color: field.color,
        intro: l10n.field19Intro,
        task: l10n.field19Task,
      );
    case 20:
      return GameField(
        n: field.n,
        name: l10n.field20Name,
        subtitle: l10n.field20Subtitle,
        superpower: field.superpower,
        color: field.color,
        intro: l10n.field20Intro,
        task: l10n.field20Task,
      );
    case 21:
      return GameField(
        n: field.n,
        name: l10n.field21Name,
        subtitle: l10n.field21Subtitle,
        superpower: field.superpower,
        color: field.color,
        intro: l10n.field21Intro,
        task: l10n.field21Task,
      );
    case 22:
      return GameField(
        n: field.n,
        name: l10n.field22Name,
        subtitle: l10n.field22Subtitle,
        superpower: field.superpower,
        color: field.color,
        intro: l10n.field22Intro,
        task: l10n.field22Task,
      );
    case 23:
      return GameField(
        n: field.n,
        name: l10n.field23Name,
        subtitle: l10n.field23Subtitle,
        superpower: field.superpower,
        color: field.color,
        intro: l10n.field23Intro,
        task: l10n.field23Task,
      );
    case 24:
      return GameField(
        n: field.n,
        name: l10n.field24Name,
        subtitle: l10n.field24Subtitle,
        superpower: field.superpower,
        color: field.color,
        intro: l10n.field24Intro,
        task: l10n.field24Task,
      );
    case 25:
      return GameField(
        n: field.n,
        name: l10n.field25Name,
        subtitle: l10n.field25Subtitle,
        superpower: field.superpower,
        color: field.color,
        intro: l10n.field25Intro,
        task: l10n.field25Task,
      );
    case 26:
      return GameField(
        n: field.n,
        name: l10n.field26Name,
        subtitle: l10n.field26Subtitle,
        superpower: field.superpower,
        color: field.color,
        intro: l10n.field26Intro,
        task: l10n.field26Task,
      );
    case 27:
      return GameField(
        n: field.n,
        name: l10n.field27Name,
        subtitle: l10n.field27Subtitle,
        superpower: field.superpower,
        color: field.color,
        intro: l10n.field27Intro,
        task: l10n.field27Task,
      );
    case 28:
      return GameField(
        n: field.n,
        name: l10n.field28Name,
        subtitle: l10n.field28Subtitle,
        superpower: field.superpower,
        color: field.color,
        intro: l10n.field28Intro,
        task: l10n.field28Task,
      );
    case 29:
      return GameField(
        n: field.n,
        name: l10n.field29Name,
        subtitle: l10n.field29Subtitle,
        superpower: field.superpower,
        color: field.color,
        intro: l10n.field29Intro,
        task: l10n.field29Task,
      );
    case 30:
      return GameField(
        n: field.n,
        name: l10n.field30Name,
        subtitle: l10n.field30Subtitle,
        superpower: field.superpower,
        color: field.color,
        intro: l10n.field30Intro,
        task: l10n.field30Task,
      );
    case 31:
      return GameField(
        n: field.n,
        name: l10n.field31Name,
        subtitle: l10n.field31Subtitle,
        superpower: field.superpower,
        color: field.color,
        intro: l10n.field31Intro,
        task: l10n.field31Task,
      );
    case 32:
      return GameField(
        n: field.n,
        name: l10n.field32Name,
        subtitle: l10n.field32Subtitle,
        superpower: field.superpower,
        color: field.color,
        intro: l10n.field32Intro,
        task: l10n.field32Task,
      );
    default:
      return field;
  }
}
