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
  String get aiAssistantLinkCta =>
      '✨ Not sure how to put it into words? Ask the assistant';

  @override
  String get aiAssistantTitle => 'Clarify Your Wish';

  @override
  String get aiAssistantGreeting =>
      'What\'s the desire you\'re bringing into this journey? Tell me a bit about it and I\'ll help you put it into words.';

  @override
  String get aiAssistantInputHint => 'Type your reply…';

  @override
  String get aiAssistantUseThisWish => 'Use This Wish';

  @override
  String get aiAssistantError =>
      'The assistant couldn\'t respond — check your connection and try again.';

  @override
  String get aiAssistantRetryCta => 'Try again';

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
  String howItWorksStepOfTotal(int step, int total) {
    return 'Step $step of $total';
  }

  @override
  String get howItWorksBeginJourneyCta => 'Begin your journey';

  @override
  String get howItWorksContinueCta => 'Continue';

  @override
  String get howItWorksSlide1Title => 'What is the Hatchpot journey?';

  @override
  String get howItWorksSlide1Para =>
      'A guided journey designed to help you clarify what you truly want, shift your inner state, and find your direction.';

  @override
  String get howItWorksSlide2Title => 'Start with one desire';

  @override
  String get howItWorksSlide2Line1 =>
      'Write down what you want as if it is already true.';

  @override
  String get howItWorksSlide2Line2 => 'Focus on it.';

  @override
  String get howItWorksSlide2Line3 => 'Then roll the dice.';

  @override
  String get howItWorksSlide2Para =>
      'In Hatchpot, your journey begins by clarifying the intention you are ready to work with right now.';

  @override
  String get howItWorksSlide3Title => 'Let the dice guide you';

  @override
  String get howItWorksSlide3Line1 => 'If you roll 1, your desire is ready.';

  @override
  String get howItWorksSlide3Line2 => 'Your journey begins.';

  @override
  String get howItWorksSlide3Para1 =>
      'If another number appears, you\'ll receive a clue to help you clarify, rewrite, or reconsider your desire.';

  @override
  String get howItWorksSlide3Para2 =>
      'You can refine it — or choose a completely different one.';

  @override
  String get howItWorksSlide4Title => 'Then your journey begins';

  @override
  String get howItWorksSlide4Para1 =>
      'Choose how you want to interact with Hatchpot and start moving through your unique path.';

  @override
  String get howItWorksSlide4Line => 'The system is built around 32 fields:';

  @override
  String get howItWorksSlide4Line1 => '10 levels of reality.';

  @override
  String get howItWorksSlide4Line2 => '22 life strategies.';

  @override
  String get howItWorksSlide4Para2 =>
      'Your path through them is uniquely yours.';

  @override
  String get howItWorksSlide5Title => 'Move through your path';

  @override
  String get howItWorksSlide5Line1 => 'Roll the dice.';

  @override
  String get howItWorksSlide5Line2 => 'Enter a field.';

  @override
  String get howItWorksSlide5Line3 =>
      'Answer one question or complete one simple task.';

  @override
  String get howItWorksSlide5Para1 =>
      'Most interactions take less than a minute.';

  @override
  String get howItWorksSlide5Para2 =>
      'Each field shifts your focus and helps you explore your desire from a different perspective.';

  @override
  String get howItWorksSlide6Title =>
      '22 strategies. Different ways of moving.';

  @override
  String get howItWorksSlide6Para1 =>
      'You move through different life strategies — ways of thinking, choosing, feeling and acting.';

  @override
  String get howItWorksSlide6Para2 =>
      'You don\'t need to study the system. Just follow your path.';

  @override
  String get howItWorksSlide6RichTextBefore =>
      'Want to understand the structure behind it? Explore ';

  @override
  String get howItWorksSlide6RichTextAfter => ' About the system in the menu.';

  @override
  String get howItWorksSlide7Title => 'Your success code';

  @override
  String get howItWorksSlide7Para1 =>
      'At the end of your journey, your answers come together.';

  @override
  String get howItWorksSlide7Line1 => 'Your decisions.';

  @override
  String get howItWorksSlide7Line2 => 'Your insights.';

  @override
  String get howItWorksSlide7Line3 => 'Your direction.';

  @override
  String get howItWorksSlide7Para2 =>
      'Hatchpot turns them into your personal success code — a map back to your desire.';

  @override
  String get howItWorksSlide7Para3 => 'Not a universal answer.';

  @override
  String get howItWorksSlide7Para4 => 'Your path, built from your own answers.';

  @override
  String get field01Name => 'Light';

  @override
  String get field01Subtitle => 'Desire';

  @override
  String get field01Intro =>
      'In Hatchpot, Light is the symbolic beginning — the energy already present in your idea.\n\nThe desire you wrote reflects something genuinely important to you. Let its value support you as your path begins.';

  @override
  String get field01Task => 'What desire are you bringing into this journey?';

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
      'A desire needs a structure that can hold its energy and actions.\n\nThis field is symbolically connected with Jupiter, scale, expansion, and kindness.';

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
  String get legalConsentPrefix => 'I agree to the ';

  @override
  String get legalConsentAnd => ' and ';

  @override
  String get legalConsentSuffix => '.';

  @override
  String get legalPrivacySection1Heading => 'Overview';

  @override
  String get legalPrivacySection1Body =>
      'Last updated: August 20, 2026. This policy explains what information Hatchpot (\"we\") processes when you use the Hatchpot app, why we process it, where it may be stored, and the choices you have.';

  @override
  String get legalPrivacySection2Heading => 'Information We Collect';

  @override
  String get legalPrivacySection2Body =>
      'We process information you choose to enter: your name, birthday, email address, focus area, wishes, answers, diary entries, and journey history. If you create an account, Firebase Authentication processes your account identifier and sign-in details. We also process technical and usage information needed for security, analytics, and crash diagnosis, such as app interactions, device and operating-system information, app version, and diagnostic reports. We do not ask you to enter payment-card details.';

  @override
  String get legalPrivacySection3Heading => 'How We Use Your Information';

  @override
  String get legalPrivacySection3Body =>
      'We use this information to provide and personalize your journey, generate AI-personalized field content and a final analysis, save and synchronize your progress when you create an account, provide reminders you request, secure the service, diagnose crashes, understand feature usage, improve the app, and manage your account.';

  @override
  String get legalPrivacySection4Heading => 'Where Your Data Lives';

  @override
  String get legalPrivacySection4Body =>
      'Your information is first stored on your device. If you use only an anonymous account, your progress and diary are not synchronized to another device. If you link an account, your profile, current progress, answers, diary, and journey history are stored in Google Firebase Cloud Firestore so they can be restored on another device. Account information is handled by Firebase Authentication, and usage and crash data may be handled by Firebase Analytics and Firebase Crashlytics. To personalize the game, we send your wish and selected focus area to the Anthropic API. For the final analysis, we send your wish and the questions and answers from the fields you visited. Anthropic returns generated game text and analysis. Under Anthropic\'s standard API retention policy, API inputs and outputs are normally deleted from its backend within 30 days, subject to limited safety, abuse-prevention, and legal exceptions.';

  @override
  String get legalPrivacySection5Heading => 'Sharing';

  @override
  String get legalPrivacySection5Body =>
      'We do not sell your personal information and do not use advertising networks. We share information only as needed to operate the app: with Google LLC for Firebase cloud storage, authentication, analytics, crash reporting, App Check, and Cloud Functions; with Anthropic, PBC and its affiliates for AI generation and analysis; and with Apple or Google when you choose their sign-in service. These providers process information under their own applicable terms and privacy commitments.';

  @override
  String get legalPrivacySection6Heading => 'International Transfers';

  @override
  String get legalPrivacySection6Body =>
      'Google Firebase and Anthropic may process information outside your country or the European Economic Area, including in the United States and other regions where their service providers operate. Where required, transfers are handled using legally recognized safeguards.';

  @override
  String get legalPrivacySection7Heading => 'Data Retention & Deletion';

  @override
  String get legalPrivacySection7Body =>
      'Information stored locally is removed when you delete the app or clear its data. If you linked an account, you can delete the account and its associated Firebase profile, progress, diary, and journey history from within the app. Data already sent to Anthropic is handled according to Anthropic\'s API retention rules described above. Some limited records may be retained where required for security, fraud prevention, dispute resolution, or law. You can also contact us at leadlife.app@gmail.com.';

  @override
  String get legalPrivacySection8Heading => 'Your Rights';

  @override
  String get legalPrivacySection8Body =>
      'Depending on where you live, you may have the right to access, correct, delete, or export your data, object to or restrict certain processing, and withdraw consent where processing relies on consent. Contact leadlife.app@gmail.com to make a request. We may need to verify your identity before completing it.';

  @override
  String get legalPrivacySection9Heading => 'Children';

  @override
  String get legalPrivacySection9Body =>
      'Hatchpot is not directed at children under 16, and we do not knowingly collect information from them.';

  @override
  String get legalPrivacySection10Heading => 'Changes & Contact';

  @override
  String get legalPrivacySection10Body =>
      'We may update this policy when the app or legal requirements change. The updated date will be shown above, and material changes will be reflected in the app. Questions can be sent to leadlife.app@gmail.com.';

  @override
  String get legalTermsSection1Heading => 'Acceptance of Terms';

  @override
  String get legalTermsSection1Body =>
      'Last updated: [fill in before release]. By using Hatchpot, you agree to these Terms of Use. If you do not agree, please do not use the app.';

  @override
  String get legalTermsSection2Heading => 'The Service';

  @override
  String get legalTermsSection2Body =>
      'Hatchpot is a personal-growth and self-reflection companion built around your wish, a 32-field journey, and gentle reminders. Content is provided for entertainment and self-reflection purposes only, and is not professional medical, psychological, financial, or legal advice.';

  @override
  String get legalTermsSection3Heading => 'Eligibility';

  @override
  String get legalTermsSection3Body =>
      'You must be at least 16 years old, or the age of digital consent in your country, to use Hatchpot, and you agree to provide accurate information.';

  @override
  String get legalTermsSection4Heading => 'Accounts';

  @override
  String get legalTermsSection4Body =>
      'The app works anonymously by default. You may optionally link an account with Google, Apple, or email and password so your journey and purchases carry over to a new device. You are responsible for keeping your credentials secure.';

  @override
  String get legalTermsSection5Heading => 'Subscriptions & Payments';

  @override
  String get legalTermsSection5Body =>
      'Paid plans are auto-renewing subscriptions billed through the App Store or Google Play. Price and renewal terms are shown before you purchase. You can cancel any time in your App Store or Google Play account settings; cancellation takes effect at the end of the current billing period. Refunds are handled by Apple or Google according to their own policies.';

  @override
  String get legalTermsSection6Heading => 'Your Content';

  @override
  String get legalTermsSection6Body =>
      'You own what you write in the app. You grant us a limited license to store and process it solely to provide the service to you.';

  @override
  String get legalTermsSection7Heading => 'Acceptable Use';

  @override
  String get legalTermsSection7Body =>
      'You agree not to use the app unlawfully, to interfere with its operation, or to reverse-engineer, decompile, or disassemble it.';

  @override
  String get legalTermsSection8Heading => 'Disclaimer & Liability';

  @override
  String get legalTermsSection8Body =>
      'Hatchpot is provided \"as is\", without warranties of any kind. To the fullest extent permitted by law, we are not liable for indirect, incidental, or consequential damages arising from your use of the app.';

  @override
  String get legalTermsSection9Heading => 'Termination';

  @override
  String get legalTermsSection9Body =>
      'We may suspend or terminate access to the app for violation of these terms. You may stop using the app, and delete your account, at any time.';

  @override
  String get legalTermsSection10Heading => 'Governing Law & Changes';

  @override
  String get legalTermsSection10Body =>
      'These terms are governed by the laws of [fill in your jurisdiction]. We may update these terms from time to time; material changes will be reflected in the app. Questions? Reach us at [support email].';

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
