import 'package:flutter/material.dart';

class GameField {
  const GameField({
    required this.n,
    required this.name,
    required this.subtitle,
    required this.superpower,
    required this.color,
    required this.intro,
    required this.task,
  });

  final int n;
  final String name;
  final String subtitle;
  final String superpower;
  final Color color;
  final String intro;
  final String task;

  String get paddedNumber => n.toString().padLeft(2, '0');
}

const List<GameField> kFields = [
  GameField(
    n: 1, name: 'Light', subtitle: 'Desire', superpower: 'Desire',
    color: Color(0xFFFFFFFF),
    intro: 'Every journey begins with a desire.\n\nYour desire matters because it points toward something important for your growth.',
    task: 'What desire are you bringing into this journey?',
  ),
  GameField(
    n: 2, name: 'Connection', subtitle: 'Initiative', superpower: 'Initiative',
    color: Color(0xFFD9D9D9),
    intro: 'Every idea starts as a spark.\n\nGrowth begins when you share it with the world.\nEvery desire has an origin.\nRemember where this dream first appeared in your life.',
    task: 'When did this desire first appear in your life?\n\nWho could you share it with today that would support its realization?',
  ),
  GameField(
    n: 3, name: 'Form', subtitle: 'Vision', superpower: 'Vision',
    color: Color(0xFF000000),
    intro: 'A desire becomes real when it has a clear shape.\nImagine what success looks like for you.',
    task: 'What does success look like?',
  ),
  GameField(
    n: 4, name: 'Scale', subtitle: 'Contribution', superpower: 'Contribution',
    color: Color(0xFF29368D),
    intro: 'Every goal creates an impact.\nConsider what value your desire brings to others.',
    task: 'Who benefits when you achieve this?',
  ),
  GameField(
    n: 5, name: 'Limitation', subtitle: 'Resilience', superpower: 'Resilience',
    color: Color(0xFFFF3131),
    intro: 'Limitations are a natural part of every journey.\n\nThey help you develop the strength needed to reach your goal.',
    task: 'What limitations do you currently have (physical, emotional, financial, social, or other)? How are they helping you grow?',
  ),
  GameField(
    n: 6, name: 'Values', subtitle: 'Authenticity', superpower: 'Authenticity',
    color: Color(0xFFFFDE59),
    intro: 'Your values guide the choices you make.\n\nThe strongest desires are often connected to what has always mattered to you.',
    task: 'What has always been important to you?\n\nDoes this desire reflect those values?\n\nWhat qualities came naturally to you as a child?\n\nWhich of them are still alive in you today?\n\nHow could these qualities help you achieve your desire?',
  ),
  GameField(
    n: 7, name: 'Feelings', subtitle: 'Emotional Awareness', superpower: 'Emotional Awareness',
    color: Color(0xFF00BF63),
    intro: 'Feelings are signals, not obstacles.\n\nThey can show you what supports your desire and what needs your attention.',
    task: 'What emotions do you experience most often? How do they affect your desire?',
  ),
  GameField(
    n: 8, name: 'Thinking', subtitle: 'Clarity', superpower: 'Clarity',
    color: Color(0xFFFF914D),
    intro: 'Every desire is supported by some beliefs and limited by others.\n\nThe more clearly you see them, the more freedom you have to choose your path.',
    task: 'What beliefs support you, and what beliefs hold you back?',
  ),
  GameField(
    n: 9, name: 'Subconsciousness', subtitle: 'Imagination', superpower: 'Imagination',
    color: Color(0xFF8C52FF),
    intro: 'Your subconscious holds the blueprint of your desired life.',
    task: 'If your desire were already real, what would your life look like? Describe it.',
  ),
  GameField(
    n: 10, name: 'Reality', subtitle: 'Action', superpower: 'Action',
    color: Color(0xFF000000),
    intro: 'Reality is shaped by the actions you take.',
    task: 'Write 10 actions you can take today to move closer to your goal.',
  ),
  GameField(
    n: 11, name: 'Possibility', subtitle: 'Trust', superpower: 'Trust',
    color: Color(0xFFFED738),
    intro: 'Within every desire lies the possibility of its realization.',
    task: 'Do you truly believe your desire is possible? If yes, can you trust the process?',
  ),
  GameField(
    n: 12, name: 'Will', subtitle: 'Resourcefulness', superpower: 'Resourcefulness',
    color: Color(0xFFFFC009),
    intro: 'Your will is your most powerful resource.',
    task: 'What resources do you already have to reach your wish?',
  ),
  GameField(
    n: 13, name: 'Intuition', subtitle: 'Inner silence', superpower: 'Inner silence',
    color: Color(0xFF0796C0),
    intro: 'Your inner voice always knows the way.',
    task: 'What is your inner voice saying about this desire?',
  ),
  GameField(
    n: 14, name: 'Creation', subtitle: 'Creativity', superpower: 'Creativity',
    color: Color(0xFF15B263),
    intro: 'Every reality begins as a possibility.\n\nCreation is the bridge between an idea and its expression.\n\nCreation turns possibilities into reality.\n\nEvery day you create something through your actions, energy, and attention.',
    task: 'How can this desire take its first form?\n\nWhat are you already creating in your life?',
  ),
  GameField(
    n: 15, name: 'Power', subtitle: 'Management', superpower: 'Management',
    color: Color(0xFFD02323),
    intro: 'Power begins with structure.\n\nYou can only manage what has structure.\n\nWhat you can manage, you can improve.',
    task: 'What do you need to manage to move closer to your goal?\n\nI create structure in __________ to build __________.',
  ),
  GameField(
    n: 16, name: 'Knowledge', subtitle: 'Experience', superpower: 'Experience',
    color: Color(0xFFFE480D),
    intro: 'Knowledge becomes valuable when you use it.\n\nReal wisdom appears through action.\n\nThe right knowledge can show you the next step forward.',
    task: 'Do you already have enough knowledge to achieve your goal?\n\nIf yes, what knowledge will help you?\n\nIf not, where can you find the knowledge you need?\n\nThe knowledge that will help me move forward is __________.\n\nI can gain new knowledge from __________.',
  ),
  GameField(
    n: 17, name: 'Choice', subtitle: 'Self-Trust', superpower: 'Self-Trust',
    color: Color(0xFFFA9138),
    intro: 'Every choice shapes who you become.\n\nWhen you choose what is truly yours, you move forward with confidence.\n\nYour heart already knows what feels true.\n\nTrust yourself enough to choose it.',
    task: 'What feels truly right for you?\n\nI choose __________ because it is mine.',
  ),
  GameField(
    n: 18, name: 'Movement', subtitle: 'Discipline', superpower: 'Discipline',
    color: Color(0xFFFFAE3C),
    intro: 'Your desire requires discipline from you.\nThrough small, consistent steps, you can move closer to what you want.',
    task: 'What action are you willing to do with discipline to reach your desire?\n\nFor how long are you willing to keep doing it?\n\nI will do __________ regularly for __________ to move closer to my desire.',
  ),
  GameField(
    n: 19, name: 'Truth', subtitle: 'Honesty', superpower: 'Honesty',
    color: Color(0xFFF5ED39),
    intro: 'Progress begins with seeing things as they are.\n\nTruth creates the foundation for change.',
    task: 'What is true for you right now?\n\nMy truth right now is __________.\n\nTo move closer to my desire, I intend to improve __________.',
  ),
  GameField(
    n: 20, name: 'Purpose', subtitle: 'Courage', superpower: 'Courage',
    color: Color(0xFFB0D229),
    intro: 'A meaningful goal benefits more than just yourself.\n\nWhen your desire serves a greater purpose, it becomes stronger.\n\nIt takes courage to follow your own path.\n\nThe more meaningful your goal is, the more people it can inspire and help.',
    task: 'How could your desire benefit others?\n\nWrite 10 ways your desire could help other people.',
  ),
  GameField(
    n: 21, name: 'Change', subtitle: 'Flexibility', superpower: 'Flexibility',
    color: Color(0xFF5B1F4B),
    intro: 'Life keeps moving.\n\nYou cannot control every change, but you can learn to move with it.',
    task: 'What is beginning to unfold in your life right now?\n\nI let go of control over __________ and allow life to move.\n\nI notice that __________ is beginning to unfold in my life.\n\nI start doing __________ to grow __________.',
  ),
  GameField(
    n: 22, name: 'Balance', subtitle: 'Self-Mastery', superpower: 'Self-Mastery',
    color: Color(0xFF039A5D),
    intro: 'True strength is not force.\n\nIt is the ability to balance power and gentleness.',
    task: 'Where in your life could you stop forcing and start responding with balance?\n\nWhere could you use less force and more balance?\n\nMy strength is that I can __________ without forcing, controlling, or fighting.',
  ),
  GameField(
    n: 23, name: 'Observe', subtitle: 'Awareness', superpower: 'Awareness',
    color: Color(0xFF2F9AC2),
    intro: 'Sometimes a pause is also a step forward.\n\nBy observing, you begin to see things differently.',
    task: 'What are you trying to force right now?\n\nTake one minute to pause and observe.\n\nWhat do you see differently now?\n\nBy slowing down, I realize __________.',
  ),
  GameField(
    n: 24, name: 'Transformation', subtitle: 'Ability to Change', superpower: 'Ability to Change',
    color: Color(0xFF02757E),
    intro: 'Growth requires change.\n\nTo create something new, you may need to let go of something old.',
    task: 'What are you holding on to that no longer serves you?\n\nWhat needs to change in you to reach your goal?\n\nI let go of __________ to become myself.',
  ),
  GameField(
    n: 25, name: 'Intention', subtitle: 'Focus', superpower: 'Focus',
    color: Color(0xFF06578C),
    intro: 'What you focus on grows.\n\nA clear intention gives your desire direction and meaning.',
    task: 'Why does this desire matter to you?\n\nThis desire matters to me because __________.',
  ),
  GameField(
    n: 26, name: 'Attachment', subtitle: 'Self-Honesty', superpower: 'Self-Honesty',
    color: Color(0xFF231239),
    intro: 'Not everything you hold onto is truly yours.\n\nSometimes fear disguises itself as a desire.',
    task: 'What are you doing because you are afraid not to?\n\nOne goal that no longer feels truly mine is __________.\n\nOne intention that still feels true is __________.',
  ),
  GameField(
    n: 27, name: 'Breakdown', subtitle: 'Resilience', superpower: 'Resilience',
    color: Color(0xFFC32939),
    intro: 'Sometimes something old needs to break down before you can move forward.\n\nWhen your thoughts and feelings work together, your path becomes clearer.',
    task: 'What do you think about your desire?\n\nWhat do you feel about your desire?\n\nIs there a contradiction between the two?\n\nIf there is a contradiction, try to bring your thoughts and feelings together.\n\nWhat do your feelings need to hear?\n\nWhat do your thoughts need to understand?',
  ),
  GameField(
    n: 28, name: 'Guidance', subtitle: 'Alignment with Flow', superpower: 'Alignment with Flow',
    color: Color(0xFF6E2564),
    intro: 'Life flows through receiving and giving.\n\nThe more open you are to this flow, the easier it becomes to follow your path.',
    task: 'Where is this desire guiding you?\n\nMy desire is guiding me toward __________.\n\nI choose to be myself and trust the flow, even if __________.',
  ),
  GameField(
    n: 29, name: 'Feeling', subtitle: 'Sensitivity', superpower: 'Sensitivity',
    color: Color(0xFFCE11A4),
    intro: 'Not everything can be seen clearly.\n\nSometimes the only way forward is to trust what you feel.',
    task: 'What are you afraid to face?\n\nI am ready to face __________.\n\nI meet the shadow that __________.',
  ),
  GameField(
    n: 30, name: 'Integration', subtitle: 'Recognition', superpower: 'Recognition',
    color: Color(0xFFFF8E26),
    intro: 'You begin to recognize yourself in a new reality.\n\nThe more clearly you see who you are becoming, the easier it becomes to integrate this identity into your life.',
    task: 'Who are you when this desire is already part of your life?\n\nWho are you when this desire has already come true?\n\nI am a person who __________.\n\nI recognize myself as someone who __________.',
  ),
  GameField(
    n: 31, name: 'Awakening', subtitle: 'Action', superpower: 'Action',
    color: Color(0xFFA71E2F),
    intro: 'You already know enough.\n\nThe question is no longer what you want. The question is whether you are ready to act.',
    task: 'What action can you no longer postpone?\n\nWhat action do you know you need to take?\n\nI am ready to take action and __________.\n\nI wake up and take action by __________.',
  ),
  GameField(
    n: 32, name: 'Wholeness', subtitle: 'Bravery', superpower: 'Bravery',
    color: Color(0xFF3E1E5F),
    intro: 'Wholeness begins when you gather all parts of yourself.\n\nYou may still feel fear, but you are ready to take the next step.',
    task: 'What fears still stand between you and your next step?\n\nI acknowledge these fears, and I choose to move toward __________ anyway.',
  ),
];
