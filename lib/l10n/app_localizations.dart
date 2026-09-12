import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_de.dart';
import 'app_localizations_en.dart';
import 'app_localizations_es.dart';
import 'app_localizations_ru.dart';
import 'app_localizations_uk.dart';

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
  static const List<Locale> supportedLocales = <Locale>[
    Locale('de'),
    Locale('en'),
    Locale('es'),
    Locale('ru'),
    Locale('uk'),
  ];

  /// Language picker title and drawer item
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get languageTitle;

  /// Use the device language setting
  ///
  /// In en, this message translates to:
  /// **'Same as phone'**
  String get languageSystem;

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

  /// Heading for the contact-author card on the Help screen
  ///
  /// In en, this message translates to:
  /// **'Contact the game author'**
  String get contactAuthorTitle;

  /// Body text for the contact-author card on the Help screen
  ///
  /// In en, this message translates to:
  /// **'If you have a question, feedback, or need help, you can write directly.'**
  String get contactAuthorSubtitle;

  /// Button that opens an email to the game author
  ///
  /// In en, this message translates to:
  /// **'Write by email'**
  String get contactAuthorEmailCta;

  /// Button that opens the game author's Instagram profile
  ///
  /// In en, this message translates to:
  /// **'Open Instagram'**
  String get contactAuthorInstagramCta;

  /// Snackbar shown when the email app cannot open and the address is copied instead
  ///
  /// In en, this message translates to:
  /// **'Email copied: leadlife.app@gmail.com'**
  String get contactAuthorEmailCopied;

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

  /// Non-blocking consent toggle for processing sensitive personal data
  ///
  /// In en, this message translates to:
  /// **'Allow processing of information I provide that may relate to health data or other sensitive personal data, so the relevant Hatchpot features can work.'**
  String get allowSensitiveDataProcessing;

  /// Push notification title nudging the player back to an unfinished journey
  ///
  /// In en, this message translates to:
  /// **'Your path is waiting'**
  String get comebackReminderTitle;

  /// Push notification body nudging the player back to an unfinished journey
  ///
  /// In en, this message translates to:
  /// **'You left your journey mid-way. Whenever you\'re ready, come back and continue.'**
  String get comebackReminderBody;

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

  /// No description provided for @readyToBeginPathCta.
  ///
  /// In en, this message translates to:
  /// **'I am ready to begin my path  →'**
  String get readyToBeginPathCta;

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
  /// **'What is Hatchpot?'**
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
  /// **'Hatchpot is built around 32 fields, arranged in one continuous path.'**
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

  /// Shown when a purchase is in a pending/awaiting-approval state (e.g. Ask to Buy)
  ///
  /// In en, this message translates to:
  /// **'Your purchase is pending approval. We\'ll unlock Hatchpot Plus as soon as it\'s confirmed.'**
  String get purchasePendingMessage;

  /// Generic error message shown when a purchase fails
  ///
  /// In en, this message translates to:
  /// **'Something went wrong with the purchase. Please try again.'**
  String get purchaseErrorGeneric;

  /// Button label to restore previous purchases
  ///
  /// In en, this message translates to:
  /// **'Restore Purchases'**
  String get restorePurchasesAction;

  /// Shown after Restore Purchases completes successfully
  ///
  /// In en, this message translates to:
  /// **'Your purchases have been restored.'**
  String get restorePurchasesSuccess;

  /// Shown on the profile screen when the user has an active Hatchpot Plus subscription
  ///
  /// In en, this message translates to:
  /// **'Hatchpot Plus is active.'**
  String get hatchpotPlusActiveStatus;

  /// Shown on the profile screen when the user does not have an active Hatchpot Plus subscription
  ///
  /// In en, this message translates to:
  /// **'Hatchpot Plus is not active.'**
  String get hatchpotPlusInactiveStatus;

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
  /// **'Hatchpot Pass'**
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
  /// **'A structured path back to yourself'**
  String get howItWorksSlide1Title;

  /// Body text of slide 1 of the How It Works onboarding
  ///
  /// In en, this message translates to:
  /// **'Hatchpot is a self-reflection system that connects you to your inner self through play, symbol, and intuition.'**
  String get howItWorksSlide1Body;

  /// Title of slide 2 of the How It Works onboarding
  ///
  /// In en, this message translates to:
  /// **'The dice reads your unconscious'**
  String get howItWorksSlide2Title;

  /// Body text of slide 2 of the How It Works onboarding
  ///
  /// In en, this message translates to:
  /// **'Write your desire and roll the dice.\n\nRoll a 1 — it\'s ready, and your journey begins.\n\nAny other number is a clue to help you refine or change it.'**
  String get howItWorksSlide2Body;

  /// Title of slide 3 of the How It Works onboarding
  ///
  /// In en, this message translates to:
  /// **'32 fields. Your own path.'**
  String get howItWorksSlide3Title;

  /// Body text of slide 3 of the How It Works onboarding
  ///
  /// In en, this message translates to:
  /// **'You\'ll move through 10 levels of reality and 22 life strategies — different ways to think, feel, and act.\n\nRoll, answer one question, move on. Most steps take less than a minute.'**
  String get howItWorksSlide3Body;

  /// Title of slide 4 of the How It Works onboarding
  ///
  /// In en, this message translates to:
  /// **'Build your success code'**
  String get howItWorksSlide4Title;

  /// Body text of slide 4 of the How It Works onboarding
  ///
  /// In en, this message translates to:
  /// **'Every answer becomes part of a personal code — a map back to your desire.\n\nNot a universal answer. Only your path.'**
  String get howItWorksSlide4Body;

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
  /// **'In Hatchpot, Light is the symbolic beginning — the energy already present in your idea.\n\nThe desire you wrote reflects something genuinely important to you. Let its value support you as your path begins.'**
  String get field01Intro;

  /// Field 1 (Light) — task text
  ///
  /// In en, this message translates to:
  /// **''**
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
  /// **'A desire needs a structure that can hold its energy and actions.\n\nThis field is connected with scale, expansion, and kindness.'**
  String get field04Intro;

  /// Field 4 (Scale) — task text
  ///
  /// In en, this message translates to:
  /// **'Why is it valuable to the world for your desire to come true? Write as many points as feel natural.\n\nI give the world __________, and the world accepts me and gives me opportunities and support.'**
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
  /// **'Obstacles are a normal stage of every process of becoming.\n\nLook at what stands in your way again: it may already be revealing the strength growing within you.'**
  String get field05Intro;

  /// Field 5 (Limitation) — task text
  ///
  /// In en, this message translates to:
  /// **'What currently seems like a limitation? What positive quality or behavior is it teaching you?'**
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
  /// **'Your desire reflects a part of you that is ready to manifest.\n\nSee who you become for yourself and the world when it is realized, and what value stands behind it. This field also reflects the inner child and love.'**
  String get field06Intro;

  /// Field 6 (Values) — task text
  ///
  /// In en, this message translates to:
  /// **'What part of you does this desire express? Who do you become for yourself and the world when it is realized? What value stands behind it?\n\nI acknowledge myself as __________ and use these qualities to realize what I intend.'**
  String get field06Task;

  /// No description provided for @field06CodeInstruction.
  ///
  /// In en, this message translates to:
  /// **'Enter the qualities you are ready and want to express in your life.'**
  String get field06CodeInstruction;

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
  /// **'This field shows the emotional dimension of your request. Emotions are signs. If you do not suppress them, but live through them, energy begins to move in the right direction.\n\nThis field works as a readiness filter: it shows which states are now slowing movement down and which ones are opening the way.'**
  String get field07Intro;

  /// Field 7 (Feelings) — task text
  ///
  /// In en, this message translates to:
  /// **'What emotions do you experience most often specifically in relation to your request? Is there an emotion or repeating emotional cycle where you feel stuck? What usually causes these states?\n\nI release __________ and allow energy to move toward the realization of my request.'**
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
  /// **'This field shows which thoughts and beliefs surround your request. Some beliefs support movement, while others may quietly limit manifestation.\n\nWhen you see them clearly, you can choose a new direction.'**
  String get field08Intro;

  /// Field 8 (Thinking) — task text
  ///
  /// In en, this message translates to:
  /// **'What do you really think about your request? Which beliefs or assumptions may be blocking its realization?\n\nI transform limiting beliefs into freedom of manifestation.'**
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
  /// **'Your subconscious holds all past events and experiences, as well as future probabilities.\n\nThrough this field, we tune in to the desired branch of probability.'**
  String get field09Intro;

  /// Field 9 (Subconsciousness) — task text
  ///
  /// In en, this message translates to:
  /// **'Imagine the realization of your request from the heart. What picture do you see? Describe it in brief points: what is happening, where you are, what you feel, and what has already become real.'**
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
  /// **'This field is about reality and the physical world. Here, the request begins to move from idea, feeling, and image into concrete action.\n\nIf your request is connected with matter, money, the body, or a visible result, this field is especially important.'**
  String get field10Intro;

  /// Field 10 (Reality) — task text
  ///
  /// In en, this message translates to:
  /// **'Write 10 actions that, in your view, will help realize your request. Try to make most of them actions you can take today, at least half of them.'**
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

  /// Title of the Subscription & Refund Terms screen, and the tappable link label pointing to it
  ///
  /// In en, this message translates to:
  /// **'Subscription & Refund Terms'**
  String get subscriptionTermsLabel;

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
  /// **'Last updated: September 9, 2026. This Privacy Policy explains what information Hatchpot processes, for what purposes, who it may be shared with, where it may be stored, and what rights you have.\n\nHatchpot (\"Hatchpot\", \"we\", \"us\", or \"our service\") is a digital application for personal reflection, self-discovery, and entertainment that uses artificial intelligence technologies.\n\nHatchpot is operated by Maimur Yevheniia Feliksivna, a sole proprietor (individual entrepreneur) registered under the laws of Ukraine.\n\nRegistration and contact details: Taxpayer Identification Number (РНОКПП) 3743203085; registered address: 2 Zhukovskoho St., Dnipro, 49000, Ukraine; email: leadlife.app@gmail.com.'**
  String get legalPrivacySection1Body;

  /// Privacy Policy section heading
  ///
  /// In en, this message translates to:
  /// **'Information We Process'**
  String get legalPrivacySection2Heading;

  /// Privacy Policy section body
  ///
  /// In en, this message translates to:
  /// **'Information you provide yourself — depending on the features you use, this may include: your name or chosen name; birthday; email address; selected focus area; your wish or intention; answers to questions; diary entries; your journey history within the app; the content of requests to AI-powered features; and other information you enter as free text.\n\nAccount data — if you create or link an account, Firebase Authentication processes the related data: your account identifier, email address, and the technical data needed for authentication.\n\nTechnical information — device type and model, operating system, app version, technical identifiers, information about your interactions with the app, diagnostic information, and crash reports. Firebase Analytics and Firebase Crashlytics may be used for analytics and diagnostics. We do not ask you to enter payment-card details.'**
  String get legalPrivacySection2Body;

  /// Privacy Policy section heading
  ///
  /// In en, this message translates to:
  /// **'Sensitive Information'**
  String get legalPrivacySection3Heading;

  /// Privacy Policy section body
  ///
  /// In en, this message translates to:
  /// **'Some of the entries you make — particularly diary entries, answers to questions, or free-text fields — may potentially contain information about your health, psychological state, beliefs, relationships, or other personal circumstances.\n\nWe do not require you to provide such information to use the app, but you may choose to enter it voluntarily in the relevant field. If you voluntarily provide information that qualifies as a special category of personal data, it is processed only to the extent necessary for the relevant feature and on an applicable legal basis.\n\nDo not enter passwords, payment details, document numbers, secret keys, or other information whose disclosure could create a risk for you into the app.'**
  String get legalPrivacySection3Body;

  /// Privacy Policy section heading
  ///
  /// In en, this message translates to:
  /// **'Purposes of Processing'**
  String get legalPrivacySection4Heading;

  /// Privacy Policy section body
  ///
  /// In en, this message translates to:
  /// **'We use information only for specific, lawful purposes: providing Hatchpot\'s features; creating personalized game and reflection content; processing requests to AI-powered features; generating the final analysis you request; saving and synchronizing your progress; account recovery; sending reminders you have requested; keeping the service secure; preventing abuse and fraud; diagnosing technical errors; analyzing feature usage; improving the app\'s stability and functionality; complying with legal obligations; and protecting the rights and legitimate interests of you and the operator.\n\nWe do not sell users\' personal data, and we do not use it to sell third-party goods or services through advertising networks.'**
  String get legalPrivacySection4Body;

  /// Privacy Policy section heading
  ///
  /// In en, this message translates to:
  /// **'Artificial Intelligence and Anthropic'**
  String get legalPrivacySection5Heading;

  /// Privacy Policy section body
  ///
  /// In en, this message translates to:
  /// **'To create personalized AI content, Hatchpot uses third-party artificial intelligence technologies, including the Anthropic API. Depending on the feature used, the context necessary to fulfill your request may be sent to Anthropic: your wish, selected focus area, the questions, your answers, information about the fields you have visited, and other necessary context. We aim to send only the amount of information needed to fulfill a specific request.\n\nAnthropic is a separate technology provider and processes the data sent to it in accordance with its own applicable terms and policies. Under Anthropic\'s commercial API, the standard retention period for inputs and outputs is up to 30 days after receipt or creation, except where otherwise agreed, required by law, or needed to ensure safety and enforce usage policies.\n\nSending data to Anthropic is a transfer of information to a third party and is expressly disclosed to you in this Policy.'**
  String get legalPrivacySection5Body;

  /// Privacy Policy section heading
  ///
  /// In en, this message translates to:
  /// **'Service Providers'**
  String get legalPrivacySection6Heading;

  /// Privacy Policy section body
  ///
  /// In en, this message translates to:
  /// **'To operate the app, we may use third-party technology services: Google Firebase (Authentication, Cloud Firestore, Analytics, Crashlytics, App Check, Cloud Functions), the Anthropic API, and Apple and/or Google for their respective sign-in services and purchase processing. These providers receive only the amount of data needed to provide their respective service.'**
  String get legalPrivacySection6Body;

  /// Privacy Policy section heading
  ///
  /// In en, this message translates to:
  /// **'International Transfers'**
  String get legalPrivacySection7Heading;

  /// Privacy Policy section body
  ///
  /// In en, this message translates to:
  /// **'Google Firebase and Anthropic may process information outside your country or the European Economic Area, including in the United States and other regions where their service providers operate. Where the GDPR or other laws with specific requirements for international data transfers apply, such transfers are carried out on a legally recognized basis and with appropriate safeguards.'**
  String get legalPrivacySection7Body;

  /// Privacy Policy section heading
  ///
  /// In en, this message translates to:
  /// **'Legal Bases for Processing'**
  String get legalPrivacySection8Heading;

  /// Privacy Policy section body
  ///
  /// In en, this message translates to:
  /// **'Depending on the specific operation, processing may be based on: your consent; the necessity of performing a contract with you; the necessity of complying with legal obligations; the necessity of protecting vital interests; or legitimate interest, where permitted by applicable law. Processing of sensitive information relies on an additional legal basis where required by law.\n\nIn Ukraine, the processing of health data and certain other special categories is governed by separate requirements of the Law of Ukraine \"On Personal Data Protection\".'**
  String get legalPrivacySection8Body;

  /// Privacy Policy section heading
  ///
  /// In en, this message translates to:
  /// **'How Consent Is Given'**
  String get legalPrivacySection9Heading;

  /// Privacy Policy section body
  ///
  /// In en, this message translates to:
  /// **'Where required, you give consent through a clearly affirmative action, such as checking the relevant box. Consent is not considered given merely because you use the app, where the law requires separate consent. Consent checkboxes in Hatchpot — including on the AI information screen and for permission to process sensitive information — are not pre-checked: you make an active choice.\n\nYou may withdraw your consent in the cases and manner provided by applicable law. Withdrawing consent does not affect the lawfulness of processing carried out before the withdrawal.'**
  String get legalPrivacySection9Body;

  /// Privacy Policy section heading
  ///
  /// In en, this message translates to:
  /// **'Data Retention and Deletion'**
  String get legalPrivacySection10Heading;

  /// Privacy Policy section body
  ///
  /// In en, this message translates to:
  /// **'We retain personal data no longer than necessary for the relevant purposes, unless a longer period is required by law. Locally stored information is removed when you delete the app or clear its data.\n\nWe delete data associated with your account in accordance with the deletion procedure (Section 11), though some data may be retained in backups, security logs, financial records, or where required by law — including for fraud prevention, dispute resolution, security, or to comply with requirements from Apple, Google, or other providers.\n\nData already sent to Anthropic is subject to Anthropic\'s applicable retention rules described above.'**
  String get legalPrivacySection10Body;

  /// Privacy Policy section heading
  ///
  /// In en, this message translates to:
  /// **'Account Deletion'**
  String get legalPrivacySection11Heading;

  /// Privacy Policy section body
  ///
  /// In en, this message translates to:
  /// **'You can request deletion of your account and the data associated with it through the relevant feature in the app, or by sending a request to leadlife.app@gmail.com. After your account is deleted, some data may remain in backups, security logs, or where its retention is required by law.'**
  String get legalPrivacySection11Body;

  /// Privacy Policy section heading
  ///
  /// In en, this message translates to:
  /// **'Your Rights'**
  String get legalPrivacySection12Heading;

  /// Privacy Policy section body
  ///
  /// In en, this message translates to:
  /// **'Depending on applicable law, you may have the right to: obtain information about your personal data; receive a copy of your data; correct inaccurate data; delete your data; restrict processing; object to certain kinds of processing; withdraw consent; receive your data in a machine-readable format; and lodge a complaint with a competent data protection authority.\n\nSend your request to leadlife.app@gmail.com. Before fulfilling a request, we may ask for reasonable proof of your identity.'**
  String get legalPrivacySection12Body;

  /// Privacy Policy section heading
  ///
  /// In en, this message translates to:
  /// **'Minimum Age'**
  String get legalPrivacySection13Heading;

  /// Privacy Policy section body
  ///
  /// In en, this message translates to:
  /// **'Hatchpot is intended only for individuals who are 18 years of age or older. Hatchpot is not directed at children or minors. If we become aware that we have received personal data from someone under 18 without an appropriate legal basis, we will take reasonable steps to delete that data.'**
  String get legalPrivacySection13Body;

  /// Privacy Policy section heading
  ///
  /// In en, this message translates to:
  /// **'Security'**
  String get legalPrivacySection14Heading;

  /// Privacy Policy section body
  ///
  /// In en, this message translates to:
  /// **'We apply reasonable technical and organizational measures to protect personal data against unauthorized access, alteration, disclosure, loss, or destruction. No method of transmission or storage can guarantee absolute security.'**
  String get legalPrivacySection14Body;

  /// Privacy Policy section heading
  ///
  /// In en, this message translates to:
  /// **'Changes & Contact'**
  String get legalPrivacySection15Heading;

  /// Privacy Policy section body
  ///
  /// In en, this message translates to:
  /// **'We may update this Policy when Hatchpot\'s functionality, the providers we use, or applicable law changes. The date of the last update is shown at the beginning of the document; for material changes, we may additionally notify you through the app or in another reasonable manner.\n\nFor questions about the processing of personal data, write to leadlife.app@gmail.com.\n\nOperator: Maimur Yevheniia Feliksivna, sole proprietor (individual entrepreneur), Ukraine.'**
  String get legalPrivacySection15Body;

  /// Terms of Use section heading
  ///
  /// In en, this message translates to:
  /// **'General Provisions'**
  String get legalTermsSection1Heading;

  /// Terms of Use section body
  ///
  /// In en, this message translates to:
  /// **'Last updated: September 9, 2026. These Terms of Use (\"Terms\") govern the relationship between the user of Hatchpot (\"user\", \"you\") and the operator of the app — Maimur Yevheniia Feliksivna, a sole proprietor (individual entrepreneur) registered under the laws of Ukraine (Taxpayer Identification Number (РНОКПП) 3743203085, 2 Zhukovskoho St., Dnipro, 49000, Ukraine).\n\nHatchpot is the commercial name of a digital app designed for personal reflection, self-discovery, and entertainment.\n\nBy using Hatchpot, creating an account, or purchasing paid features, you confirm that you have read these Terms. If you do not agree with these Terms, do not use Hatchpot.'**
  String get legalTermsSection1Body;

  /// Terms of Use section heading
  ///
  /// In en, this message translates to:
  /// **'Purpose of Hatchpot'**
  String get legalTermsSection2Heading;

  /// Terms of Use section body
  ///
  /// In en, this message translates to:
  /// **'Hatchpot provides a digital tool for personal reflection and self-discovery, built around your wish, a journey through game fields, questions, answers, diary entries, and AI-generated content.\n\nHatchpot is not a medical, psychological, psychotherapeutic, or psychiatric service. The content that Hatchpot generates, including AI content, is not medical advice, psychological advice, psychotherapy, psychiatric care, a diagnosis, a treatment, financial advice, or legal advice.'**
  String get legalTermsSection2Body;

  /// Terms of Use section heading
  ///
  /// In en, this message translates to:
  /// **'Artificial Intelligence Disclaimer'**
  String get legalTermsSection3Heading;

  /// Terms of Use section body
  ///
  /// In en, this message translates to:
  /// **'Some of Hatchpot\'s content is generated using artificial intelligence technologies. AI can produce inaccurate, incomplete, or subjective responses. AI content should not be treated as established fact, professional opinion, or a prediction of future events. You are solely responsible for evaluating the content you receive and for any decisions you make in light of your own circumstances.'**
  String get legalTermsSection3Body;

  /// Terms of Use section heading
  ///
  /// In en, this message translates to:
  /// **'User Age'**
  String get legalTermsSection4Heading;

  /// Terms of Use section body
  ///
  /// In en, this message translates to:
  /// **'Hatchpot is intended for users who are 18 years of age or older. By using Hatchpot, you confirm that you are at least 18 years old. If you are under 18, do not create an account, use paid features, or provide your personal data to use Hatchpot.'**
  String get legalTermsSection4Body;

  /// Terms of Use section heading
  ///
  /// In en, this message translates to:
  /// **'Accounts'**
  String get legalTermsSection5Heading;

  /// Terms of Use section body
  ///
  /// In en, this message translates to:
  /// **'Hatchpot may allow you to use the app without registering. You may link an account using email, Google, Apple, or another supported method. You are responsible for providing accurate information and for keeping your sign-in credentials secure.'**
  String get legalTermsSection5Body;

  /// Terms of Use section heading
  ///
  /// In en, this message translates to:
  /// **'Your Content'**
  String get legalTermsSection6Heading;

  /// Terms of Use section body
  ///
  /// In en, this message translates to:
  /// **'You retain the rights to the text, answers, diary entries, wishes, and other content you create or enter in Hatchpot (\"User Content\"). By providing User Content, you allow Hatchpot, to the extent necessary to operate the service, to access, store, process, transmit, and technically use it to: provide the app\'s features; synchronize your data; generate personalized content; process AI requests, including by sending the relevant context to third-party technology providers, including Anthropic (see the Privacy Policy); generate the analysis you request; keep the service secure; and perform technical maintenance.\n\nHatchpot does not acquire ownership of your User Content, does not sell it, and does not use it for advertising targeting. You confirm that you have the right to provide the information you submit.'**
  String get legalTermsSection6Body;

  /// Terms of Use section heading
  ///
  /// In en, this message translates to:
  /// **'Prohibited Use'**
  String get legalTermsSection7Heading;

  /// Terms of Use section body
  ///
  /// In en, this message translates to:
  /// **'You must not: use Hatchpot unlawfully; interfere with the app\'s operation; attempt to gain unauthorized access to its systems; distribute malicious code; reverse-engineer, decompile, or disassemble the app, except where expressly permitted by applicable law; or use the app to infringe the rights of third parties or to threaten the safety of other users.'**
  String get legalTermsSection7Body;

  /// Terms of Use section heading
  ///
  /// In en, this message translates to:
  /// **'Crisis Situations'**
  String get legalTermsSection8Heading;

  /// Terms of Use section body
  ///
  /// In en, this message translates to:
  /// **'Hatchpot is not designed for use in emergencies. If your message indicates an immediate threat to the life, health, or safety of you or another person, Hatchpot may suspend its normal game or reflection processing and instead display pre-prepared information about the need to seek emergency or professional help.\n\nDo not use Hatchpot as a substitute for emergency, medical, psychological, or psychiatric help.'**
  String get legalTermsSection8Body;

  /// Terms of Use section heading
  ///
  /// In en, this message translates to:
  /// **'Disclaimer of Warranties'**
  String get legalTermsSection9Heading;

  /// Terms of Use section body
  ///
  /// In en, this message translates to:
  /// **'Hatchpot is provided \"as is\" and \"as available\". We do not warrant that the app will operate without interruption, be free of technical errors, be available at all times, be fully compatible with every device, or generate AI content that is always accurate or appropriate.'**
  String get legalTermsSection9Body;

  /// Terms of Use section heading
  ///
  /// In en, this message translates to:
  /// **'Limitation of Liability'**
  String get legalTermsSection10Heading;

  /// Terms of Use section body
  ///
  /// In en, this message translates to:
  /// **'To the fullest extent permitted by applicable law, Hatchpot is not liable for indirect, incidental, special, or consequential damages arising from your use of, or inability to use, the app. You are solely responsible for decisions you make based on information received through Hatchpot.\n\nNothing in these Terms excludes or limits the operator\'s liability where such exclusion or limitation is prohibited by applicable law, and nothing deprives you, as a consumer, of rights granted by mandatory legal provisions — including Ukrainian law on distance contracts and digital content, and, if you reside in another country, the mandatory rights granted to you by the law of your country of residence.'**
  String get legalTermsSection10Body;

  /// Terms of Use section heading
  ///
  /// In en, this message translates to:
  /// **'Paid Features and Subscriptions'**
  String get legalTermsSection11Heading;

  /// Terms of Use section body
  ///
  /// In en, this message translates to:
  /// **'Hatchpot may offer paid features, subscriptions, and digital content. The terms for payment, automatic renewal, cancellation, and refunds are set out in a separate document, the \"Subscription & Refund Terms\", which forms an integral part of these Terms.'**
  String get legalTermsSection11Body;

  /// Terms of Use section heading
  ///
  /// In en, this message translates to:
  /// **'Account Deletion'**
  String get legalTermsSection12Heading;

  /// Terms of Use section body
  ///
  /// In en, this message translates to:
  /// **'You may stop using Hatchpot and delete your account through the procedure provided in the app. Deleting your account does not relieve either party of obligations that, by their nature, are meant to survive the end of your use of the service.'**
  String get legalTermsSection12Body;

  /// Terms of Use section heading
  ///
  /// In en, this message translates to:
  /// **'Suspension of Access'**
  String get legalTermsSection13Heading;

  /// Terms of Use section body
  ///
  /// In en, this message translates to:
  /// **'We may temporarily restrict or terminate a user\'s access if: the user violates these Terms; use of the account poses a security risk; it is necessary to prevent fraud; it is required by law; or it is necessary to protect the rights of other users or the operator.'**
  String get legalTermsSection13Body;

  /// Terms of Use section heading
  ///
  /// In en, this message translates to:
  /// **'Governing Law'**
  String get legalTermsSection14Heading;

  /// Terms of Use section body
  ///
  /// In en, this message translates to:
  /// **'These Terms are governed by the laws of Ukraine. If you are a consumer residing in another country, the choice of Ukrainian law does not deprive you of the rights granted to you by the mandatory provisions of the law of your country of residence.'**
  String get legalTermsSection14Body;

  /// Terms of Use section heading
  ///
  /// In en, this message translates to:
  /// **'Changes to the Terms and Contact'**
  String get legalTermsSection15Heading;

  /// Terms of Use section body
  ///
  /// In en, this message translates to:
  /// **'We may change these Terms if the app, our business model, or applicable law changes. We may notify you of material changes through the app or in another reasonable manner. Continuing to use Hatchpot after changes take effect means using the service under the updated Terms, to the extent permitted by law.\n\nOperator: Maimur Yevheniia Feliksivna, sole proprietor (individual entrepreneur), Ukraine. Email: leadlife.app@gmail.com.'**
  String get legalTermsSection15Body;

  /// Subscription Terms section heading
  ///
  /// In en, this message translates to:
  /// **'Paid Features'**
  String get legalSubscriptionSection1Heading;

  /// Subscription Terms section body
  ///
  /// In en, this message translates to:
  /// **'Some Hatchpot features may be offered for a fee. Before you make a purchase, you are shown information about the price, currency, subscription period, whether automatic renewal applies, what the paid feature includes, and the cancellation terms.'**
  String get legalSubscriptionSection1Body;

  /// Subscription Terms section heading
  ///
  /// In en, this message translates to:
  /// **'Subscription and Automatic Renewal'**
  String get legalSubscriptionSection2Heading;

  /// Subscription Terms section body
  ///
  /// In en, this message translates to:
  /// **'If the service you choose is a subscription, it renews automatically for the corresponding period unless you cancel it before the renewal date. Canceling a subscription stops future automatic renewals but does not necessarily end your access to the period you have already paid for.'**
  String get legalSubscriptionSection2Body;

  /// Subscription Terms section heading
  ///
  /// In en, this message translates to:
  /// **'Payment Through App Stores'**
  String get legalSubscriptionSection3Heading;

  /// Subscription Terms section body
  ///
  /// In en, this message translates to:
  /// **'On iOS, payments are processed through the App Store, and on Android, through Google Play, unless the app specifies otherwise. Certain aspects of payment may be subject to the rules of the relevant store.'**
  String get legalSubscriptionSection3Body;

  /// Subscription Terms section heading
  ///
  /// In en, this message translates to:
  /// **'Cancellation'**
  String get legalSubscriptionSection4Heading;

  /// Subscription Terms section body
  ///
  /// In en, this message translates to:
  /// **'You can cancel your subscription in the relevant account settings of the App Store or Google Play. After cancellation, you generally retain access until the end of the period you have already paid for, unless otherwise provided by applicable rules or law.'**
  String get legalSubscriptionSection4Body;

  /// Subscription Terms section heading
  ///
  /// In en, this message translates to:
  /// **'Refunds'**
  String get legalSubscriptionSection5Heading;

  /// Subscription Terms section body
  ///
  /// In en, this message translates to:
  /// **'The right to a refund is determined by applicable law, the terms of the contract, and the rules of the relevant app store. Nothing in this document limits your mandatory consumer rights.\n\nIf applicable law grants a right to withdraw from a distance contract or digital content, that right remains available, subject to the conditions set by law. For digital content whose provision has already begun, the right of withdrawal may be limited in cases provided by law, in particular where you have given your express prior consent to the digital content being provided immediately and have been informed of the consequences of that consent.'**
  String get legalSubscriptionSection5Body;

  /// Subscription Terms section heading
  ///
  /// In en, this message translates to:
  /// **'Free Trial Period'**
  String get legalSubscriptionSection6Heading;

  /// Subscription Terms section body
  ///
  /// In en, this message translates to:
  /// **'If Hatchpot offers a free trial period, its duration and the terms of automatic conversion to a paid subscription are disclosed before the trial period begins.'**
  String get legalSubscriptionSection6Body;

  /// Subscription Terms section heading
  ///
  /// In en, this message translates to:
  /// **'Price Changes'**
  String get legalSubscriptionSection7Heading;

  /// Subscription Terms section body
  ///
  /// In en, this message translates to:
  /// **'If the price of a future subscription period changes, you will be notified in the manner provided by applicable law and the rules of the relevant store.'**
  String get legalSubscriptionSection7Body;

  /// Subscription Terms section heading
  ///
  /// In en, this message translates to:
  /// **'Erroneous Charges'**
  String get legalSubscriptionSection8Heading;

  /// Subscription Terms section body
  ///
  /// In en, this message translates to:
  /// **'If you believe you have been charged in error, contact leadlife.app@gmail.com. If needed, you can also use the refund procedure of the relevant app store.'**
  String get legalSubscriptionSection8Body;

  /// Subscription Terms section heading
  ///
  /// In en, this message translates to:
  /// **'Service-Initiated Cancellation or Suspension'**
  String get legalSubscriptionSection9Heading;

  /// Subscription Terms section body
  ///
  /// In en, this message translates to:
  /// **'If we cancel or suspend your access for reasons on our side — not because you violated these Terms — you don\'t lose what you\'ve already paid for.\n\nIf you purchased a one-time single-journey plan, access to the journey you already paid for is preserved; if that\'s not technically possible, we refund the unused portion on a pro-rata basis.\n\nIf you have an active subscription and we cancel or suspend it for reasons on our side, you keep access for the remainder of your already-paid period, or receive an equivalent number of additional journeys or days of access to make up for the lost time — or a pro-rata refund if neither option is possible.\n\nThis does not apply where access is restricted because you violated these Terms, or as required by law, fraud, or abuse prevention.'**
  String get legalSubscriptionSection9Body;

  /// AI/Medical disclaimer screen heading
  ///
  /// In en, this message translates to:
  /// **'IMPORTANT INFORMATION'**
  String get aiDisclaimerHeading;

  /// AI/Medical disclaimer screen body text
  ///
  /// In en, this message translates to:
  /// **'Hatchpot is designed for entertainment, personal reflection, and self-discovery.\n\nHatchpot is not medical, psychological, psychotherapeutic, or psychiatric care.\n\nResponses generated by artificial intelligence may contain errors, inaccuracies, or subjective interpretations and do not replace consultation with a qualified professional.\n\nDo not use Hatchpot to diagnose a condition, treat an illness, or make decisions that require professional medical, psychological, legal, or financial advice.\n\nHatchpot is not designed for emergencies. If you or another person is in immediate danger, seek emergency help or contact an appropriate professional.'**
  String get aiDisclaimerBody;

  /// AI/Medical disclaimer screen checkbox label
  ///
  /// In en, this message translates to:
  /// **'I am 18 years of age or older. I have read this information and understand that Hatchpot is not medical, psychological, or psychiatric care, and that AI responses may be inaccurate.'**
  String get aiDisclaimerCheckboxLabel;

  /// Crisis resources screen heading
  ///
  /// In en, this message translates to:
  /// **'Let\'s pause here for a moment'**
  String get crisisResourcesHeading;

  /// Crisis resources screen body
  ///
  /// In en, this message translates to:
  /// **'What you wrote seems to deserve more than this game can offer. Hatchpot isn\'t built for crisis situations and doesn\'t replace professional help.\n\nPlease reach out to someone you trust, a mental health professional, or your local emergency services. You don\'t have to go through this alone.'**
  String get crisisResourcesBody;

  /// Crisis resources screen back button
  ///
  /// In en, this message translates to:
  /// **'Go back'**
  String get crisisResourcesBackCta;

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
      <String>['de', 'en', 'es', 'ru', 'uk'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'de':
      return AppLocalizationsDe();
    case 'en':
      return AppLocalizationsEn();
    case 'es':
      return AppLocalizationsEs();
    case 'ru':
      return AppLocalizationsRu();
    case 'uk':
      return AppLocalizationsUk();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
