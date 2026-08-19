import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[Locale('en')];

  /// Greeting at the top of the Home tab
  ///
  /// In en, this message translates to:
  /// **'Welcome'**
  String get welcomeGreeting;

  /// Heading on the Home tab's wish-preview card
  ///
  /// In en, this message translates to:
  /// **'What\'s your wish?'**
  String get whatsYourWish;

  /// Reminder on how to phrase a wish; shown on Home and the wish-entry screen
  ///
  /// In en, this message translates to:
  /// **'Write in the present perfect tense — as if it has already come true.'**
  String get presentPerfectPrompt;

  /// Placeholder-style hint on the Home tab's wish-preview card
  ///
  /// In en, this message translates to:
  /// **'Type it here…'**
  String get typeItHere;

  /// Nav button label and screen title for the How It Works explainer
  ///
  /// In en, this message translates to:
  /// **'How It Works'**
  String get howItWorks;

  /// Nav button label leading into the wish/journey flow
  ///
  /// In en, this message translates to:
  /// **'Build Success Code'**
  String get buildSuccessCode;

  /// Bottom nav tab label and drawer menu item
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get navHome;

  /// Bottom nav tab label and drawer menu item
  ///
  /// In en, this message translates to:
  /// **'Journal'**
  String get navJournal;

  /// Bottom nav tab label
  ///
  /// In en, this message translates to:
  /// **'Diary'**
  String get navDiary;

  /// Label next to the '?' help button
  ///
  /// In en, this message translates to:
  /// **'See example'**
  String get seeExample;

  /// Drawer menu item — opens the Diary tab
  ///
  /// In en, this message translates to:
  /// **'History'**
  String get drawerHistory;

  /// Drawer menu item — opens the Profile screen
  ///
  /// In en, this message translates to:
  /// **'Profile'**
  String get drawerProfile;

  /// Drawer menu item — opens the Help screen
  ///
  /// In en, this message translates to:
  /// **'Help'**
  String get drawerHelp;

  /// Drawer menu item — opens the About screen
  ///
  /// In en, this message translates to:
  /// **'About'**
  String get drawerAbout;

  /// Step indicator on the wish-entry screen
  ///
  /// In en, this message translates to:
  /// **'Step 1 of 3 · Your Intention'**
  String get stepOneOfThreeIntention;

  /// Heading on the wish-entry screen
  ///
  /// In en, this message translates to:
  /// **'What do you desire?'**
  String get whatDoYouDesire;

  /// Placeholder text inside the wish text field
  ///
  /// In en, this message translates to:
  /// **'I have… / I am… / I experience…'**
  String get wishFieldHint;

  /// Short encouragement below the wish text field
  ///
  /// In en, this message translates to:
  /// **'Be specific. Be honest. Be you.'**
  String get beSpecificHonestYou;

  /// CTA button confirming the wish and starting the journey
  ///
  /// In en, this message translates to:
  /// **'Confirm My Desire'**
  String get confirmMyDesire;

  /// Link on the wish-entry screen that opens the AI wish-clarification chat
  ///
  /// In en, this message translates to:
  /// **'✨ Not sure how to put it into words? Ask the assistant'**
  String get aiAssistantLinkCta;

  /// Title shown at the top of the AI wish-clarification chat screen
  ///
  /// In en, this message translates to:
  /// **'Clarify Your Wish'**
  String get aiAssistantTitle;

  /// Assistant's opening message shown when the AI wish-clarification chat screen opens, before any API call
  ///
  /// In en, this message translates to:
  /// **'What\'s the desire you\'re bringing into this journey? Tell me a bit about it and I\'ll help you put it into words.'**
  String get aiAssistantGreeting;

  /// Placeholder text in the chat input field on the AI wish-clarification chat screen
  ///
  /// In en, this message translates to:
  /// **'Type your reply…'**
  String get aiAssistantInputHint;

  /// CTA button shown once the assistant has proposed a ready-to-use wish statement
  ///
  /// In en, this message translates to:
  /// **'Use This Wish'**
  String get aiAssistantUseThisWish;

  /// Error message shown in the AI wish-clarification chat when a request fails
  ///
  /// In en, this message translates to:
  /// **'The assistant couldn\'t respond — check your connection and try again.'**
  String get aiAssistantError;

  /// Retry button shown next to the error message in the AI wish-clarification chat
  ///
  /// In en, this message translates to:
  /// **'Try again'**
  String get aiAssistantRetryCta;

  /// Step indicator shown at the top of each of the 5 onboarding screens
  ///
  /// In en, this message translates to:
  /// **'Step {step} of 5'**
  String onboardingStepOfFive(int step);

  /// Heading on the onboarding name screen
  ///
  /// In en, this message translates to:
  /// **'Hello. I\'m glad you\'re here.'**
  String get onboardingNameGreeting;

  /// Subheading on the onboarding name screen
  ///
  /// In en, this message translates to:
  /// **'Before we begin, what should I call you?'**
  String get onboardingNamePrompt;

  /// Placeholder hint text in the name text field on the onboarding name screen
  ///
  /// In en, this message translates to:
  /// **'Your name'**
  String get yourNameHint;

  /// CTA button label to proceed to the next onboarding step; used on name, birthday, contact, and focus screens
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get continueButton;

  /// Heading on the onboarding birthday screen, personalized with the user's name
  ///
  /// In en, this message translates to:
  /// **'When were you born, {name}?'**
  String onboardingBirthdayQuestion(String name);

  /// Subheading on the onboarding birthday screen
  ///
  /// In en, this message translates to:
  /// **'This helps us shape your journey around you.'**
  String get onboardingBirthdaySubtitle;

  /// Placeholder text on the date-picker field before a birthday is chosen
  ///
  /// In en, this message translates to:
  /// **'Select your birthday'**
  String get selectYourBirthday;

  /// Heading on the onboarding contact (email) screen
  ///
  /// In en, this message translates to:
  /// **'Stay connected.'**
  String get onboardingContactHeading;

  /// Subheading on the onboarding contact (email) screen
  ///
  /// In en, this message translates to:
  /// **'Where can we reach you with your journey?'**
  String get onboardingContactSubtitle;

  /// Placeholder hint text in the email text field on the onboarding contact screen
  ///
  /// In en, this message translates to:
  /// **'your@email.com'**
  String get emailHint;

  /// Copy next to the notification opt-in checkbox on the onboarding contact screen
  ///
  /// In en, this message translates to:
  /// **'Allow gentle reminders to keep you on your path.'**
  String get allowGentleReminders;

  /// Heading on the onboarding focus-selection screen
  ///
  /// In en, this message translates to:
  /// **'What\'s most on your mind\nright now?'**
  String get onboardingFocusHeading;

  /// Subheading on the onboarding focus-selection screen
  ///
  /// In en, this message translates to:
  /// **'Choose the areas calling for your attention.'**
  String get onboardingFocusSubtitle;

  /// Selectable focus-area option on the onboarding focus screen
  ///
  /// In en, this message translates to:
  /// **'Relationships'**
  String get focusRelationships;

  /// Selectable focus-area option on the onboarding focus screen
  ///
  /// In en, this message translates to:
  /// **'Career & Purpose'**
  String get focusCareerPurpose;

  /// Selectable focus-area option on the onboarding focus screen
  ///
  /// In en, this message translates to:
  /// **'Health & Energy'**
  String get focusHealthEnergy;

  /// Selectable focus-area option on the onboarding focus screen
  ///
  /// In en, this message translates to:
  /// **'Money & Abundance'**
  String get focusMoneyAbundance;

  /// Selectable focus-area option on the onboarding focus screen
  ///
  /// In en, this message translates to:
  /// **'Inner Peace'**
  String get focusInnerPeace;

  /// First line of copy on the final onboarding ready screen
  ///
  /// In en, this message translates to:
  /// **'Take a breath in.'**
  String get takeABreathIn;

  /// Second line of copy on the final onboarding ready screen, paired with takeABreathIn
  ///
  /// In en, this message translates to:
  /// **'And out.'**
  String get andOut;

  /// Personalized closing message on the final onboarding ready screen
  ///
  /// In en, this message translates to:
  /// **'{name}, your path is about to begin.'**
  String onboardingReadyMessage(String name);

  /// Final CTA button label that completes onboarding and enters the app
  ///
  /// In en, this message translates to:
  /// **'Let\'s Start'**
  String get letsStart;

  /// Small-caps label above the field number on the game board header
  ///
  /// In en, this message translates to:
  /// **'Your Path'**
  String get yourPathLabel;

  /// Game board header showing the current field number out of the total field count
  ///
  /// In en, this message translates to:
  /// **'Field {num} of {total}'**
  String fieldOfTotal(String num, int total);

  /// Tap label on the game board header and heading of the answers bottom sheet
  ///
  /// In en, this message translates to:
  /// **'My Answers'**
  String get myAnswersLabel;

  /// CTA button on the game board that navigates into the current field
  ///
  /// In en, this message translates to:
  /// **'Enter Field {num}  →'**
  String enterFieldCta(String num);

  /// Empty-state message shown when no answers have been recorded yet, on the answers bottom sheet and the success code screen
  ///
  /// In en, this message translates to:
  /// **'Your answers will appear here.'**
  String get answersEmptyState;

  /// Small badge on the field intro screen showing the field number
  ///
  /// In en, this message translates to:
  /// **'FIELD {num}'**
  String fieldBadgeNumber(String num);

  /// CTA button on the field intro screen leading to the field task screen
  ///
  /// In en, this message translates to:
  /// **'Receive My Task  →'**
  String get receiveMyTaskCta;

  /// Small-caps label on the field task screen showing the field number and name
  ///
  /// In en, this message translates to:
  /// **'FIELD {num} · {name}'**
  String fieldNumberAndName(String num, String name);

  /// Placeholder hint text inside the free-text answer field on the field task screen
  ///
  /// In en, this message translates to:
  /// **'Your answer…'**
  String get yourAnswerHint;

  /// Small-caps section label above the fill-in-the-blank task on the field task screen
  ///
  /// In en, this message translates to:
  /// **'Task'**
  String get taskLabel;

  /// CTA button that saves the user's answer on the field task screen
  ///
  /// In en, this message translates to:
  /// **'Save My Answer'**
  String get saveMyAnswerCta;

  /// SnackBar message shown when saving progress fails on the field task screen
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t save your progress — check your device storage.'**
  String get saveProgressError;

  /// Heading on the answer-saved confirmation screen
  ///
  /// In en, this message translates to:
  /// **'Your answer is received.'**
  String get answerReceivedHeading;

  /// Rich text on the answer-saved screen confirming which field was completed; fieldName is rendered in a different color/style within the sentence
  ///
  /// In en, this message translates to:
  /// **'You have walked through {fieldName}. The path continues.'**
  String walkedThroughField(String fieldName);

  /// CTA button on the answer-saved screen leading to the dice roll screen
  ///
  /// In en, this message translates to:
  /// **'Roll for the Next Field'**
  String get rollForNextFieldCta;

  /// Small-caps status label on the mid-game dice screen when the player is on the final turn
  ///
  /// In en, this message translates to:
  /// **'The final turn'**
  String get finalTurnLabel;

  /// Small-caps status label on the mid-game dice screen when the journey is not yet on the final turn
  ///
  /// In en, this message translates to:
  /// **'The path continues'**
  String get pathContinuesLabel;

  /// Small-caps label above the wish text on the mid-game dice screen
  ///
  /// In en, this message translates to:
  /// **'Your desire'**
  String get yourDesireLabel;

  /// Instruction sentence shown on the mid-game dice screen after the final roll result appears
  ///
  /// In en, this message translates to:
  /// **'Your current area of action:'**
  String get currentAreaOfActionColon;

  /// Instruction sentence on the mid-game dice screen when a non-final roll overshoots the last field
  ///
  /// In en, this message translates to:
  /// **'You have reached the final path.'**
  String get reachedFinalPathText;

  /// Instruction sentence on the mid-game dice screen introducing the newly landed field
  ///
  /// In en, this message translates to:
  /// **'You are now on'**
  String get youAreNowOnText;

  /// Instruction sentence on the mid-game dice screen before rolling the final dice
  ///
  /// In en, this message translates to:
  /// **'You have walked all 32 paths. One final turn — to know where you stand now.'**
  String get finalTurnInstructions;

  /// Instruction sentence on the mid-game dice screen before a non-final roll
  ///
  /// In en, this message translates to:
  /// **'You are on Field {num}. Where will the path lead?'**
  String onFieldWhereWillPathLead(String num);

  /// Small-caps label above the result on the mid-game dice screen after the final roll
  ///
  /// In en, this message translates to:
  /// **'From this place'**
  String get fromThisPlaceLabel;

  /// Small-caps label above the result on the mid-game dice screen after a non-final roll
  ///
  /// In en, this message translates to:
  /// **'Arriving · Field {num}'**
  String arrivingAtField(String num);

  /// Text shown while the dice is rolling on the mid-game dice screen, final turn variant
  ///
  /// In en, this message translates to:
  /// **'The wheel turns once more…'**
  String get wheelTurnsOnceMore;

  /// Text shown while the dice is rolling on the mid-game dice screen, non-final variant
  ///
  /// In en, this message translates to:
  /// **'The path turns…'**
  String get pathTurnsEllipsis;

  /// CTA button label while the dice is actively rolling on the mid-game dice screen
  ///
  /// In en, this message translates to:
  /// **'Rolling…'**
  String get rollingEllipsis;

  /// CTA button label to roll the dice on the final turn of the mid-game dice screen
  ///
  /// In en, this message translates to:
  /// **'Roll the Final Dice'**
  String get rollFinalDiceCta;

  /// CTA button label to roll the dice on a non-final turn of the mid-game dice screen
  ///
  /// In en, this message translates to:
  /// **'Roll the Dice'**
  String get rollDiceCta;

  /// CTA button on the mid-game dice screen after the final roll, leading to the success code screen
  ///
  /// In en, this message translates to:
  /// **'Receive My Success Code  →'**
  String get receiveSuccessCodeCta;

  /// CTA button on the mid-game dice screen after a non-final roll, leading into the newly landed field
  ///
  /// In en, this message translates to:
  /// **'Enter {name}  →'**
  String enterFieldNameCta(String name);

  /// Main heading on the success code screen
  ///
  /// In en, this message translates to:
  /// **'Your Journey\nis Complete'**
  String get journeyCompleteHeading;

  /// Subheading on the success code screen
  ///
  /// In en, this message translates to:
  /// **'You have walked all 32 paths.\nThis is your Success Code.'**
  String get journeyCompleteSubtext;

  /// Small-caps label above the wish text on the success code screen
  ///
  /// In en, this message translates to:
  /// **'Your Original Desire'**
  String get yourOriginalDesireLabel;

  /// Small-caps label above the current field name on the success code screen
  ///
  /// In en, this message translates to:
  /// **'Your current area of action'**
  String get currentAreaOfActionLabel;

  /// Section heading above the list of recorded answers on the success code screen
  ///
  /// In en, this message translates to:
  /// **'What you have discovered'**
  String get whatYouHaveDiscoveredLabel;

  /// CTA button label on the success code screen while the PDF is being generated
  ///
  /// In en, this message translates to:
  /// **'Preparing PDF…'**
  String get preparingPdfCta;

  /// CTA button label on the success code screen to export the journey as a PDF
  ///
  /// In en, this message translates to:
  /// **'Save as PDF'**
  String get savePdfCta;

  /// CTA button label on the success code screen to reset progress and start over
  ///
  /// In en, this message translates to:
  /// **'Start a New Journey'**
  String get startNewJourneyCta;

  /// Closing inspirational line on the success code screen
  ///
  /// In en, this message translates to:
  /// **'The golden fish is already on its way.\nYour work is to believe — and to act.'**
  String get goldenFishClosingLine;

  /// Section label above the AI-generated analysis of the player's answers, shown on the success code screen and in the PDF export
  ///
  /// In en, this message translates to:
  /// **'Your Analysis'**
  String get yourAnalysisLabel;

  /// Section label above the AI-generated single next area of focus, shown on the success code screen and in the PDF export
  ///
  /// In en, this message translates to:
  /// **'Your Next Direction'**
  String get yourNextDirectionLabel;

  /// Section label above the AI-generated list of concrete next steps, shown on the success code screen and in the PDF export
  ///
  /// In en, this message translates to:
  /// **'Recommended Next Steps'**
  String get recommendedStepsLabel;

  /// Heading on the Diary tab
  ///
  /// In en, this message translates to:
  /// **'Today\'s Intention'**
  String get todaysIntentionHeading;

  /// Subtitle on the Diary tab
  ///
  /// In en, this message translates to:
  /// **'Your result follows your intention — write it down.'**
  String get todaysIntentionSubtitle;

  /// Hint text inside the Diary tab's text field
  ///
  /// In en, this message translates to:
  /// **'Write your intention for today…'**
  String get diaryIntentionHint;

  /// Button label for saving a diary intention
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get saveButton;

  /// Button label for checking a diary intention against the wish path
  ///
  /// In en, this message translates to:
  /// **'Check'**
  String get checkButton;

  /// SnackBar error shown when saving a diary entry fails
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t save — check your device storage.'**
  String get diarySaveError;

  /// Empty-state text on the Diary tab's history section
  ///
  /// In en, this message translates to:
  /// **'Your intentions will appear here.'**
  String get diaryEmptyState;

  /// Heading on the Journal tab
  ///
  /// In en, this message translates to:
  /// **'Your Journeys'**
  String get yourJourneysHeading;

  /// Subtitle on the Journal tab
  ///
  /// In en, this message translates to:
  /// **'Every wish you have set, and how far it has carried you.'**
  String get journeysSubtitle;

  /// Empty-state text on the Journal tab
  ///
  /// In en, this message translates to:
  /// **'Your journeys will appear here.'**
  String get journeysEmptyState;

  /// Small-caps status label on a journey history card, shown when the journey is complete
  ///
  /// In en, this message translates to:
  /// **'Completed · {date}'**
  String journeyCompletedOn(String date);

  /// Small-caps status label on a journey history card, shown when the journey is not yet complete
  ///
  /// In en, this message translates to:
  /// **'In Progress'**
  String get journeyInProgress;

  /// Progress label on a journey history card showing completed fields out of total fields
  ///
  /// In en, this message translates to:
  /// **'{count} / {total} fields'**
  String journeyFieldsProgress(int count, int total);

  /// Fallback heading on the Profile screen when no name is available
  ///
  /// In en, this message translates to:
  /// **'Your Profile'**
  String get yourProfileFallback;

  /// Message shown on the Profile screen when no profile data has been captured
  ///
  /// In en, this message translates to:
  /// **'We don\'t have your details yet — they\'re captured during onboarding.'**
  String get profileNoDataMessage;

  /// Row label on the Profile screen for the birthday field
  ///
  /// In en, this message translates to:
  /// **'Birthday'**
  String get profileBirthdayLabel;

  /// Row label on the Profile screen for the email field
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get profileEmailLabel;

  /// Row label on the Profile screen for the focus field
  ///
  /// In en, this message translates to:
  /// **'Focus'**
  String get profileFocusLabel;

  /// Subtitle on the Help screen
  ///
  /// In en, this message translates to:
  /// **'Answers to the questions we hear most.'**
  String get helpSubtitle;

  /// FAQ question on the Help screen
  ///
  /// In en, this message translates to:
  /// **'What is leadlife?'**
  String get helpFaqWhatIsLeadlifeQ;

  /// FAQ answer on the Help screen
  ///
  /// In en, this message translates to:
  /// **'A guided journey built around one intention you set — helping you clarify what you want, shift your inner state, and find your direction.'**
  String get helpFaqWhatIsLeadlifeA;

  /// FAQ question on the Help screen
  ///
  /// In en, this message translates to:
  /// **'How does the dice work?'**
  String get helpFaqDiceQ;

  /// FAQ answer on the Help screen
  ///
  /// In en, this message translates to:
  /// **'Roll to see if your intention is ready. If it is, your journey begins. If not, you receive a clue to refine it and try again.'**
  String get helpFaqDiceA;

  /// FAQ question on the Help screen
  ///
  /// In en, this message translates to:
  /// **'What if I get stuck on a field?'**
  String get helpFaqStuckFieldQ;

  /// FAQ answer on the Help screen
  ///
  /// In en, this message translates to:
  /// **'Answer honestly, in a few words. There are no wrong answers — each field simply shifts your focus for a moment.'**
  String get helpFaqStuckFieldA;

  /// FAQ question on the Help screen
  ///
  /// In en, this message translates to:
  /// **'Where do my saved intentions go?'**
  String get helpFaqSavedIntentionsQ;

  /// FAQ answer on the Help screen
  ///
  /// In en, this message translates to:
  /// **'Anything you save in the Diary tab stays in its history, right there on your device.'**
  String get helpFaqSavedIntentionsA;

  /// FAQ question on the Help screen
  ///
  /// In en, this message translates to:
  /// **'Can I change my intention later?'**
  String get helpFaqChangeIntentionQ;

  /// FAQ answer on the Help screen
  ///
  /// In en, this message translates to:
  /// **'Yes — write a new one any time from the Diary tab and check it against your path.'**
  String get helpFaqChangeIntentionA;

  /// Heading on the About screen
  ///
  /// In en, this message translates to:
  /// **'About the System'**
  String get aboutHeading;

  /// Intro paragraph on the About screen
  ///
  /// In en, this message translates to:
  /// **'leadlife is built around 32 fields, arranged in one continuous path.'**
  String get aboutIntro;

  /// Section heading on the About screen
  ///
  /// In en, this message translates to:
  /// **'10 Levels of Reality'**
  String get tenLevelsHeading;

  /// Section paragraph on the About screen, under '10 Levels of Reality'
  ///
  /// In en, this message translates to:
  /// **'The layers your intention moves through — from the concrete circumstances of your life to the deeper states behind them.'**
  String get tenLevelsBody;

  /// Section heading on the About screen
  ///
  /// In en, this message translates to:
  /// **'22 Life Strategies'**
  String get lifeStrategiesHeading;

  /// Section paragraph on the About screen, under '22 Life Strategies'
  ///
  /// In en, this message translates to:
  /// **'Different ways of thinking, choosing, feeling and acting. You don\'t need to study them — you simply move through the ones your path leads you to.'**
  String get lifeStrategiesBody;

  /// Section heading on the About screen
  ///
  /// In en, this message translates to:
  /// **'Your Success Code'**
  String get successCodeHeading;

  /// Section paragraph on the About screen, under 'Your Success Code'
  ///
  /// In en, this message translates to:
  /// **'At the end of the journey, your own decisions and insights are brought together into a personal code — not a universal answer, but a map back to your desire.'**
  String get successCodeBody;

  /// Small-caps label at the top of the help modal shown from the Home tab
  ///
  /// In en, this message translates to:
  /// **'An example'**
  String get helpModalExampleLabel;

  /// Heading inside the help modal shown from the Home tab
  ///
  /// In en, this message translates to:
  /// **'How a desire is named'**
  String get helpModalNamingHeading;

  /// Label above the correctly-phrased example wish in the help modal
  ///
  /// In en, this message translates to:
  /// **'YES — PRESENT PERFECT'**
  String get helpModalYesLabel;

  /// Label above the incorrectly-phrased example wish in the help modal
  ///
  /// In en, this message translates to:
  /// **'NOT YET — FUTURE TENSE'**
  String get helpModalNoLabel;

  /// Example of a correctly-phrased (present perfect) wish in the help modal
  ///
  /// In en, this message translates to:
  /// **'\"I have built a life where my work and my truth are the same thing.\"'**
  String get helpModalGoodExample;

  /// Example of an incorrectly-phrased (future tense) wish in the help modal
  ///
  /// In en, this message translates to:
  /// **'\"I want to build a life where…\"'**
  String get helpModalBadExample;

  /// Closing two-line reminder text at the bottom of the help modal
  ///
  /// In en, this message translates to:
  /// **'Speak as if it has already come.\nThe path responds to certainty.'**
  String get helpModalClosingText;

  /// CTA button label to dismiss the help modal
  ///
  /// In en, this message translates to:
  /// **'I Understand'**
  String get helpModalUnderstandCta;

  /// Step indicator on the dice roll screen
  ///
  /// In en, this message translates to:
  /// **'Step 2 of 3'**
  String get diceStepTwoOfThree;

  /// Heading on the dice roll screen
  ///
  /// In en, this message translates to:
  /// **'Awakening the Path'**
  String get diceScreenTitle;

  /// Small-caps label above the echoed wish on the dice roll screen
  ///
  /// In en, this message translates to:
  /// **'Your intention'**
  String get diceYourIntentionLabel;

  /// Title of the dice clue shown when the player rolls 1
  ///
  /// In en, this message translates to:
  /// **'Yes'**
  String get diceClueYesTitle;

  /// Body text of the dice clue shown when the player rolls 1
  ///
  /// In en, this message translates to:
  /// **'Your desire is ready. The path can begin.'**
  String get diceClueYesText;

  /// Title of the dice clue shown when the player rolls 2
  ///
  /// In en, this message translates to:
  /// **'Connections'**
  String get diceClueConnectionsTitle;

  /// Body text of the dice clue shown when the player rolls 2
  ///
  /// In en, this message translates to:
  /// **'Who is connected to this desire? Trust your intuition. Is there a person, relationship, or collaboration that belongs here? Add what feels right.'**
  String get diceClueConnectionsText;

  /// Title of the dice clue shown when the player rolls 3
  ///
  /// In en, this message translates to:
  /// **'Clarity'**
  String get diceClueClarityTitle;

  /// Body text of the dice clue shown when the player rolls 3
  ///
  /// In en, this message translates to:
  /// **'Make your desire more specific. Add details so it\'s clear exactly what you want.'**
  String get diceClueClarityText;

  /// Title of the dice clue shown when the player rolls 4
  ///
  /// In en, this message translates to:
  /// **'Expansion'**
  String get diceClueExpansionTitle;

  /// Body text of the dice clue shown when the player rolls 4
  ///
  /// In en, this message translates to:
  /// **'Think bigger. Expand your horizon. How could this desire become even more meaningful or inspiring?'**
  String get diceClueExpansionText;

  /// Title of the dice clue shown when the player rolls 5
  ///
  /// In en, this message translates to:
  /// **'Freedom'**
  String get diceClueFreedomTitle;

  /// Body text of the dice clue shown when the player rolls 5
  ///
  /// In en, this message translates to:
  /// **'Does your desire contain any hidden limitations? Rephrase it so it gives you freedom, possibilities, and strength instead of restrictions.'**
  String get diceClueFreedomText;

  /// Title of the dice clue shown when the player rolls 6
  ///
  /// In en, this message translates to:
  /// **'Meaning'**
  String get diceClueMeaningTitle;

  /// Body text of the dice clue shown when the player rolls 6
  ///
  /// In en, this message translates to:
  /// **'What makes this desire truly important to you? Add your personal values and deeper meaning.'**
  String get diceClueMeaningText;

  /// Title of the dice clue shown when the player rolls 7
  ///
  /// In en, this message translates to:
  /// **'Feelings'**
  String get diceClueFeelingsTitle;

  /// Body text of the dice clue shown when the player rolls 7
  ///
  /// In en, this message translates to:
  /// **'How do you want to feel when this desire becomes reality? Add those emotions to your desire—they matter.'**
  String get diceClueFeelingsText;

  /// Title of the dice clue shown when the player rolls 8
  ///
  /// In en, this message translates to:
  /// **'Expression'**
  String get diceClueExpressionTitle;

  /// Body text of the dice clue shown when the player rolls 8
  ///
  /// In en, this message translates to:
  /// **'Rewrite your desire. Choose words that feel lighter, clearer, and more natural. Sometimes a different wording changes everything.'**
  String get diceClueExpressionText;

  /// Message shown on the dice roll screen while the dice is rolling
  ///
  /// In en, this message translates to:
  /// **'The universe listens…'**
  String get diceUniverseListens;

  /// CTA button label while the dice animation is in progress on the dice roll screen
  ///
  /// In en, this message translates to:
  /// **'Rolling…'**
  String get diceRollingLabel;

  /// CTA button label for the first dice roll
  ///
  /// In en, this message translates to:
  /// **'Roll'**
  String get diceRollLabel;

  /// CTA button label to roll the dice again, used both for a non-1 result and as the primary CTA on subsequent rolls
  ///
  /// In en, this message translates to:
  /// **'Roll Again'**
  String get diceRollAgainLabel;

  /// CTA button label shown after rolling a 1, leading to the paywall screen
  ///
  /// In en, this message translates to:
  /// **'Enter the First Field  →'**
  String get diceEnterFirstFieldCta;

  /// Link/button text letting the player go back and edit their wish after a non-1 dice roll
  ///
  /// In en, this message translates to:
  /// **'Refine my desire'**
  String get diceRefineMyDesire;

  /// First line of the headline on the paywall screen
  ///
  /// In en, this message translates to:
  /// **'Your desire said yes.'**
  String get paywallHeadlineLine1;

  /// Second line of the headline on the paywall screen
  ///
  /// In en, this message translates to:
  /// **'Your path is ready.'**
  String get paywallHeadlineLine2;

  /// Subheading below the headline on the paywall screen
  ///
  /// In en, this message translates to:
  /// **'Choose how deep you want to go.'**
  String get paywallSubheading;

  /// Link at the bottom of a tariff card on the paywall screen
  ///
  /// In en, this message translates to:
  /// **'See details'**
  String get paywallSeeDetails;

  /// CTA button on the tariff detail screen to select the plan
  ///
  /// In en, this message translates to:
  /// **'Choose This Path'**
  String get paywallChooseThisPathCta;

  /// Headline on the optional account-linking screen shown right after choosing a paid tariff
  ///
  /// In en, this message translates to:
  /// **'Protect Your Journey'**
  String get accountLinkHeadline;

  /// Subtitle explaining why linking an account is offered, on the optional account-linking screen
  ///
  /// In en, this message translates to:
  /// **'Create an account so your journey and purchase follow you, even if you switch phones.'**
  String get accountLinkSubtitle;

  /// Button label to sign in / link an account with Apple
  ///
  /// In en, this message translates to:
  /// **'Continue with Apple'**
  String get continueWithApple;

  /// Button label to sign in / link an account with Google
  ///
  /// In en, this message translates to:
  /// **'Continue with Google'**
  String get continueWithGoogle;

  /// Button label to reveal the email/password form for linking an account
  ///
  /// In en, this message translates to:
  /// **'Continue with Email'**
  String get continueWithEmail;

  /// Placeholder hint text in the password field on the optional account-linking screen
  ///
  /// In en, this message translates to:
  /// **'Create a password'**
  String get accountLinkPasswordHint;

  /// CTA button to submit the email/password form on the optional account-linking screen
  ///
  /// In en, this message translates to:
  /// **'Create Account'**
  String get createAccountCta;

  /// Small-print link to skip account linking and continue without creating an account
  ///
  /// In en, this message translates to:
  /// **'Maybe later'**
  String get accountLinkSkip;

  /// Generic error message shown when account linking fails
  ///
  /// In en, this message translates to:
  /// **'Something went wrong. Please try again.'**
  String get accountLinkErrorGeneric;

  /// Title of the one-time-purchase tariff on the paywall screen
  ///
  /// In en, this message translates to:
  /// **'One Journey'**
  String get paywallTariffOneJourneyTitle;

  /// Tagline of the one-time-purchase tariff on the paywall screen
  ///
  /// In en, this message translates to:
  /// **'One Desire, One Direction'**
  String get paywallTariffOneJourneyTagline;

  /// Feature bullet for the One Journey tariff
  ///
  /// In en, this message translates to:
  /// **'Questionnaires to end practices'**
  String get paywallFeatureQuestionnairesToEndPractices;

  /// Feature bullet for the One Journey tariff
  ///
  /// In en, this message translates to:
  /// **'Final direction'**
  String get paywallFeatureFinalDirection;

  /// Feature bullet shared by both paywall tariffs
  ///
  /// In en, this message translates to:
  /// **'Personal journal'**
  String get paywallFeaturePersonalJournal;

  /// Title of the subscription tariff on the paywall screen
  ///
  /// In en, this message translates to:
  /// **'leadlife Pass'**
  String get paywallTariffLeadlifePassTitle;

  /// Tagline of the subscription tariff on the paywall screen
  ///
  /// In en, this message translates to:
  /// **'Go deeper anytime'**
  String get paywallTariffLeadlifePassTagline;

  /// Feature bullet for the leadlife Pass tariff
  ///
  /// In en, this message translates to:
  /// **'Unlimited journeys'**
  String get paywallFeatureUnlimitedJourneys;

  /// Feature bullet for the leadlife Pass tariff
  ///
  /// In en, this message translates to:
  /// **'Full journey history'**
  String get paywallFeatureFullJourneyHistory;

  /// Feature bullet for the leadlife Pass tariff
  ///
  /// In en, this message translates to:
  /// **'New practices'**
  String get paywallFeatureNewPractices;

  /// Step indicator on the awakened screen
  ///
  /// In en, this message translates to:
  /// **'Step 3 of 3'**
  String get awakenedStepThreeOfThree;

  /// Small-caps label on the awakened screen
  ///
  /// In en, this message translates to:
  /// **'Field 01 awaits'**
  String get awakenedFieldOneAwaits;

  /// Main heading on the awakened screen
  ///
  /// In en, this message translates to:
  /// **'Your journey\nhas begun.'**
  String get awakenedJourneyBegunTitle;

  /// Body text on the awakened screen
  ///
  /// In en, this message translates to:
  /// **'The path will respond to your intention.\nWalk it with patience.'**
  String get awakenedPathRespondBody;

  /// Small-caps label above the echoed wish on the awakened screen
  ///
  /// In en, this message translates to:
  /// **'Held in light'**
  String get awakenedHeldInLight;

  /// CTA button on the awakened screen leading into the game board
  ///
  /// In en, this message translates to:
  /// **'Enter Field 01  →'**
  String get awakenedEnterFieldOneCta;

  /// Step indicator on the How It Works onboarding slides
  ///
  /// In en, this message translates to:
  /// **'Step {step} of {total}'**
  String howItWorksStepOfTotal(int step, int total);

  /// CTA button label on the final How It Works slide
  ///
  /// In en, this message translates to:
  /// **'Begin your journey'**
  String get howItWorksBeginJourneyCta;

  /// CTA button label on non-final How It Works slides
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get howItWorksContinueCta;

  /// Title of slide 1 of the How It Works onboarding
  ///
  /// In en, this message translates to:
  /// **'What is the leadlife journey?'**
  String get howItWorksSlide1Title;

  /// Paragraph on slide 1 of the How It Works onboarding
  ///
  /// In en, this message translates to:
  /// **'A guided journey designed to help you clarify what you truly want, shift your inner state, and find your direction.'**
  String get howItWorksSlide1Para;

  /// Title of slide 2 of the How It Works onboarding
  ///
  /// In en, this message translates to:
  /// **'Start with one desire'**
  String get howItWorksSlide2Title;

  /// First short line on slide 2 of the How It Works onboarding
  ///
  /// In en, this message translates to:
  /// **'Write down what you want as if it is already true.'**
  String get howItWorksSlide2Line1;

  /// Second short line on slide 2 of the How It Works onboarding
  ///
  /// In en, this message translates to:
  /// **'Focus on it.'**
  String get howItWorksSlide2Line2;

  /// Third short line on slide 2 of the How It Works onboarding
  ///
  /// In en, this message translates to:
  /// **'Then roll the dice.'**
  String get howItWorksSlide2Line3;

  /// Paragraph on slide 2 of the How It Works onboarding
  ///
  /// In en, this message translates to:
  /// **'In leadlife, your journey begins by clarifying the intention you are ready to work with right now.'**
  String get howItWorksSlide2Para;

  /// Title of slide 3 of the How It Works onboarding
  ///
  /// In en, this message translates to:
  /// **'Let the dice guide you'**
  String get howItWorksSlide3Title;

  /// First short line on slide 3 of the How It Works onboarding
  ///
  /// In en, this message translates to:
  /// **'If you roll 1, your desire is ready.'**
  String get howItWorksSlide3Line1;

  /// Second short line on slide 3 of the How It Works onboarding
  ///
  /// In en, this message translates to:
  /// **'Your journey begins.'**
  String get howItWorksSlide3Line2;

  /// First paragraph on slide 3 of the How It Works onboarding
  ///
  /// In en, this message translates to:
  /// **'If another number appears, you\'ll receive a clue to help you clarify, rewrite, or reconsider your desire.'**
  String get howItWorksSlide3Para1;

  /// Second paragraph on slide 3 of the How It Works onboarding
  ///
  /// In en, this message translates to:
  /// **'You can refine it — or choose a completely different one.'**
  String get howItWorksSlide3Para2;

  /// Title of slide 4 of the How It Works onboarding
  ///
  /// In en, this message translates to:
  /// **'Then your journey begins'**
  String get howItWorksSlide4Title;

  /// First paragraph on slide 4 of the How It Works onboarding
  ///
  /// In en, this message translates to:
  /// **'Choose how you want to interact with leadlife and start moving through your unique path.'**
  String get howItWorksSlide4Para1;

  /// Short line introducing the field breakdown on slide 4 of the How It Works onboarding
  ///
  /// In en, this message translates to:
  /// **'The system is built around 32 fields:'**
  String get howItWorksSlide4Line;

  /// First short line of the field breakdown on slide 4 of the How It Works onboarding
  ///
  /// In en, this message translates to:
  /// **'10 levels of reality.'**
  String get howItWorksSlide4Line1;

  /// Second short line of the field breakdown on slide 4 of the How It Works onboarding
  ///
  /// In en, this message translates to:
  /// **'22 life strategies.'**
  String get howItWorksSlide4Line2;

  /// Second paragraph on slide 4 of the How It Works onboarding
  ///
  /// In en, this message translates to:
  /// **'Your path through them is uniquely yours.'**
  String get howItWorksSlide4Para2;

  /// Title of slide 5 of the How It Works onboarding
  ///
  /// In en, this message translates to:
  /// **'Move through your path'**
  String get howItWorksSlide5Title;

  /// First short line on slide 5 of the How It Works onboarding
  ///
  /// In en, this message translates to:
  /// **'Roll the dice.'**
  String get howItWorksSlide5Line1;

  /// Second short line on slide 5 of the How It Works onboarding
  ///
  /// In en, this message translates to:
  /// **'Enter a field.'**
  String get howItWorksSlide5Line2;

  /// Third short line on slide 5 of the How It Works onboarding
  ///
  /// In en, this message translates to:
  /// **'Answer one question or complete one simple task.'**
  String get howItWorksSlide5Line3;

  /// First paragraph on slide 5 of the How It Works onboarding
  ///
  /// In en, this message translates to:
  /// **'Most interactions take less than a minute.'**
  String get howItWorksSlide5Para1;

  /// Second paragraph on slide 5 of the How It Works onboarding
  ///
  /// In en, this message translates to:
  /// **'Each field shifts your focus and helps you explore your desire from a different perspective.'**
  String get howItWorksSlide5Para2;

  /// Title of slide 6 of the How It Works onboarding
  ///
  /// In en, this message translates to:
  /// **'22 strategies. Different ways of moving.'**
  String get howItWorksSlide6Title;

  /// First paragraph on slide 6 of the How It Works onboarding
  ///
  /// In en, this message translates to:
  /// **'You move through different life strategies — ways of thinking, choosing, feeling and acting.'**
  String get howItWorksSlide6Para1;

  /// Second paragraph on slide 6 of the How It Works onboarding
  ///
  /// In en, this message translates to:
  /// **'You don\'t need to study the system. Just follow your path.'**
  String get howItWorksSlide6Para2;

  /// Text before the menu icon in the rich-text sentence on slide 6 of the How It Works onboarding
  ///
  /// In en, this message translates to:
  /// **'Want to understand the structure behind it? Explore '**
  String get howItWorksSlide6RichTextBefore;

  /// Text after the menu icon in the rich-text sentence on slide 6 of the How It Works onboarding
  ///
  /// In en, this message translates to:
  /// **' About the system in the menu.'**
  String get howItWorksSlide6RichTextAfter;

  /// Title of slide 7 of the How It Works onboarding
  ///
  /// In en, this message translates to:
  /// **'Your success code'**
  String get howItWorksSlide7Title;

  /// First paragraph on slide 7 of the How It Works onboarding
  ///
  /// In en, this message translates to:
  /// **'At the end of your journey, your answers come together.'**
  String get howItWorksSlide7Para1;

  /// First short line on slide 7 of the How It Works onboarding
  ///
  /// In en, this message translates to:
  /// **'Your decisions.'**
  String get howItWorksSlide7Line1;

  /// Second short line on slide 7 of the How It Works onboarding
  ///
  /// In en, this message translates to:
  /// **'Your insights.'**
  String get howItWorksSlide7Line2;

  /// Third short line on slide 7 of the How It Works onboarding
  ///
  /// In en, this message translates to:
  /// **'Your direction.'**
  String get howItWorksSlide7Line3;

  /// Second paragraph on slide 7 of the How It Works onboarding
  ///
  /// In en, this message translates to:
  /// **'leadlife turns them into your personal success code — a map back to your desire.'**
  String get howItWorksSlide7Para2;

  /// Third paragraph on slide 7 of the How It Works onboarding
  ///
  /// In en, this message translates to:
  /// **'Not a universal answer.'**
  String get howItWorksSlide7Para3;

  /// Fourth paragraph on slide 7 of the How It Works onboarding
  ///
  /// In en, this message translates to:
  /// **'Your path, built from your own answers.'**
  String get howItWorksSlide7Para4;

  /// Field 1 (Light) — name text
  ///
  /// In en, this message translates to:
  /// **'Light'**
  String get field01Name;

  /// Field 1 (Light) — subtitle text
  ///
  /// In en, this message translates to:
  /// **'Desire'**
  String get field01Subtitle;

  /// Field 1 (Light) — intro text
  ///
  /// In en, this message translates to:
  /// **'Every journey begins with a desire.\n\nYour desire matters because it points toward something important for your growth.'**
  String get field01Intro;

  /// Field 1 (Light) — task text
  ///
  /// In en, this message translates to:
  /// **'What desire are you bringing into this journey?'**
  String get field01Task;

  /// Field 2 (Connection) — name text
  ///
  /// In en, this message translates to:
  /// **'Connection'**
  String get field02Name;

  /// Field 2 (Connection) — subtitle text
  ///
  /// In en, this message translates to:
  /// **'Initiative'**
  String get field02Subtitle;

  /// Field 2 (Connection) — intro text
  ///
  /// In en, this message translates to:
  /// **'Every idea starts as a spark.\n\nGrowth begins when you share it with the world.\nEvery desire has an origin.\nRemember where this dream first appeared in your life.'**
  String get field02Intro;

  /// Field 2 (Connection) — task text
  ///
  /// In en, this message translates to:
  /// **'When did this desire first appear in your life?\n\nWho could you share it with today that would support its realization?'**
  String get field02Task;

  /// Field 3 (Form) — name text
  ///
  /// In en, this message translates to:
  /// **'Form'**
  String get field03Name;

  /// Field 3 (Form) — subtitle text
  ///
  /// In en, this message translates to:
  /// **'Vision'**
  String get field03Subtitle;

  /// Field 3 (Form) — intro text
  ///
  /// In en, this message translates to:
  /// **'A desire becomes real when it has a clear shape.\nImagine what success looks like for you.'**
  String get field03Intro;

  /// Field 3 (Form) — task text
  ///
  /// In en, this message translates to:
  /// **'What does success look like?'**
  String get field03Task;

  /// Field 4 (Scale) — name text
  ///
  /// In en, this message translates to:
  /// **'Scale'**
  String get field04Name;

  /// Field 4 (Scale) — subtitle text
  ///
  /// In en, this message translates to:
  /// **'Contribution'**
  String get field04Subtitle;

  /// Field 4 (Scale) — intro text
  ///
  /// In en, this message translates to:
  /// **'Every goal creates an impact.\nConsider what value your desire brings to others.'**
  String get field04Intro;

  /// Field 4 (Scale) — task text
  ///
  /// In en, this message translates to:
  /// **'Who benefits when you achieve this?'**
  String get field04Task;

  /// Field 5 (Limitation) — name text
  ///
  /// In en, this message translates to:
  /// **'Limitation'**
  String get field05Name;

  /// Field 5 (Limitation) — subtitle text
  ///
  /// In en, this message translates to:
  /// **'Resilience'**
  String get field05Subtitle;

  /// Field 5 (Limitation) — intro text
  ///
  /// In en, this message translates to:
  /// **'Limitations are a natural part of every journey.\n\nThey help you develop the strength needed to reach your goal.'**
  String get field05Intro;

  /// Field 5 (Limitation) — task text
  ///
  /// In en, this message translates to:
  /// **'What limitations do you currently have (physical, emotional, financial, social, or other)? How are they helping you grow?'**
  String get field05Task;

  /// Field 6 (Values) — name text
  ///
  /// In en, this message translates to:
  /// **'Values'**
  String get field06Name;

  /// Field 6 (Values) — subtitle text
  ///
  /// In en, this message translates to:
  /// **'Authenticity'**
  String get field06Subtitle;

  /// Field 6 (Values) — intro text
  ///
  /// In en, this message translates to:
  /// **'Your values guide the choices you make.\n\nThe strongest desires are often connected to what has always mattered to you.'**
  String get field06Intro;

  /// Field 6 (Values) — task text
  ///
  /// In en, this message translates to:
  /// **'What has always been important to you?\n\nDoes this desire reflect those values?\n\nWhat qualities came naturally to you as a child?\n\nWhich of them are still alive in you today?\n\nHow could these qualities help you achieve your desire?'**
  String get field06Task;

  /// Field 7 (Feelings) — name text
  ///
  /// In en, this message translates to:
  /// **'Feelings'**
  String get field07Name;

  /// Field 7 (Feelings) — subtitle text
  ///
  /// In en, this message translates to:
  /// **'Emotional Awareness'**
  String get field07Subtitle;

  /// Field 7 (Feelings) — intro text
  ///
  /// In en, this message translates to:
  /// **'Feelings are signals, not obstacles.\n\nThey can show you what supports your desire and what needs your attention.'**
  String get field07Intro;

  /// Field 7 (Feelings) — task text
  ///
  /// In en, this message translates to:
  /// **'What emotions do you experience most often? How do they affect your desire?'**
  String get field07Task;

  /// Field 8 (Thinking) — name text
  ///
  /// In en, this message translates to:
  /// **'Thinking'**
  String get field08Name;

  /// Field 8 (Thinking) — subtitle text
  ///
  /// In en, this message translates to:
  /// **'Clarity'**
  String get field08Subtitle;

  /// Field 8 (Thinking) — intro text
  ///
  /// In en, this message translates to:
  /// **'Every desire is supported by some beliefs and limited by others.\n\nThe more clearly you see them, the more freedom you have to choose your path.'**
  String get field08Intro;

  /// Field 8 (Thinking) — task text
  ///
  /// In en, this message translates to:
  /// **'What beliefs support you, and what beliefs hold you back?'**
  String get field08Task;

  /// Field 9 (Subconsciousness) — name text
  ///
  /// In en, this message translates to:
  /// **'Subconsciousness'**
  String get field09Name;

  /// Field 9 (Subconsciousness) — subtitle text
  ///
  /// In en, this message translates to:
  /// **'Imagination'**
  String get field09Subtitle;

  /// Field 9 (Subconsciousness) — intro text
  ///
  /// In en, this message translates to:
  /// **'Your subconscious holds the blueprint of your desired life.'**
  String get field09Intro;

  /// Field 9 (Subconsciousness) — task text
  ///
  /// In en, this message translates to:
  /// **'If your desire were already real, what would your life look like? Describe it.'**
  String get field09Task;

  /// Field 10 (Reality) — name text
  ///
  /// In en, this message translates to:
  /// **'Reality'**
  String get field10Name;

  /// Field 10 (Reality) — subtitle text
  ///
  /// In en, this message translates to:
  /// **'Action'**
  String get field10Subtitle;

  /// Field 10 (Reality) — intro text
  ///
  /// In en, this message translates to:
  /// **'Reality is shaped by the actions you take.'**
  String get field10Intro;

  /// Field 10 (Reality) — task text
  ///
  /// In en, this message translates to:
  /// **'Write 10 actions you can take today to move closer to your goal.'**
  String get field10Task;

  /// Field 11 (Possibility) — name text
  ///
  /// In en, this message translates to:
  /// **'Possibility'**
  String get field11Name;

  /// Field 11 (Possibility) — subtitle text
  ///
  /// In en, this message translates to:
  /// **'Trust'**
  String get field11Subtitle;

  /// Field 11 (Possibility) — intro text
  ///
  /// In en, this message translates to:
  /// **'Within every desire lies the possibility of its realization.'**
  String get field11Intro;

  /// Field 11 (Possibility) — task text
  ///
  /// In en, this message translates to:
  /// **'Do you truly believe your desire is possible? If yes, can you trust the process?'**
  String get field11Task;

  /// Field 12 (Will) — name text
  ///
  /// In en, this message translates to:
  /// **'Will'**
  String get field12Name;

  /// Field 12 (Will) — subtitle text
  ///
  /// In en, this message translates to:
  /// **'Resourcefulness'**
  String get field12Subtitle;

  /// Field 12 (Will) — intro text
  ///
  /// In en, this message translates to:
  /// **'Your will is your most powerful resource.'**
  String get field12Intro;

  /// Field 12 (Will) — task text
  ///
  /// In en, this message translates to:
  /// **'What resources do you already have to reach your wish?'**
  String get field12Task;

  /// Field 13 (Intuition) — name text
  ///
  /// In en, this message translates to:
  /// **'Intuition'**
  String get field13Name;

  /// Field 13 (Intuition) — subtitle text
  ///
  /// In en, this message translates to:
  /// **'Inner silence'**
  String get field13Subtitle;

  /// Field 13 (Intuition) — intro text
  ///
  /// In en, this message translates to:
  /// **'Your inner voice always knows the way.'**
  String get field13Intro;

  /// Field 13 (Intuition) — task text
  ///
  /// In en, this message translates to:
  /// **'What is your inner voice saying about this desire?'**
  String get field13Task;

  /// Field 14 (Creation) — name text
  ///
  /// In en, this message translates to:
  /// **'Creation'**
  String get field14Name;

  /// Field 14 (Creation) — subtitle text
  ///
  /// In en, this message translates to:
  /// **'Creativity'**
  String get field14Subtitle;

  /// Field 14 (Creation) — intro text
  ///
  /// In en, this message translates to:
  /// **'Every reality begins as a possibility.\n\nCreation is the bridge between an idea and its expression.\n\nCreation turns possibilities into reality.\n\nEvery day you create something through your actions, energy, and attention.'**
  String get field14Intro;

  /// Field 14 (Creation) — task text
  ///
  /// In en, this message translates to:
  /// **'How can this desire take its first form?\n\nWhat are you already creating in your life?'**
  String get field14Task;

  /// Field 15 (Power) — name text
  ///
  /// In en, this message translates to:
  /// **'Power'**
  String get field15Name;

  /// Field 15 (Power) — subtitle text
  ///
  /// In en, this message translates to:
  /// **'Management'**
  String get field15Subtitle;

  /// Field 15 (Power) — intro text
  ///
  /// In en, this message translates to:
  /// **'Power begins with structure.\n\nYou can only manage what has structure.\n\nWhat you can manage, you can improve.'**
  String get field15Intro;

  /// Field 15 (Power) — task text
  ///
  /// In en, this message translates to:
  /// **'What do you need to manage to move closer to your goal?\n\nI create structure in __________ to build __________.'**
  String get field15Task;

  /// Field 16 (Knowledge) — name text
  ///
  /// In en, this message translates to:
  /// **'Knowledge'**
  String get field16Name;

  /// Field 16 (Knowledge) — subtitle text
  ///
  /// In en, this message translates to:
  /// **'Experience'**
  String get field16Subtitle;

  /// Field 16 (Knowledge) — intro text
  ///
  /// In en, this message translates to:
  /// **'Knowledge becomes valuable when you use it.\n\nReal wisdom appears through action.\n\nThe right knowledge can show you the next step forward.'**
  String get field16Intro;

  /// Field 16 (Knowledge) — task text
  ///
  /// In en, this message translates to:
  /// **'Do you already have enough knowledge to achieve your goal?\n\nIf yes, what knowledge will help you?\n\nIf not, where can you find the knowledge you need?\n\nThe knowledge that will help me move forward is __________.\n\nI can gain new knowledge from __________.'**
  String get field16Task;

  /// Field 17 (Choice) — name text
  ///
  /// In en, this message translates to:
  /// **'Choice'**
  String get field17Name;

  /// Field 17 (Choice) — subtitle text
  ///
  /// In en, this message translates to:
  /// **'Self-Trust'**
  String get field17Subtitle;

  /// Field 17 (Choice) — intro text
  ///
  /// In en, this message translates to:
  /// **'Every choice shapes who you become.\n\nWhen you choose what is truly yours, you move forward with confidence.\n\nYour heart already knows what feels true.\n\nTrust yourself enough to choose it.'**
  String get field17Intro;

  /// Field 17 (Choice) — task text
  ///
  /// In en, this message translates to:
  /// **'What feels truly right for you?\n\nI choose __________ because it is mine.'**
  String get field17Task;

  /// Field 18 (Movement) — name text
  ///
  /// In en, this message translates to:
  /// **'Movement'**
  String get field18Name;

  /// Field 18 (Movement) — subtitle text
  ///
  /// In en, this message translates to:
  /// **'Discipline'**
  String get field18Subtitle;

  /// Field 18 (Movement) — intro text
  ///
  /// In en, this message translates to:
  /// **'Your desire requires discipline from you.\nThrough small, consistent steps, you can move closer to what you want.'**
  String get field18Intro;

  /// Field 18 (Movement) — task text
  ///
  /// In en, this message translates to:
  /// **'What action are you willing to do with discipline to reach your desire?\n\nFor how long are you willing to keep doing it?\n\nI will do __________ regularly for __________ to move closer to my desire.'**
  String get field18Task;

  /// Field 19 (Truth) — name text
  ///
  /// In en, this message translates to:
  /// **'Truth'**
  String get field19Name;

  /// Field 19 (Truth) — subtitle text
  ///
  /// In en, this message translates to:
  /// **'Honesty'**
  String get field19Subtitle;

  /// Field 19 (Truth) — intro text
  ///
  /// In en, this message translates to:
  /// **'Progress begins with seeing things as they are.\n\nTruth creates the foundation for change.'**
  String get field19Intro;

  /// Field 19 (Truth) — task text
  ///
  /// In en, this message translates to:
  /// **'What is true for you right now?\n\nMy truth right now is __________.\n\nTo move closer to my desire, I intend to improve __________.'**
  String get field19Task;

  /// Field 20 (Purpose) — name text
  ///
  /// In en, this message translates to:
  /// **'Purpose'**
  String get field20Name;

  /// Field 20 (Purpose) — subtitle text
  ///
  /// In en, this message translates to:
  /// **'Courage'**
  String get field20Subtitle;

  /// Field 20 (Purpose) — intro text
  ///
  /// In en, this message translates to:
  /// **'A meaningful goal benefits more than just yourself.\n\nWhen your desire serves a greater purpose, it becomes stronger.\n\nIt takes courage to follow your own path.\n\nThe more meaningful your goal is, the more people it can inspire and help.'**
  String get field20Intro;

  /// Field 20 (Purpose) — task text
  ///
  /// In en, this message translates to:
  /// **'How could your desire benefit others?\n\nWrite 10 ways your desire could help other people.'**
  String get field20Task;

  /// Field 21 (Change) — name text
  ///
  /// In en, this message translates to:
  /// **'Change'**
  String get field21Name;

  /// Field 21 (Change) — subtitle text
  ///
  /// In en, this message translates to:
  /// **'Flexibility'**
  String get field21Subtitle;

  /// Field 21 (Change) — intro text
  ///
  /// In en, this message translates to:
  /// **'Life keeps moving.\n\nYou cannot control every change, but you can learn to move with it.'**
  String get field21Intro;

  /// Field 21 (Change) — task text
  ///
  /// In en, this message translates to:
  /// **'What is beginning to unfold in your life right now?\n\nI let go of control over __________ and allow life to move.\n\nI notice that __________ is beginning to unfold in my life.\n\nI start doing __________ to grow __________.'**
  String get field21Task;

  /// Field 22 (Balance) — name text
  ///
  /// In en, this message translates to:
  /// **'Balance'**
  String get field22Name;

  /// Field 22 (Balance) — subtitle text
  ///
  /// In en, this message translates to:
  /// **'Self-Mastery'**
  String get field22Subtitle;

  /// Field 22 (Balance) — intro text
  ///
  /// In en, this message translates to:
  /// **'True strength is not force.\n\nIt is the ability to balance power and gentleness.'**
  String get field22Intro;

  /// Field 22 (Balance) — task text
  ///
  /// In en, this message translates to:
  /// **'Where in your life could you stop forcing and start responding with balance?\n\nWhere could you use less force and more balance?\n\nMy strength is that I can __________ without forcing, controlling, or fighting.'**
  String get field22Task;

  /// Field 23 (Observe) — name text
  ///
  /// In en, this message translates to:
  /// **'Observe'**
  String get field23Name;

  /// Field 23 (Observe) — subtitle text
  ///
  /// In en, this message translates to:
  /// **'Awareness'**
  String get field23Subtitle;

  /// Field 23 (Observe) — intro text
  ///
  /// In en, this message translates to:
  /// **'Sometimes a pause is also a step forward.\n\nBy observing, you begin to see things differently.'**
  String get field23Intro;

  /// Field 23 (Observe) — task text
  ///
  /// In en, this message translates to:
  /// **'What are you trying to force right now?\n\nTake one minute to pause and observe.\n\nWhat do you see differently now?\n\nBy slowing down, I realize __________.'**
  String get field23Task;

  /// Field 24 (Transformation) — name text
  ///
  /// In en, this message translates to:
  /// **'Transformation'**
  String get field24Name;

  /// Field 24 (Transformation) — subtitle text
  ///
  /// In en, this message translates to:
  /// **'Ability to Change'**
  String get field24Subtitle;

  /// Field 24 (Transformation) — intro text
  ///
  /// In en, this message translates to:
  /// **'Growth requires change.\n\nTo create something new, you may need to let go of something old.'**
  String get field24Intro;

  /// Field 24 (Transformation) — task text
  ///
  /// In en, this message translates to:
  /// **'What are you holding on to that no longer serves you?\n\nWhat needs to change in you to reach your goal?\n\nI let go of __________ to become myself.'**
  String get field24Task;

  /// Field 25 (Intention) — name text
  ///
  /// In en, this message translates to:
  /// **'Intention'**
  String get field25Name;

  /// Field 25 (Intention) — subtitle text
  ///
  /// In en, this message translates to:
  /// **'Focus'**
  String get field25Subtitle;

  /// Field 25 (Intention) — intro text
  ///
  /// In en, this message translates to:
  /// **'What you focus on grows.\n\nA clear intention gives your desire direction and meaning.'**
  String get field25Intro;

  /// Field 25 (Intention) — task text
  ///
  /// In en, this message translates to:
  /// **'Why does this desire matter to you?\n\nThis desire matters to me because __________.'**
  String get field25Task;

  /// Field 26 (Attachment) — name text
  ///
  /// In en, this message translates to:
  /// **'Attachment'**
  String get field26Name;

  /// Field 26 (Attachment) — subtitle text
  ///
  /// In en, this message translates to:
  /// **'Self-Honesty'**
  String get field26Subtitle;

  /// Field 26 (Attachment) — intro text
  ///
  /// In en, this message translates to:
  /// **'Not everything you hold onto is truly yours.\n\nSometimes fear disguises itself as a desire.'**
  String get field26Intro;

  /// Field 26 (Attachment) — task text
  ///
  /// In en, this message translates to:
  /// **'What are you doing because you are afraid not to?\n\nOne goal that no longer feels truly mine is __________.\n\nOne intention that still feels true is __________.'**
  String get field26Task;

  /// Field 27 (Breakdown) — name text
  ///
  /// In en, this message translates to:
  /// **'Breakdown'**
  String get field27Name;

  /// Field 27 (Breakdown) — subtitle text
  ///
  /// In en, this message translates to:
  /// **'Resilience'**
  String get field27Subtitle;

  /// Field 27 (Breakdown) — intro text
  ///
  /// In en, this message translates to:
  /// **'Sometimes something old needs to break down before you can move forward.\n\nWhen your thoughts and feelings work together, your path becomes clearer.'**
  String get field27Intro;

  /// Field 27 (Breakdown) — task text
  ///
  /// In en, this message translates to:
  /// **'What do you think about your desire?\n\nWhat do you feel about your desire?\n\nIs there a contradiction between the two?\n\nIf there is a contradiction, try to bring your thoughts and feelings together.\n\nWhat do your feelings need to hear?\n\nWhat do your thoughts need to understand?'**
  String get field27Task;

  /// Field 28 (Guidance) — name text
  ///
  /// In en, this message translates to:
  /// **'Guidance'**
  String get field28Name;

  /// Field 28 (Guidance) — subtitle text
  ///
  /// In en, this message translates to:
  /// **'Alignment with Flow'**
  String get field28Subtitle;

  /// Field 28 (Guidance) — intro text
  ///
  /// In en, this message translates to:
  /// **'Life flows through receiving and giving.\n\nThe more open you are to this flow, the easier it becomes to follow your path.'**
  String get field28Intro;

  /// Field 28 (Guidance) — task text
  ///
  /// In en, this message translates to:
  /// **'Where is this desire guiding you?\n\nMy desire is guiding me toward __________.\n\nI choose to be myself and trust the flow, even if __________.'**
  String get field28Task;

  /// Field 29 (Feeling) — name text
  ///
  /// In en, this message translates to:
  /// **'Feeling'**
  String get field29Name;

  /// Field 29 (Feeling) — subtitle text
  ///
  /// In en, this message translates to:
  /// **'Sensitivity'**
  String get field29Subtitle;

  /// Field 29 (Feeling) — intro text
  ///
  /// In en, this message translates to:
  /// **'Not everything can be seen clearly.\n\nSometimes the only way forward is to trust what you feel.'**
  String get field29Intro;

  /// Field 29 (Feeling) — task text
  ///
  /// In en, this message translates to:
  /// **'What are you afraid to face?\n\nI am ready to face __________.\n\nI meet the shadow that __________.'**
  String get field29Task;

  /// Field 30 (Integration) — name text
  ///
  /// In en, this message translates to:
  /// **'Integration'**
  String get field30Name;

  /// Field 30 (Integration) — subtitle text
  ///
  /// In en, this message translates to:
  /// **'Recognition'**
  String get field30Subtitle;

  /// Field 30 (Integration) — intro text
  ///
  /// In en, this message translates to:
  /// **'You begin to recognize yourself in a new reality.\n\nThe more clearly you see who you are becoming, the easier it becomes to integrate this identity into your life.'**
  String get field30Intro;

  /// Field 30 (Integration) — task text
  ///
  /// In en, this message translates to:
  /// **'Who are you when this desire is already part of your life?\n\nWho are you when this desire has already come true?\n\nI am a person who __________.\n\nI recognize myself as someone who __________.'**
  String get field30Task;

  /// Field 31 (Awakening) — name text
  ///
  /// In en, this message translates to:
  /// **'Awakening'**
  String get field31Name;

  /// Field 31 (Awakening) — subtitle text
  ///
  /// In en, this message translates to:
  /// **'Action'**
  String get field31Subtitle;

  /// Field 31 (Awakening) — intro text
  ///
  /// In en, this message translates to:
  /// **'You already know enough.\n\nThe question is no longer what you want. The question is whether you are ready to act.'**
  String get field31Intro;

  /// Field 31 (Awakening) — task text
  ///
  /// In en, this message translates to:
  /// **'What action can you no longer postpone?\n\nWhat action do you know you need to take?\n\nI am ready to take action and __________.\n\nI wake up and take action by __________.'**
  String get field31Task;

  /// Field 32 (Wholeness) — name text
  ///
  /// In en, this message translates to:
  /// **'Wholeness'**
  String get field32Name;

  /// Field 32 (Wholeness) — subtitle text
  ///
  /// In en, this message translates to:
  /// **'Bravery'**
  String get field32Subtitle;

  /// Field 32 (Wholeness) — intro text
  ///
  /// In en, this message translates to:
  /// **'Wholeness begins when you gather all parts of yourself.\n\nYou may still feel fear, but you are ready to take the next step.'**
  String get field32Intro;

  /// Field 32 (Wholeness) — task text
  ///
  /// In en, this message translates to:
  /// **'What fears still stand between you and your next step?\n\nI acknowledge these fears, and I choose to move toward __________ anyway.'**
  String get field32Task;

  /// PDF export header label, top-right
  ///
  /// In en, this message translates to:
  /// **'Your Journey Report'**
  String get pdfJourneyReportLabel;

  /// PDF export main title
  ///
  /// In en, this message translates to:
  /// **'Your Journey\nIs Complete'**
  String get pdfJourneyCompleteHeading;

  /// PDF export subtitle line below the main title
  ///
  /// In en, this message translates to:
  /// **'You have walked all 32 paths.'**
  String get pdfWalkedAllPathsLine;

  /// PDF export all-caps section label above the wish text
  ///
  /// In en, this message translates to:
  /// **'YOUR DESIRE'**
  String get pdfYourDesireLabel;

  /// PDF export all-caps section label above the current field name
  ///
  /// In en, this message translates to:
  /// **'YOUR CURRENT AREA OF ACTION'**
  String get pdfCurrentAreaOfActionLabel;

  /// PDF export all-caps section label above the list of recorded answers
  ///
  /// In en, this message translates to:
  /// **'WHAT YOU HAVE DISCOVERED'**
  String get pdfWhatYouHaveDiscoveredLabel;

  /// PDF export empty-state text when no answers were recorded
  ///
  /// In en, this message translates to:
  /// **'No answers recorded.'**
  String get pdfNoAnswersRecorded;

  /// Title of the Privacy Policy screen, and the tappable link label pointing to it
  ///
  /// In en, this message translates to:
  /// **'Privacy Policy'**
  String get privacyPolicyLabel;

  /// Title of the Terms of Use screen, and the tappable link label pointing to it
  ///
  /// In en, this message translates to:
  /// **'Terms of Use'**
  String get termsOfUseLabel;

  /// First segment of the mandatory consent row on the onboarding contact screen, immediately followed by the tappable Terms of Use link
  ///
  /// In en, this message translates to:
  /// **'I agree to the '**
  String get legalConsentPrefix;

  /// Segment joining the Terms of Use and Privacy Policy links in the mandatory consent row
  ///
  /// In en, this message translates to:
  /// **' and '**
  String get legalConsentAnd;

  /// Final segment of the mandatory consent row, immediately following the tappable Privacy Policy link
  ///
  /// In en, this message translates to:
  /// **'.'**
  String get legalConsentSuffix;

  /// Privacy Policy section heading
  ///
  /// In en, this message translates to:
  /// **'Overview'**
  String get legalPrivacySection1Heading;

  /// Privacy Policy section body
  ///
  /// In en, this message translates to:
  /// **'Last updated: [fill in before release]. This policy explains what information LeadLife (\"we\") collects when you use the LeadLife app, why we collect it, and the choices you have. By using the app you agree to this policy.'**
  String get legalPrivacySection1Body;

  /// Privacy Policy section heading
  ///
  /// In en, this message translates to:
  /// **'Information We Collect'**
  String get legalPrivacySection2Heading;

  /// Privacy Policy section body
  ///
  /// In en, this message translates to:
  /// **'Profile details you enter (your name, birthday, email address, and areas of focus) so we can personalize your journey. Account credentials, only if you choose to create an account with Google, Apple, or email and password, handled through Firebase Authentication. Usage and diagnostic data, such as anonymized interaction events and crash reports, your device model, operating system, and app version, collected through Firebase Analytics and Crashlytics. Purchase information, if you subscribe, processed by the App Store or Google Play and our subscription billing partner — we never see or store your card details.'**
  String get legalPrivacySection2Body;

  /// Privacy Policy section heading
  ///
  /// In en, this message translates to:
  /// **'How We Use Your Information'**
  String get legalPrivacySection3Heading;

  /// Privacy Policy section body
  ///
  /// In en, this message translates to:
  /// **'To personalize your journey and reminders, to send the gentle reminder notifications you opted into, to diagnose crashes and fix bugs, to understand how features are used so we can improve the app, and to manage your account and subscription.'**
  String get legalPrivacySection3Body;

  /// Privacy Policy section heading
  ///
  /// In en, this message translates to:
  /// **'Where Your Data Lives'**
  String get legalPrivacySection4Heading;

  /// Privacy Policy section body
  ///
  /// In en, this message translates to:
  /// **'Your profile details stay only on your device (in local app storage) unless you choose to create an account. If you create an account, your credentials are stored by Firebase Authentication (Google LLC). Analytics and crash data are processed by Firebase Analytics and Firebase Crashlytics (Google LLC).'**
  String get legalPrivacySection4Body;

  /// Privacy Policy section heading
  ///
  /// In en, this message translates to:
  /// **'Sharing'**
  String get legalPrivacySection5Heading;

  /// Privacy Policy section body
  ///
  /// In en, this message translates to:
  /// **'We do not sell your data and we do not use advertising networks. We only share data with service providers who act on our behalf: Firebase/Google, the App Store or Google Play, and our subscription billing partner.'**
  String get legalPrivacySection5Body;

  /// Privacy Policy section heading
  ///
  /// In en, this message translates to:
  /// **'International Transfers'**
  String get legalPrivacySection6Heading;

  /// Privacy Policy section body
  ///
  /// In en, this message translates to:
  /// **'Firebase infrastructure may process data outside your country or the European Economic Area, under standard contractual safeguards required by applicable law.'**
  String get legalPrivacySection6Body;

  /// Privacy Policy section heading
  ///
  /// In en, this message translates to:
  /// **'Data Retention & Deletion'**
  String get legalPrivacySection7Heading;

  /// Privacy Policy section body
  ///
  /// In en, this message translates to:
  /// **'Profile details stored only on your device are removed when you delete the app. If you have an account, you can delete it and its associated data at any time from within the app, or by contacting us at [support email].'**
  String get legalPrivacySection7Body;

  /// Privacy Policy section heading
  ///
  /// In en, this message translates to:
  /// **'Your Rights'**
  String get legalPrivacySection8Heading;

  /// Privacy Policy section body
  ///
  /// In en, this message translates to:
  /// **'Depending on where you live, you may have the right to access, correct, delete, or export your data, to object to certain processing, and to withdraw consent at any time. Contact us at [support email] to exercise these rights.'**
  String get legalPrivacySection8Body;

  /// Privacy Policy section heading
  ///
  /// In en, this message translates to:
  /// **'Children'**
  String get legalPrivacySection9Heading;

  /// Privacy Policy section body
  ///
  /// In en, this message translates to:
  /// **'LeadLife is not directed at children under 16, and we do not knowingly collect information from them.'**
  String get legalPrivacySection9Body;

  /// Privacy Policy section heading
  ///
  /// In en, this message translates to:
  /// **'Changes & Contact'**
  String get legalPrivacySection10Heading;

  /// Privacy Policy section body
  ///
  /// In en, this message translates to:
  /// **'We may update this policy from time to time; material changes will be reflected in the app. Questions? Reach us at [support email].'**
  String get legalPrivacySection10Body;

  /// Terms of Use section heading
  ///
  /// In en, this message translates to:
  /// **'Acceptance of Terms'**
  String get legalTermsSection1Heading;

  /// Terms of Use section body
  ///
  /// In en, this message translates to:
  /// **'Last updated: [fill in before release]. By using LeadLife, you agree to these Terms of Use. If you do not agree, please do not use the app.'**
  String get legalTermsSection1Body;

  /// Terms of Use section heading
  ///
  /// In en, this message translates to:
  /// **'The Service'**
  String get legalTermsSection2Heading;

  /// Terms of Use section body
  ///
  /// In en, this message translates to:
  /// **'LeadLife is a personal-growth and self-reflection companion built around your wish, a 32-field journey, and gentle reminders. Content is provided for entertainment and self-reflection purposes only, and is not professional medical, psychological, financial, or legal advice.'**
  String get legalTermsSection2Body;

  /// Terms of Use section heading
  ///
  /// In en, this message translates to:
  /// **'Eligibility'**
  String get legalTermsSection3Heading;

  /// Terms of Use section body
  ///
  /// In en, this message translates to:
  /// **'You must be at least 16 years old, or the age of digital consent in your country, to use LeadLife, and you agree to provide accurate information.'**
  String get legalTermsSection3Body;

  /// Terms of Use section heading
  ///
  /// In en, this message translates to:
  /// **'Accounts'**
  String get legalTermsSection4Heading;

  /// Terms of Use section body
  ///
  /// In en, this message translates to:
  /// **'The app works anonymously by default. You may optionally link an account with Google, Apple, or email and password so your journey and purchases carry over to a new device. You are responsible for keeping your credentials secure.'**
  String get legalTermsSection4Body;

  /// Terms of Use section heading
  ///
  /// In en, this message translates to:
  /// **'Subscriptions & Payments'**
  String get legalTermsSection5Heading;

  /// Terms of Use section body
  ///
  /// In en, this message translates to:
  /// **'Paid plans are auto-renewing subscriptions billed through the App Store or Google Play. Price and renewal terms are shown before you purchase. You can cancel any time in your App Store or Google Play account settings; cancellation takes effect at the end of the current billing period. Refunds are handled by Apple or Google according to their own policies.'**
  String get legalTermsSection5Body;

  /// Terms of Use section heading
  ///
  /// In en, this message translates to:
  /// **'Your Content'**
  String get legalTermsSection6Heading;

  /// Terms of Use section body
  ///
  /// In en, this message translates to:
  /// **'You own what you write in the app. You grant us a limited license to store and process it solely to provide the service to you.'**
  String get legalTermsSection6Body;

  /// Terms of Use section heading
  ///
  /// In en, this message translates to:
  /// **'Acceptable Use'**
  String get legalTermsSection7Heading;

  /// Terms of Use section body
  ///
  /// In en, this message translates to:
  /// **'You agree not to use the app unlawfully, to interfere with its operation, or to reverse-engineer, decompile, or disassemble it.'**
  String get legalTermsSection7Body;

  /// Terms of Use section heading
  ///
  /// In en, this message translates to:
  /// **'Disclaimer & Liability'**
  String get legalTermsSection8Heading;

  /// Terms of Use section body
  ///
  /// In en, this message translates to:
  /// **'LeadLife is provided \"as is\", without warranties of any kind. To the fullest extent permitted by law, we are not liable for indirect, incidental, or consequential damages arising from your use of the app.'**
  String get legalTermsSection8Body;

  /// Terms of Use section heading
  ///
  /// In en, this message translates to:
  /// **'Termination'**
  String get legalTermsSection9Heading;

  /// Terms of Use section body
  ///
  /// In en, this message translates to:
  /// **'We may suspend or terminate access to the app for violation of these terms. You may stop using the app, and delete your account, at any time.'**
  String get legalTermsSection9Body;

  /// Terms of Use section heading
  ///
  /// In en, this message translates to:
  /// **'Governing Law & Changes'**
  String get legalTermsSection10Heading;

  /// Terms of Use section body
  ///
  /// In en, this message translates to:
  /// **'These terms are governed by the laws of [fill in your jurisdiction]. We may update these terms from time to time; material changes will be reflected in the app. Questions? Reach us at [support email].'**
  String get legalTermsSection10Body;

  /// No description provided for @accountSectionTitle.
  ///
  /// In en, this message translates to:
  /// **'Account'**
  String get accountSectionTitle;

  /// No description provided for @accountAnonymousStatus.
  ///
  /// In en, this message translates to:
  /// **'Your data is currently stored only on this device.'**
  String get accountAnonymousStatus;

  /// No description provided for @accountConnectedStatus.
  ///
  /// In en, this message translates to:
  /// **'Your data is safely synced with your account.'**
  String get accountConnectedStatus;

  /// No description provided for @resetPasswordAction.
  ///
  /// In en, this message translates to:
  /// **'Reset password'**
  String get resetPasswordAction;

  /// No description provided for @resetPasswordPrompt.
  ///
  /// In en, this message translates to:
  /// **'Enter the email address connected to your account.'**
  String get resetPasswordPrompt;

  /// No description provided for @resetPasswordSent.
  ///
  /// In en, this message translates to:
  /// **'A password reset link has been sent.'**
  String get resetPasswordSent;

  /// No description provided for @signOutAction.
  ///
  /// In en, this message translates to:
  /// **'Sign out'**
  String get signOutAction;

  /// No description provided for @signOutConfirm.
  ///
  /// In en, this message translates to:
  /// **'Your cloud copy will stay safe. Local data will be removed from this device.'**
  String get signOutConfirm;

  /// No description provided for @deleteAccountAction.
  ///
  /// In en, this message translates to:
  /// **'Delete account'**
  String get deleteAccountAction;

  /// No description provided for @deleteAccountConfirm.
  ///
  /// In en, this message translates to:
  /// **'This permanently deletes your account, cloud data, journey, diary, and history. This cannot be undone.'**
  String get deleteAccountConfirm;

  /// No description provided for @cancelAction.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancelAction;

  /// No description provided for @confirmAction.
  ///
  /// In en, this message translates to:
  /// **'Confirm'**
  String get confirmAction;

  /// No description provided for @accountActionError.
  ///
  /// In en, this message translates to:
  /// **'Something went wrong. Please check your connection and try again.'**
  String get accountActionError;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
