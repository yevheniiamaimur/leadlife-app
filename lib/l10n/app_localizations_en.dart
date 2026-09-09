// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get languageTitle => 'Language';

  @override
  String get languageSystem => 'Same as phone';

  @override
  String get welcomeGreeting => 'Welcome';

  @override
  String get whatsYourWish => 'What\'s your wish?';

  @override
  String get presentPerfectPrompt =>
      'Write in the present perfect tense — as if it has already come true.';

  @override
  String get typeItHere => 'Type it here…';

  @override
  String get howItWorks => 'How It Works';

  @override
  String get buildSuccessCode => 'Build Success Code';

  @override
  String get navHome => 'Home';

  @override
  String get navJournal => 'Journal';

  @override
  String get navDiary => 'Diary';

  @override
  String get seeExample => 'See example';

  @override
  String get drawerHistory => 'History';

  @override
  String get drawerProfile => 'Profile';

  @override
  String get drawerHelp => 'Help';

  @override
  String get drawerAbout => 'About';

  @override
  String get stepOneOfThreeIntention => 'Step 1 of 3 · Your Intention';

  @override
  String get whatDoYouDesire => 'What do you desire?';

  @override
  String get wishFieldHint => 'I have… / I am… / I experience…';

  @override
  String get beSpecificHonestYou => 'Be specific. Be honest. Be you.';

  @override
  String get confirmMyDesire => 'Confirm My Desire';

  @override
  String get contactAuthorTitle => 'Contact the game author';

  @override
  String get contactAuthorSubtitle =>
      'If you have a question, feedback, or need help, you can write directly.';

  @override
  String get contactAuthorEmailCta => 'Write by email';

  @override
  String get contactAuthorInstagramCta => 'Open Instagram';

  @override
  String get contactAuthorEmailCopied => 'Email copied: leadlife.app@gmail.com';

  @override
  String onboardingStepOfFive(int step) {
    return 'Step $step of 5';
  }

  @override
  String get onboardingNameGreeting => 'Hello. I\'m glad you\'re here.';

  @override
  String get onboardingNamePrompt => 'Before we begin, what should I call you?';

  @override
  String get yourNameHint => 'Your name';

  @override
  String get continueButton => 'Continue';

  @override
  String onboardingBirthdayQuestion(String name) {
    return 'When were you born, $name?';
  }

  @override
  String get onboardingBirthdaySubtitle =>
      'This helps us shape your journey around you.';

  @override
  String get selectYourBirthday => 'Select your birthday';

  @override
  String get onboardingContactHeading => 'Stay connected.';

  @override
  String get onboardingContactSubtitle =>
      'Where can we reach you with your journey?';

  @override
  String get emailHint => 'your@email.com';

  @override
  String get allowGentleReminders =>
      'Allow gentle reminders to keep you on your path.';

  @override
  String get allowSensitiveDataProcessing =>
      'Allow processing of information I provide that may relate to health data or other sensitive personal data, so the relevant Hatchpot features can work.';

  @override
  String get comebackReminderTitle => 'Your path is waiting';

  @override
  String get comebackReminderBody =>
      'You left your journey mid-way. Whenever you\'re ready, come back and continue.';

  @override
  String get onboardingFocusHeading => 'What\'s most on your mind\nright now?';

  @override
  String get onboardingFocusSubtitle =>
      'Choose the areas calling for your attention.';

  @override
  String get focusRelationships => 'Relationships';

  @override
  String get focusCareerPurpose => 'Career & Purpose';

  @override
  String get focusHealthEnergy => 'Health & Energy';

  @override
  String get focusMoneyAbundance => 'Money & Abundance';

  @override
  String get focusInnerPeace => 'Inner Peace';

  @override
  String get takeABreathIn => 'Take a breath in.';

  @override
  String get andOut => 'And out.';

  @override
  String onboardingReadyMessage(String name) {
    return '$name, your path is about to begin.';
  }

  @override
  String get letsStart => 'Let\'s Start';

  @override
  String get yourPathLabel => 'Your Path';

  @override
  String fieldOfTotal(String num, int total) {
    return 'Field $num of $total';
  }

  @override
  String get myAnswersLabel => 'My Answers';

  @override
  String enterFieldCta(String num) {
    return 'Enter Field $num  →';
  }

  @override
  String get answersEmptyState => 'Your answers will appear here.';

  @override
  String fieldBadgeNumber(String num) {
    return 'FIELD $num';
  }

  @override
  String get receiveMyTaskCta => 'Receive My Task  →';

  @override
  String get readyToBeginPathCta => 'I am ready to begin my path  →';

  @override
  String fieldNumberAndName(String num, String name) {
    return 'FIELD $num · $name';
  }

  @override
  String get yourAnswerHint => 'Your answer…';

  @override
  String get taskLabel => 'Task';

  @override
  String get saveMyAnswerCta => 'Save My Answer';

  @override
  String get saveProgressError =>
      'Couldn\'t save your progress — check your device storage.';

  @override
  String get answerReceivedHeading => 'Your answer is received.';

  @override
  String walkedThroughField(String fieldName) {
    return 'You have walked through $fieldName. The path continues.';
  }

  @override
  String get rollForNextFieldCta => 'Roll for the Next Field';

  @override
  String get finalTurnLabel => 'The final turn';

  @override
  String get pathContinuesLabel => 'The path continues';

  @override
  String get yourDesireLabel => 'Your desire';

  @override
  String get currentAreaOfActionColon => 'Your current area of action:';

  @override
  String get reachedFinalPathText => 'You have reached the final path.';

  @override
  String get youAreNowOnText => 'You are now on';

  @override
  String get finalTurnInstructions =>
      'You have walked all 32 paths. One final turn — to know where you stand now.';

  @override
  String onFieldWhereWillPathLead(String num) {
    return 'You are on Field $num. Where will the path lead?';
  }

  @override
  String get fromThisPlaceLabel => 'From this place';

  @override
  String arrivingAtField(String num) {
    return 'Arriving · Field $num';
  }

  @override
  String get wheelTurnsOnceMore => 'The wheel turns once more…';

  @override
  String get pathTurnsEllipsis => 'The path turns…';

  @override
  String get rollingEllipsis => 'Rolling…';

  @override
  String get rollFinalDiceCta => 'Roll the Final Dice';

  @override
  String get rollDiceCta => 'Roll the Dice';

  @override
  String get receiveSuccessCodeCta => 'Receive My Success Code  →';

  @override
  String enterFieldNameCta(String name) {
    return 'Enter $name  →';
  }

  @override
  String get journeyCompleteHeading => 'Your Journey\nis Complete';

  @override
  String get journeyCompleteSubtext =>
      'You have walked all 32 paths.\nThis is your Success Code.';

  @override
  String get yourOriginalDesireLabel => 'Your Original Desire';

  @override
  String get currentAreaOfActionLabel => 'Your current area of action';

  @override
  String get whatYouHaveDiscoveredLabel => 'What you have discovered';

  @override
  String get preparingPdfCta => 'Preparing PDF…';

  @override
  String get savePdfCta => 'Save as PDF';

  @override
  String get startNewJourneyCta => 'Start a New Journey';

  @override
  String get goldenFishClosingLine =>
      'The golden fish is already on its way.\nYour work is to believe — and to act.';

  @override
  String get yourAnalysisLabel => 'Your Analysis';

  @override
  String get yourNextDirectionLabel => 'Your Next Direction';

  @override
  String get recommendedStepsLabel => 'Recommended Next Steps';

  @override
  String get todaysIntentionHeading => 'Today\'s Intention';

  @override
  String get todaysIntentionSubtitle =>
      'Your result follows your intention — write it down.';

  @override
  String get diaryIntentionHint => 'Write your intention for today…';

  @override
  String get saveButton => 'Save';

  @override
  String get checkButton => 'Check';

  @override
  String get diarySaveError => 'Couldn\'t save — check your device storage.';

  @override
  String get diaryEmptyState => 'Your intentions will appear here.';

  @override
  String get yourJourneysHeading => 'Your Journeys';

  @override
  String get journeysSubtitle =>
      'Every wish you have set, and how far it has carried you.';

  @override
  String get journeysEmptyState => 'Your journeys will appear here.';

  @override
  String journeyCompletedOn(String date) {
    return 'Completed · $date';
  }

  @override
  String get journeyInProgress => 'In Progress';

  @override
  String journeyFieldsProgress(int count, int total) {
    return '$count / $total fields';
  }

  @override
  String get yourProfileFallback => 'Your Profile';

  @override
  String get profileNoDataMessage =>
      'We don\'t have your details yet — they\'re captured during onboarding.';

  @override
  String get profileBirthdayLabel => 'Birthday';

  @override
  String get profileEmailLabel => 'Email';

  @override
  String get profileFocusLabel => 'Focus';

  @override
  String get helpSubtitle => 'Answers to the questions we hear most.';

  @override
  String get helpFaqWhatIsLeadlifeQ => 'What is Hatchpot?';

  @override
  String get helpFaqWhatIsLeadlifeA =>
      'A guided journey built around one intention you set — helping you clarify what you want, shift your inner state, and find your direction.';

  @override
  String get helpFaqDiceQ => 'How does the dice work?';

  @override
  String get helpFaqDiceA =>
      'Roll to see if your intention is ready. If it is, your journey begins. If not, you receive a clue to refine it and try again.';

  @override
  String get helpFaqStuckFieldQ => 'What if I get stuck on a field?';

  @override
  String get helpFaqStuckFieldA =>
      'Answer honestly, in a few words. There are no wrong answers — each field simply shifts your focus for a moment.';

  @override
  String get helpFaqSavedIntentionsQ => 'Where do my saved intentions go?';

  @override
  String get helpFaqSavedIntentionsA =>
      'Anything you save in the Diary tab stays in its history, right there on your device.';

  @override
  String get helpFaqChangeIntentionQ => 'Can I change my intention later?';

  @override
  String get helpFaqChangeIntentionA =>
      'Yes — write a new one any time from the Diary tab and check it against your path.';

  @override
  String get aboutHeading => 'About the System';

  @override
  String get aboutIntro =>
      'Hatchpot is built around 32 fields, arranged in one continuous path.';

  @override
  String get tenLevelsHeading => '10 Levels of Reality';

  @override
  String get tenLevelsBody =>
      'The layers your intention moves through — from the concrete circumstances of your life to the deeper states behind them.';

  @override
  String get lifeStrategiesHeading => '22 Life Strategies';

  @override
  String get lifeStrategiesBody =>
      'Different ways of thinking, choosing, feeling and acting. You don\'t need to study them — you simply move through the ones your path leads you to.';

  @override
  String get successCodeHeading => 'Your Success Code';

  @override
  String get successCodeBody =>
      'At the end of the journey, your own decisions and insights are brought together into a personal code — not a universal answer, but a map back to your desire.';

  @override
  String get helpModalExampleLabel => 'An example';

  @override
  String get helpModalNamingHeading => 'How a desire is named';

  @override
  String get helpModalYesLabel => 'YES — PRESENT PERFECT';

  @override
  String get helpModalNoLabel => 'NOT YET — FUTURE TENSE';

  @override
  String get helpModalGoodExample =>
      '\"I have built a life where my work and my truth are the same thing.\"';

  @override
  String get helpModalBadExample => '\"I want to build a life where…\"';

  @override
  String get helpModalClosingText =>
      'Speak as if it has already come.\nThe path responds to certainty.';

  @override
  String get helpModalUnderstandCta => 'I Understand';

  @override
  String get diceStepTwoOfThree => 'Step 2 of 3';

  @override
  String get diceScreenTitle => 'Awakening the Path';

  @override
  String get diceYourIntentionLabel => 'Your intention';

  @override
  String get diceClueYesTitle => 'Yes';

  @override
  String get diceClueYesText => 'Your desire is ready. The path can begin.';

  @override
  String get diceClueConnectionsTitle => 'Connections';

  @override
  String get diceClueConnectionsText =>
      'Who is connected to this desire? Trust your intuition. Is there a person, relationship, or collaboration that belongs here? Add what feels right.';

  @override
  String get diceClueClarityTitle => 'Clarity';

  @override
  String get diceClueClarityText =>
      'Make your desire more specific. Add details so it\'s clear exactly what you want.';

  @override
  String get diceClueExpansionTitle => 'Expansion';

  @override
  String get diceClueExpansionText =>
      'Think bigger. Expand your horizon. How could this desire become even more meaningful or inspiring?';

  @override
  String get diceClueFreedomTitle => 'Freedom';

  @override
  String get diceClueFreedomText =>
      'Does your desire contain any hidden limitations? Rephrase it so it gives you freedom, possibilities, and strength instead of restrictions.';

  @override
  String get diceClueMeaningTitle => 'Meaning';

  @override
  String get diceClueMeaningText =>
      'What makes this desire truly important to you? Add your personal values and deeper meaning.';

  @override
  String get diceClueFeelingsTitle => 'Feelings';

  @override
  String get diceClueFeelingsText =>
      'How do you want to feel when this desire becomes reality? Add those emotions to your desire—they matter.';

  @override
  String get diceClueExpressionTitle => 'Expression';

  @override
  String get diceClueExpressionText =>
      'Rewrite your desire. Choose words that feel lighter, clearer, and more natural. Sometimes a different wording changes everything.';

  @override
  String get diceUniverseListens => 'The universe listens…';

  @override
  String get diceRollingLabel => 'Rolling…';

  @override
  String get diceRollLabel => 'Roll';

  @override
  String get diceRollAgainLabel => 'Roll Again';

  @override
  String get diceEnterFirstFieldCta => 'Enter the First Field  →';

  @override
  String get diceRefineMyDesire => 'Refine my desire';

  @override
  String get paywallHeadlineLine1 => 'Your desire said yes.';

  @override
  String get paywallHeadlineLine2 => 'Your path is ready.';

  @override
  String get paywallSubheading => 'Choose how deep you want to go.';

  @override
  String get paywallSeeDetails => 'See details';

  @override
  String get paywallChooseThisPathCta => 'Choose This Path';

  @override
  String get accountLinkHeadline => 'Protect Your Journey';

  @override
  String get accountLinkSubtitle =>
      'Create an account so your journey and purchase follow you, even if you switch phones.';

  @override
  String get continueWithApple => 'Continue with Apple';

  @override
  String get continueWithGoogle => 'Continue with Google';

  @override
  String get continueWithEmail => 'Continue with Email';

  @override
  String get accountLinkPasswordHint => 'Create a password';

  @override
  String get createAccountCta => 'Create Account';

  @override
  String get accountLinkSkip => 'Maybe later';

  @override
  String get accountLinkErrorGeneric =>
      'Something went wrong. Please try again.';

  @override
  String get paywallTariffOneJourneyTitle => 'One Journey';

  @override
  String get paywallTariffOneJourneyTagline => 'One Desire, One Direction';

  @override
  String get paywallFeatureQuestionnairesToEndPractices =>
      'Questionnaires to end practices';

  @override
  String get paywallFeatureFinalDirection => 'Final direction';

  @override
  String get paywallFeaturePersonalJournal => 'Personal journal';

  @override
  String get paywallTariffLeadlifePassTitle => 'Hatchpot Pass';

  @override
  String get paywallTariffLeadlifePassTagline => 'Go deeper anytime';

  @override
  String get paywallFeatureUnlimitedJourneys => 'Unlimited journeys';

  @override
  String get paywallFeatureFullJourneyHistory => 'Full journey history';

  @override
  String get paywallFeatureNewPractices => 'New practices';

  @override
  String get awakenedStepThreeOfThree => 'Step 3 of 3';

  @override
  String get awakenedFieldOneAwaits => 'Field 01 awaits';

  @override
  String get awakenedJourneyBegunTitle => 'Your journey\nhas begun.';

  @override
  String get awakenedPathRespondBody =>
      'The path will respond to your intention.\nWalk it with patience.';

  @override
  String get awakenedHeldInLight => 'Held in light';

  @override
  String get awakenedEnterFieldOneCta => 'Enter Field 01  →';

  @override
  String get howItWorksBeginJourneyCta => 'Begin your journey';

  @override
  String get howItWorksContinueCta => 'Continue';

  @override
  String get howItWorksSlide1Title => 'A structured path back to yourself';

  @override
  String get howItWorksSlide1Body =>
      'Hatchpot is a self-reflection system that connects you to your inner self through play, symbol, and intuition.';

  @override
  String get howItWorksSlide2Title => 'The dice reads your unconscious';

  @override
  String get howItWorksSlide2Body =>
      'Write your desire and roll the dice.\n\nRoll a 1 — it\'s ready, and your journey begins.\n\nAny other number is a clue to help you refine or change it.';

  @override
  String get howItWorksSlide3Title => '32 fields. Your own path.';

  @override
  String get howItWorksSlide3Body =>
      'You\'ll move through 10 levels of reality and 22 life strategies — different ways to think, feel, and act.\n\nRoll, answer one question, move on. Most steps take less than a minute.';

  @override
  String get howItWorksSlide4Title => 'Build your success code';

  @override
  String get howItWorksSlide4Body =>
      'Every answer becomes part of a personal code — a map back to your desire.\n\nNot a universal answer. Only your path.';

  @override
  String get field01Name => 'Light';

  @override
  String get field01Subtitle => 'Desire';

  @override
  String get field01Intro =>
      'In Hatchpot, Light is the symbolic beginning — the energy already present in your idea.\n\nThe desire you wrote reflects something genuinely important to you. Let its value support you as your path begins.';

  @override
  String get field01Task => '';

  @override
  String get field02Name => 'Connection';

  @override
  String get field02Subtitle => 'Initiative';

  @override
  String get field02Intro =>
      'Every idea starts as a spark.\n\nGrowth begins when you share it with the world.\nEvery desire has an origin.\nRemember where this dream first appeared in your life.';

  @override
  String get field02Task =>
      'When did this desire first appear in your life?\n\nWho could you share it with today that would support its realization?';

  @override
  String get field03Name => 'Form';

  @override
  String get field03Subtitle => 'Vision';

  @override
  String get field03Intro =>
      'A desire becomes real when it has a clear shape.\nImagine what success looks like for you.';

  @override
  String get field03Task => 'What does success look like?';

  @override
  String get field04Name => 'Scale';

  @override
  String get field04Subtitle => 'Contribution';

  @override
  String get field04Intro =>
      'A desire needs a structure that can hold its energy and actions.\n\nThis field is connected with scale, expansion, and kindness.';

  @override
  String get field04Task =>
      'Why is it valuable to the world for your desire to come true? Write as many points as feel natural.\n\nI give the world __________, and the world accepts me and gives me opportunities and support.';

  @override
  String get field05Name => 'Limitation';

  @override
  String get field05Subtitle => 'Resilience';

  @override
  String get field05Intro =>
      'Obstacles are a normal stage of every process of becoming.\n\nLook at what stands in your way again: it may already be revealing the strength growing within you.';

  @override
  String get field05Task =>
      'What currently seems like a limitation? What positive quality or behavior is it teaching you?';

  @override
  String get field06Name => 'Values';

  @override
  String get field06Subtitle => 'Authenticity';

  @override
  String get field06Intro =>
      'Your desire reflects a part of you that is ready to manifest.\n\nSee who you become for yourself and the world when it is realized, and what value stands behind it. This field also reflects the inner child and love.';

  @override
  String get field06Task =>
      'What part of you does this desire express? Who do you become for yourself and the world when it is realized? What value stands behind it?\n\nI acknowledge myself as __________ and use these qualities to realize what I intend.';

  @override
  String get field06CodeInstruction =>
      'Enter the qualities you are ready and want to express in your life.';

  @override
  String get field07Name => 'Feelings';

  @override
  String get field07Subtitle => 'Emotional Awareness';

  @override
  String get field07Intro =>
      'This field shows the emotional dimension of your request. Emotions are signs. If you do not suppress them, but live through them, energy begins to move in the right direction.\n\nThis field works as a readiness filter: it shows which states are now slowing movement down and which ones are opening the way.';

  @override
  String get field07Task =>
      'What emotions do you experience most often specifically in relation to your request? Is there an emotion or repeating emotional cycle where you feel stuck? What usually causes these states?\n\nI release __________ and allow energy to move toward the realization of my request.';

  @override
  String get field08Name => 'Thinking';

  @override
  String get field08Subtitle => 'Clarity';

  @override
  String get field08Intro =>
      'This field shows which thoughts and beliefs surround your request. Some beliefs support movement, while others may quietly limit manifestation.\n\nWhen you see them clearly, you can choose a new direction.';

  @override
  String get field08Task =>
      'What do you really think about your request? Which beliefs or assumptions may be blocking its realization?\n\nI transform limiting beliefs into freedom of manifestation.';

  @override
  String get field09Name => 'Subconsciousness';

  @override
  String get field09Subtitle => 'Imagination';

  @override
  String get field09Intro =>
      'Your subconscious holds all past events and experiences, as well as future probabilities.\n\nThrough this field, we tune in to the desired branch of probability.';

  @override
  String get field09Task =>
      'Imagine the realization of your request from the heart. What picture do you see? Describe it in brief points: what is happening, where you are, what you feel, and what has already become real.';

  @override
  String get field10Name => 'Reality';

  @override
  String get field10Subtitle => 'Action';

  @override
  String get field10Intro =>
      'This field is about reality and the physical world. Here, the request begins to move from idea, feeling, and image into concrete action.\n\nIf your request is connected with matter, money, the body, or a visible result, this field is especially important.';

  @override
  String get field10Task =>
      'Write 10 actions that, in your view, will help realize your request. Try to make most of them actions you can take today, at least half of them.';

  @override
  String get field11Name => 'Possibility';

  @override
  String get field11Subtitle => 'Trust';

  @override
  String get field11Intro =>
      'Within every desire lies the possibility of its realization.';

  @override
  String get field11Task =>
      'Do you truly believe your desire is possible? If yes, can you trust the process?';

  @override
  String get field12Name => 'Will';

  @override
  String get field12Subtitle => 'Resourcefulness';

  @override
  String get field12Intro => 'Your will is your most powerful resource.';

  @override
  String get field12Task =>
      'What resources do you already have to reach your wish?';

  @override
  String get field13Name => 'Intuition';

  @override
  String get field13Subtitle => 'Inner silence';

  @override
  String get field13Intro => 'Your inner voice always knows the way.';

  @override
  String get field13Task =>
      'What is your inner voice saying about this desire?';

  @override
  String get field14Name => 'Creation';

  @override
  String get field14Subtitle => 'Creativity';

  @override
  String get field14Intro =>
      'Every reality begins as a possibility.\n\nCreation is the bridge between an idea and its expression.\n\nCreation turns possibilities into reality.\n\nEvery day you create something through your actions, energy, and attention.';

  @override
  String get field14Task =>
      'How can this desire take its first form?\n\nWhat are you already creating in your life?';

  @override
  String get field15Name => 'Power';

  @override
  String get field15Subtitle => 'Management';

  @override
  String get field15Intro =>
      'Power begins with structure.\n\nYou can only manage what has structure.\n\nWhat you can manage, you can improve.';

  @override
  String get field15Task =>
      'What do you need to manage to move closer to your goal?\n\nI create structure in __________ to build __________.';

  @override
  String get field16Name => 'Knowledge';

  @override
  String get field16Subtitle => 'Experience';

  @override
  String get field16Intro =>
      'Knowledge becomes valuable when you use it.\n\nReal wisdom appears through action.\n\nThe right knowledge can show you the next step forward.';

  @override
  String get field16Task =>
      'Do you already have enough knowledge to achieve your goal?\n\nIf yes, what knowledge will help you?\n\nIf not, where can you find the knowledge you need?\n\nThe knowledge that will help me move forward is __________.\n\nI can gain new knowledge from __________.';

  @override
  String get field17Name => 'Choice';

  @override
  String get field17Subtitle => 'Self-Trust';

  @override
  String get field17Intro =>
      'Every choice shapes who you become.\n\nWhen you choose what is truly yours, you move forward with confidence.\n\nYour heart already knows what feels true.\n\nTrust yourself enough to choose it.';

  @override
  String get field17Task =>
      'What feels truly right for you?\n\nI choose __________ because it is mine.';

  @override
  String get field18Name => 'Movement';

  @override
  String get field18Subtitle => 'Discipline';

  @override
  String get field18Intro =>
      'Your desire requires discipline from you.\nThrough small, consistent steps, you can move closer to what you want.';

  @override
  String get field18Task =>
      'What action are you willing to do with discipline to reach your desire?\n\nFor how long are you willing to keep doing it?\n\nI will do __________ regularly for __________ to move closer to my desire.';

  @override
  String get field19Name => 'Truth';

  @override
  String get field19Subtitle => 'Honesty';

  @override
  String get field19Intro =>
      'Progress begins with seeing things as they are.\n\nTruth creates the foundation for change.';

  @override
  String get field19Task =>
      'What is true for you right now?\n\nMy truth right now is __________.\n\nTo move closer to my desire, I intend to improve __________.';

  @override
  String get field20Name => 'Purpose';

  @override
  String get field20Subtitle => 'Courage';

  @override
  String get field20Intro =>
      'A meaningful goal benefits more than just yourself.\n\nWhen your desire serves a greater purpose, it becomes stronger.\n\nIt takes courage to follow your own path.\n\nThe more meaningful your goal is, the more people it can inspire and help.';

  @override
  String get field20Task =>
      'How could your desire benefit others?\n\nWrite 10 ways your desire could help other people.';

  @override
  String get field21Name => 'Change';

  @override
  String get field21Subtitle => 'Flexibility';

  @override
  String get field21Intro =>
      'Life keeps moving.\n\nYou cannot control every change, but you can learn to move with it.';

  @override
  String get field21Task =>
      'What is beginning to unfold in your life right now?\n\nI let go of control over __________ and allow life to move.\n\nI notice that __________ is beginning to unfold in my life.\n\nI start doing __________ to grow __________.';

  @override
  String get field22Name => 'Balance';

  @override
  String get field22Subtitle => 'Self-Mastery';

  @override
  String get field22Intro =>
      'True strength is not force.\n\nIt is the ability to balance power and gentleness.';

  @override
  String get field22Task =>
      'Where in your life could you stop forcing and start responding with balance?\n\nWhere could you use less force and more balance?\n\nMy strength is that I can __________ without forcing, controlling, or fighting.';

  @override
  String get field23Name => 'Observe';

  @override
  String get field23Subtitle => 'Awareness';

  @override
  String get field23Intro =>
      'Sometimes a pause is also a step forward.\n\nBy observing, you begin to see things differently.';

  @override
  String get field23Task =>
      'What are you trying to force right now?\n\nTake one minute to pause and observe.\n\nWhat do you see differently now?\n\nBy slowing down, I realize __________.';

  @override
  String get field24Name => 'Transformation';

  @override
  String get field24Subtitle => 'Ability to Change';

  @override
  String get field24Intro =>
      'Growth requires change.\n\nTo create something new, you may need to let go of something old.';

  @override
  String get field24Task =>
      'What are you holding on to that no longer serves you?\n\nWhat needs to change in you to reach your goal?\n\nI let go of __________ to become myself.';

  @override
  String get field25Name => 'Intention';

  @override
  String get field25Subtitle => 'Focus';

  @override
  String get field25Intro =>
      'What you focus on grows.\n\nA clear intention gives your desire direction and meaning.';

  @override
  String get field25Task =>
      'Why does this desire matter to you?\n\nThis desire matters to me because __________.';

  @override
  String get field26Name => 'Attachment';

  @override
  String get field26Subtitle => 'Self-Honesty';

  @override
  String get field26Intro =>
      'Not everything you hold onto is truly yours.\n\nSometimes fear disguises itself as a desire.';

  @override
  String get field26Task =>
      'What are you doing because you are afraid not to?\n\nOne goal that no longer feels truly mine is __________.\n\nOne intention that still feels true is __________.';

  @override
  String get field27Name => 'Breakdown';

  @override
  String get field27Subtitle => 'Resilience';

  @override
  String get field27Intro =>
      'Sometimes something old needs to break down before you can move forward.\n\nWhen your thoughts and feelings work together, your path becomes clearer.';

  @override
  String get field27Task =>
      'What do you think about your desire?\n\nWhat do you feel about your desire?\n\nIs there a contradiction between the two?\n\nIf there is a contradiction, try to bring your thoughts and feelings together.\n\nWhat do your feelings need to hear?\n\nWhat do your thoughts need to understand?';

  @override
  String get field28Name => 'Guidance';

  @override
  String get field28Subtitle => 'Alignment with Flow';

  @override
  String get field28Intro =>
      'Life flows through receiving and giving.\n\nThe more open you are to this flow, the easier it becomes to follow your path.';

  @override
  String get field28Task =>
      'Where is this desire guiding you?\n\nMy desire is guiding me toward __________.\n\nI choose to be myself and trust the flow, even if __________.';

  @override
  String get field29Name => 'Feeling';

  @override
  String get field29Subtitle => 'Sensitivity';

  @override
  String get field29Intro =>
      'Not everything can be seen clearly.\n\nSometimes the only way forward is to trust what you feel.';

  @override
  String get field29Task =>
      'What are you afraid to face?\n\nI am ready to face __________.\n\nI meet the shadow that __________.';

  @override
  String get field30Name => 'Integration';

  @override
  String get field30Subtitle => 'Recognition';

  @override
  String get field30Intro =>
      'You begin to recognize yourself in a new reality.\n\nThe more clearly you see who you are becoming, the easier it becomes to integrate this identity into your life.';

  @override
  String get field30Task =>
      'Who are you when this desire is already part of your life?\n\nWho are you when this desire has already come true?\n\nI am a person who __________.\n\nI recognize myself as someone who __________.';

  @override
  String get field31Name => 'Awakening';

  @override
  String get field31Subtitle => 'Action';

  @override
  String get field31Intro =>
      'You already know enough.\n\nThe question is no longer what you want. The question is whether you are ready to act.';

  @override
  String get field31Task =>
      'What action can you no longer postpone?\n\nWhat action do you know you need to take?\n\nI am ready to take action and __________.\n\nI wake up and take action by __________.';

  @override
  String get field32Name => 'Wholeness';

  @override
  String get field32Subtitle => 'Bravery';

  @override
  String get field32Intro =>
      'Wholeness begins when you gather all parts of yourself.\n\nYou may still feel fear, but you are ready to take the next step.';

  @override
  String get field32Task =>
      'What fears still stand between you and your next step?\n\nI acknowledge these fears, and I choose to move toward __________ anyway.';

  @override
  String get pdfJourneyReportLabel => 'Your Journey Report';

  @override
  String get pdfJourneyCompleteHeading => 'Your Journey\nIs Complete';

  @override
  String get pdfWalkedAllPathsLine => 'You have walked all 32 paths.';

  @override
  String get pdfYourDesireLabel => 'YOUR DESIRE';

  @override
  String get pdfCurrentAreaOfActionLabel => 'YOUR CURRENT AREA OF ACTION';

  @override
  String get pdfWhatYouHaveDiscoveredLabel => 'WHAT YOU HAVE DISCOVERED';

  @override
  String get pdfNoAnswersRecorded => 'No answers recorded.';

  @override
  String get privacyPolicyLabel => 'Privacy Policy';

  @override
  String get termsOfUseLabel => 'Terms of Use';

  @override
  String get subscriptionTermsLabel => 'Subscription & Refund Terms';

  @override
  String get legalConsentPrefix => 'I agree to the ';

  @override
  String get legalConsentAnd => ' and ';

  @override
  String get legalConsentSuffix => '.';

  @override
  String get legalPrivacySection1Heading => 'Overview';

  @override
  String get legalPrivacySection1Body =>
      'Last updated: September 9, 2026. This Privacy Policy explains what information Hatchpot processes, for what purposes, who it may be shared with, where it may be stored, and what rights you have.\n\nHatchpot (\"Hatchpot\", \"we\", \"us\", or \"our service\") is a digital application for personal reflection, self-discovery, and entertainment that uses artificial intelligence technologies.\n\nHatchpot is operated by Maimur Yevheniia Feliksivna, a sole proprietor (individual entrepreneur) registered under the laws of Ukraine.\n\nRegistration and contact details: Taxpayer Identification Number (РНОКПП) 3743203085; registered address: 2 Zhukovskoho St., Dnipro, 49000, Ukraine; email: leadlife.app@gmail.com.';

  @override
  String get legalPrivacySection2Heading => 'Information We Process';

  @override
  String get legalPrivacySection2Body =>
      'Information you provide yourself — depending on the features you use, this may include: your name or chosen name; birthday; email address; selected focus area; your wish or intention; answers to questions; diary entries; your journey history within the app; the content of requests to AI-powered features; and other information you enter as free text.\n\nAccount data — if you create or link an account, Firebase Authentication processes the related data: your account identifier, email address, and the technical data needed for authentication.\n\nTechnical information — device type and model, operating system, app version, technical identifiers, information about your interactions with the app, diagnostic information, and crash reports. Firebase Analytics and Firebase Crashlytics may be used for analytics and diagnostics. We do not ask you to enter payment-card details.';

  @override
  String get legalPrivacySection3Heading => 'Sensitive Information';

  @override
  String get legalPrivacySection3Body =>
      'Some of the entries you make — particularly diary entries, answers to questions, or free-text fields — may potentially contain information about your health, psychological state, beliefs, relationships, or other personal circumstances.\n\nWe do not require you to provide such information to use the app, but you may choose to enter it voluntarily in the relevant field. If you voluntarily provide information that qualifies as a special category of personal data, it is processed only to the extent necessary for the relevant feature and on an applicable legal basis.\n\nDo not enter passwords, payment details, document numbers, secret keys, or other information whose disclosure could create a risk for you into the app.';

  @override
  String get legalPrivacySection4Heading => 'Purposes of Processing';

  @override
  String get legalPrivacySection4Body =>
      'We use information only for specific, lawful purposes: providing Hatchpot\'s features; creating personalized game and reflection content; processing requests to AI-powered features; generating the final analysis you request; saving and synchronizing your progress; account recovery; sending reminders you have requested; keeping the service secure; preventing abuse and fraud; diagnosing technical errors; analyzing feature usage; improving the app\'s stability and functionality; complying with legal obligations; and protecting the rights and legitimate interests of you and the operator.\n\nWe do not sell users\' personal data, and we do not use it to sell third-party goods or services through advertising networks.';

  @override
  String get legalPrivacySection5Heading =>
      'Artificial Intelligence and Anthropic';

  @override
  String get legalPrivacySection5Body =>
      'To create personalized AI content, Hatchpot uses third-party artificial intelligence technologies, including the Anthropic API. Depending on the feature used, the context necessary to fulfill your request may be sent to Anthropic: your wish, selected focus area, the questions, your answers, information about the fields you have visited, and other necessary context. We aim to send only the amount of information needed to fulfill a specific request.\n\nAnthropic is a separate technology provider and processes the data sent to it in accordance with its own applicable terms and policies. Under Anthropic\'s commercial API, the standard retention period for inputs and outputs is up to 30 days after receipt or creation, except where otherwise agreed, required by law, or needed to ensure safety and enforce usage policies.\n\nSending data to Anthropic is a transfer of information to a third party and is expressly disclosed to you in this Policy.';

  @override
  String get legalPrivacySection6Heading => 'Service Providers';

  @override
  String get legalPrivacySection6Body =>
      'To operate the app, we may use third-party technology services: Google Firebase (Authentication, Cloud Firestore, Analytics, Crashlytics, App Check, Cloud Functions), the Anthropic API, and Apple and/or Google for their respective sign-in services and purchase processing. These providers receive only the amount of data needed to provide their respective service.';

  @override
  String get legalPrivacySection7Heading => 'International Transfers';

  @override
  String get legalPrivacySection7Body =>
      'Google Firebase and Anthropic may process information outside your country or the European Economic Area, including in the United States and other regions where their service providers operate. Where the GDPR or other laws with specific requirements for international data transfers apply, such transfers are carried out on a legally recognized basis and with appropriate safeguards.';

  @override
  String get legalPrivacySection8Heading => 'Legal Bases for Processing';

  @override
  String get legalPrivacySection8Body =>
      'Depending on the specific operation, processing may be based on: your consent; the necessity of performing a contract with you; the necessity of complying with legal obligations; the necessity of protecting vital interests; or legitimate interest, where permitted by applicable law. Processing of sensitive information relies on an additional legal basis where required by law.\n\nIn Ukraine, the processing of health data and certain other special categories is governed by separate requirements of the Law of Ukraine \"On Personal Data Protection\".';

  @override
  String get legalPrivacySection9Heading => 'How Consent Is Given';

  @override
  String get legalPrivacySection9Body =>
      'Where required, you give consent through a clearly affirmative action, such as checking the relevant box. Consent is not considered given merely because you use the app, where the law requires separate consent. Consent checkboxes in Hatchpot — including on the AI information screen and for permission to process sensitive information — are not pre-checked: you make an active choice.\n\nYou may withdraw your consent in the cases and manner provided by applicable law. Withdrawing consent does not affect the lawfulness of processing carried out before the withdrawal.';

  @override
  String get legalPrivacySection10Heading => 'Data Retention and Deletion';

  @override
  String get legalPrivacySection10Body =>
      'We retain personal data no longer than necessary for the relevant purposes, unless a longer period is required by law. Locally stored information is removed when you delete the app or clear its data.\n\nWe delete data associated with your account in accordance with the deletion procedure (Section 11), though some data may be retained in backups, security logs, financial records, or where required by law — including for fraud prevention, dispute resolution, security, or to comply with requirements from Apple, Google, or other providers.\n\nData already sent to Anthropic is subject to Anthropic\'s applicable retention rules described above.';

  @override
  String get legalPrivacySection11Heading => 'Account Deletion';

  @override
  String get legalPrivacySection11Body =>
      'You can request deletion of your account and the data associated with it through the relevant feature in the app, or by sending a request to leadlife.app@gmail.com. After your account is deleted, some data may remain in backups, security logs, or where its retention is required by law.';

  @override
  String get legalPrivacySection12Heading => 'Your Rights';

  @override
  String get legalPrivacySection12Body =>
      'Depending on applicable law, you may have the right to: obtain information about your personal data; receive a copy of your data; correct inaccurate data; delete your data; restrict processing; object to certain kinds of processing; withdraw consent; receive your data in a machine-readable format; and lodge a complaint with a competent data protection authority.\n\nSend your request to leadlife.app@gmail.com. Before fulfilling a request, we may ask for reasonable proof of your identity.';

  @override
  String get legalPrivacySection13Heading => 'Minimum Age';

  @override
  String get legalPrivacySection13Body =>
      'Hatchpot is intended only for individuals who are 18 years of age or older. Hatchpot is not directed at children or minors. If we become aware that we have received personal data from someone under 18 without an appropriate legal basis, we will take reasonable steps to delete that data.';

  @override
  String get legalPrivacySection14Heading => 'Security';

  @override
  String get legalPrivacySection14Body =>
      'We apply reasonable technical and organizational measures to protect personal data against unauthorized access, alteration, disclosure, loss, or destruction. No method of transmission or storage can guarantee absolute security.';

  @override
  String get legalPrivacySection15Heading => 'Changes & Contact';

  @override
  String get legalPrivacySection15Body =>
      'We may update this Policy when Hatchpot\'s functionality, the providers we use, or applicable law changes. The date of the last update is shown at the beginning of the document; for material changes, we may additionally notify you through the app or in another reasonable manner.\n\nFor questions about the processing of personal data, write to leadlife.app@gmail.com.\n\nOperator: Maimur Yevheniia Feliksivna, sole proprietor (individual entrepreneur), Ukraine.';

  @override
  String get legalTermsSection1Heading => 'General Provisions';

  @override
  String get legalTermsSection1Body =>
      'Last updated: September 9, 2026. These Terms of Use (\"Terms\") govern the relationship between the user of Hatchpot (\"user\", \"you\") and the operator of the app — Maimur Yevheniia Feliksivna, a sole proprietor (individual entrepreneur) registered under the laws of Ukraine (Taxpayer Identification Number (РНОКПП) 3743203085, 2 Zhukovskoho St., Dnipro, 49000, Ukraine).\n\nHatchpot is the commercial name of a digital app designed for personal reflection, self-discovery, and entertainment.\n\nBy using Hatchpot, creating an account, or purchasing paid features, you confirm that you have read these Terms. If you do not agree with these Terms, do not use Hatchpot.';

  @override
  String get legalTermsSection2Heading => 'Purpose of Hatchpot';

  @override
  String get legalTermsSection2Body =>
      'Hatchpot provides a digital tool for personal reflection and self-discovery, built around your wish, a journey through game fields, questions, answers, diary entries, and AI-generated content.\n\nHatchpot is not a medical, psychological, psychotherapeutic, or psychiatric service. The content that Hatchpot generates, including AI content, is not medical advice, psychological advice, psychotherapy, psychiatric care, a diagnosis, a treatment, financial advice, or legal advice.';

  @override
  String get legalTermsSection3Heading => 'Artificial Intelligence Disclaimer';

  @override
  String get legalTermsSection3Body =>
      'Some of Hatchpot\'s content is generated using artificial intelligence technologies. AI can produce inaccurate, incomplete, or subjective responses. AI content should not be treated as established fact, professional opinion, or a prediction of future events. You are solely responsible for evaluating the content you receive and for any decisions you make in light of your own circumstances.';

  @override
  String get legalTermsSection4Heading => 'User Age';

  @override
  String get legalTermsSection4Body =>
      'Hatchpot is intended for users who are 18 years of age or older. By using Hatchpot, you confirm that you are at least 18 years old. If you are under 18, do not create an account, use paid features, or provide your personal data to use Hatchpot.';

  @override
  String get legalTermsSection5Heading => 'Accounts';

  @override
  String get legalTermsSection5Body =>
      'Hatchpot may allow you to use the app without registering. You may link an account using email, Google, Apple, or another supported method. You are responsible for providing accurate information and for keeping your sign-in credentials secure.';

  @override
  String get legalTermsSection6Heading => 'Your Content';

  @override
  String get legalTermsSection6Body =>
      'You retain the rights to the text, answers, diary entries, wishes, and other content you create or enter in Hatchpot (\"User Content\"). By providing User Content, you allow Hatchpot, to the extent necessary to operate the service, to access, store, process, transmit, and technically use it to: provide the app\'s features; synchronize your data; generate personalized content; process AI requests, including by sending the relevant context to third-party technology providers, including Anthropic (see the Privacy Policy); generate the analysis you request; keep the service secure; and perform technical maintenance.\n\nHatchpot does not acquire ownership of your User Content, does not sell it, and does not use it for advertising targeting. You confirm that you have the right to provide the information you submit.';

  @override
  String get legalTermsSection7Heading => 'Prohibited Use';

  @override
  String get legalTermsSection7Body =>
      'You must not: use Hatchpot unlawfully; interfere with the app\'s operation; attempt to gain unauthorized access to its systems; distribute malicious code; reverse-engineer, decompile, or disassemble the app, except where expressly permitted by applicable law; or use the app to infringe the rights of third parties or to threaten the safety of other users.';

  @override
  String get legalTermsSection8Heading => 'Crisis Situations';

  @override
  String get legalTermsSection8Body =>
      'Hatchpot is not designed for use in emergencies. If your message indicates an immediate threat to the life, health, or safety of you or another person, Hatchpot may suspend its normal game or reflection processing and instead display pre-prepared information about the need to seek emergency or professional help.\n\nDo not use Hatchpot as a substitute for emergency, medical, psychological, or psychiatric help.';

  @override
  String get legalTermsSection9Heading => 'Disclaimer of Warranties';

  @override
  String get legalTermsSection9Body =>
      'Hatchpot is provided \"as is\" and \"as available\". We do not warrant that the app will operate without interruption, be free of technical errors, be available at all times, be fully compatible with every device, or generate AI content that is always accurate or appropriate.';

  @override
  String get legalTermsSection10Heading => 'Limitation of Liability';

  @override
  String get legalTermsSection10Body =>
      'To the fullest extent permitted by applicable law, Hatchpot is not liable for indirect, incidental, special, or consequential damages arising from your use of, or inability to use, the app. You are solely responsible for decisions you make based on information received through Hatchpot.\n\nNothing in these Terms excludes or limits the operator\'s liability where such exclusion or limitation is prohibited by applicable law, and nothing deprives you, as a consumer, of rights granted by mandatory legal provisions — including Ukrainian law on distance contracts and digital content, and, if you reside in another country, the mandatory rights granted to you by the law of your country of residence.';

  @override
  String get legalTermsSection11Heading => 'Paid Features and Subscriptions';

  @override
  String get legalTermsSection11Body =>
      'Hatchpot may offer paid features, subscriptions, and digital content. The terms for payment, automatic renewal, cancellation, and refunds are set out in a separate document, the \"Subscription & Refund Terms\", which forms an integral part of these Terms.';

  @override
  String get legalTermsSection12Heading => 'Account Deletion';

  @override
  String get legalTermsSection12Body =>
      'You may stop using Hatchpot and delete your account through the procedure provided in the app. Deleting your account does not relieve either party of obligations that, by their nature, are meant to survive the end of your use of the service.';

  @override
  String get legalTermsSection13Heading => 'Suspension of Access';

  @override
  String get legalTermsSection13Body =>
      'We may temporarily restrict or terminate a user\'s access if: the user violates these Terms; use of the account poses a security risk; it is necessary to prevent fraud; it is required by law; or it is necessary to protect the rights of other users or the operator.';

  @override
  String get legalTermsSection14Heading => 'Governing Law';

  @override
  String get legalTermsSection14Body =>
      'These Terms are governed by the laws of Ukraine. If you are a consumer residing in another country, the choice of Ukrainian law does not deprive you of the rights granted to you by the mandatory provisions of the law of your country of residence.';

  @override
  String get legalTermsSection15Heading => 'Changes to the Terms and Contact';

  @override
  String get legalTermsSection15Body =>
      'We may change these Terms if the app, our business model, or applicable law changes. We may notify you of material changes through the app or in another reasonable manner. Continuing to use Hatchpot after changes take effect means using the service under the updated Terms, to the extent permitted by law.\n\nOperator: Maimur Yevheniia Feliksivna, sole proprietor (individual entrepreneur), Ukraine. Email: leadlife.app@gmail.com.';

  @override
  String get legalSubscriptionSection1Heading => 'Paid Features';

  @override
  String get legalSubscriptionSection1Body =>
      'Some Hatchpot features may be offered for a fee. Before you make a purchase, you are shown information about the price, currency, subscription period, whether automatic renewal applies, what the paid feature includes, and the cancellation terms.';

  @override
  String get legalSubscriptionSection2Heading =>
      'Subscription and Automatic Renewal';

  @override
  String get legalSubscriptionSection2Body =>
      'If the service you choose is a subscription, it renews automatically for the corresponding period unless you cancel it before the renewal date. Canceling a subscription stops future automatic renewals but does not necessarily end your access to the period you have already paid for.';

  @override
  String get legalSubscriptionSection3Heading => 'Payment Through App Stores';

  @override
  String get legalSubscriptionSection3Body =>
      'On iOS, payments are processed through the App Store, and on Android, through Google Play, unless the app specifies otherwise. Certain aspects of payment may be subject to the rules of the relevant store.';

  @override
  String get legalSubscriptionSection4Heading => 'Cancellation';

  @override
  String get legalSubscriptionSection4Body =>
      'You can cancel your subscription in the relevant account settings of the App Store or Google Play. After cancellation, you generally retain access until the end of the period you have already paid for, unless otherwise provided by applicable rules or law.';

  @override
  String get legalSubscriptionSection5Heading => 'Refunds';

  @override
  String get legalSubscriptionSection5Body =>
      'The right to a refund is determined by applicable law, the terms of the contract, and the rules of the relevant app store. Nothing in this document limits your mandatory consumer rights.\n\nIf applicable law grants a right to withdraw from a distance contract or digital content, that right remains available, subject to the conditions set by law. For digital content whose provision has already begun, the right of withdrawal may be limited in cases provided by law, in particular where you have given your express prior consent to the digital content being provided immediately and have been informed of the consequences of that consent.';

  @override
  String get legalSubscriptionSection6Heading => 'Free Trial Period';

  @override
  String get legalSubscriptionSection6Body =>
      'If Hatchpot offers a free trial period, its duration and the terms of automatic conversion to a paid subscription are disclosed before the trial period begins.';

  @override
  String get legalSubscriptionSection7Heading => 'Price Changes';

  @override
  String get legalSubscriptionSection7Body =>
      'If the price of a future subscription period changes, you will be notified in the manner provided by applicable law and the rules of the relevant store.';

  @override
  String get legalSubscriptionSection8Heading => 'Erroneous Charges';

  @override
  String get legalSubscriptionSection8Body =>
      'If you believe you have been charged in error, contact leadlife.app@gmail.com. If needed, you can also use the refund procedure of the relevant app store.';

  @override
  String get legalSubscriptionSection9Heading =>
      'Service-Initiated Cancellation or Suspension';

  @override
  String get legalSubscriptionSection9Body =>
      'If we cancel or suspend your access for reasons on our side — not because you violated these Terms — you don\'t lose what you\'ve already paid for.\n\nIf you purchased a one-time single-journey plan, access to the journey you already paid for is preserved; if that\'s not technically possible, we refund the unused portion on a pro-rata basis.\n\nIf you have an active subscription and we cancel or suspend it for reasons on our side, you keep access for the remainder of your already-paid period, or receive an equivalent number of additional journeys or days of access to make up for the lost time — or a pro-rata refund if neither option is possible.\n\nThis does not apply where access is restricted because you violated these Terms, or as required by law, fraud, or abuse prevention.';

  @override
  String get aiDisclaimerHeading => 'IMPORTANT INFORMATION';

  @override
  String get aiDisclaimerBody =>
      'Hatchpot is designed for entertainment, personal reflection, and self-discovery.\n\nHatchpot is not medical, psychological, psychotherapeutic, or psychiatric care.\n\nResponses generated by artificial intelligence may contain errors, inaccuracies, or subjective interpretations and do not replace consultation with a qualified professional.\n\nDo not use Hatchpot to diagnose a condition, treat an illness, or make decisions that require professional medical, psychological, legal, or financial advice.\n\nHatchpot is not designed for emergencies. If you or another person is in immediate danger, seek emergency help or contact an appropriate professional.';

  @override
  String get aiDisclaimerCheckboxLabel =>
      'I am 18 years of age or older. I have read this information and understand that Hatchpot is not medical, psychological, or psychiatric care, and that AI responses may be inaccurate.';

  @override
  String get crisisResourcesHeading => 'Let\'s pause here for a moment';

  @override
  String get crisisResourcesBody =>
      'What you wrote seems to deserve more than this game can offer. Hatchpot isn\'t built for crisis situations and doesn\'t replace professional help.\n\nPlease reach out to someone you trust, a mental health professional, or your local emergency services. You don\'t have to go through this alone.';

  @override
  String get crisisResourcesBackCta => 'Go back';

  @override
  String get accountSectionTitle => 'Account';

  @override
  String get accountAnonymousStatus =>
      'Your data is currently stored only on this device.';

  @override
  String get accountConnectedStatus =>
      'Your data is safely synced with your account.';

  @override
  String get resetPasswordAction => 'Reset password';

  @override
  String get resetPasswordPrompt =>
      'Enter the email address connected to your account.';

  @override
  String get resetPasswordSent => 'A password reset link has been sent.';

  @override
  String get signOutAction => 'Sign out';

  @override
  String get signOutConfirm =>
      'Your cloud copy will stay safe. Local data will be removed from this device.';

  @override
  String get deleteAccountAction => 'Delete account';

  @override
  String get deleteAccountConfirm =>
      'This permanently deletes your account, cloud data, journey, diary, and history. This cannot be undone.';

  @override
  String get cancelAction => 'Cancel';

  @override
  String get confirmAction => 'Confirm';

  @override
  String get accountActionError =>
      'Something went wrong. Please check your connection and try again.';
}
