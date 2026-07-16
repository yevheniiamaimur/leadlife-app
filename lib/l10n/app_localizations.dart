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
