// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

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
  String get helpFaqWhatIsLeadlifeQ => 'What is leadlife?';

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
      'leadlife is built around 32 fields, arranged in one continuous path.';

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
  String get paywallTariffLeadlifePassTitle => 'leadlife Pass';

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
  String get howItWorksSlide1Title => 'What is the leadlife journey?';

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
      'In leadlife, your journey begins by clarifying the intention you are ready to work with right now.';

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
      'Choose how you want to interact with leadlife and start moving through your unique path.';

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
      'leadlife turns them into your personal success code — a map back to your desire.';

  @override
  String get howItWorksSlide7Para3 => 'Not a universal answer.';

  @override
  String get howItWorksSlide7Para4 => 'Your path, built from your own answers.';
}
