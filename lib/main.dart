import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_app_check/firebase_app_check.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'app_theme.dart';
import 'firebase_options.dart';
import 'l10n/app_localizations.dart';
import 'screens/mid_dice_screen.dart';
import 'screens/onboarding_name_screen.dart';
import 'screens/rules_screen.dart';
import 'services/analytics_service.dart';
import 'services/auth_service.dart';
import 'services/game_content_service.dart';
import 'services/locale_service.dart';
import 'services/notification_service.dart';
import 'services/onboarding_service.dart';
import 'services/progress_service.dart';
import 'services/cloud_sync_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  try {
    await LocaleService.instance.load();
  } catch (error, stack) {
    debugPrint('Language preference could not be loaded: $error\n$stack');
  }

  var firebaseAvailable = false;
  try {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    firebaseAvailable = true;
  } catch (error, stack) {
    debugPrint(
      'Firebase initialization failed; starting locally: $error\n$stack',
    );
  }

  if (firebaseAvailable) {
    try {
      await FirebaseAppCheck.instance.activate(
        providerAndroid: kDebugMode
            ? const AndroidDebugProvider()
            : const AndroidPlayIntegrityProvider(),
        providerApple: kDebugMode
            ? const AppleDebugProvider()
            : const AppleAppAttestWithDeviceCheckFallbackProvider(),
      );
    } catch (error, stack) {
      debugPrint('App Check activation failed: $error\n$stack');
    }
    try {
      await AuthService.instance.ensureSignedIn();
      await CloudSyncService.instance.restoreOrUpload();
    } catch (error, stack) {
      debugPrint('Firebase sign-in failed; continuing locally: $error\n$stack');
    }
  }

  AnalyticsService.instance.configure(firebaseAvailable: firebaseAvailable);

  // Route uncaught errors to Crashlytics instead of just the console —
  // debug builds still print to console too, via debugPrint below.
  FlutterError.onError = (details) {
    FlutterError.presentError(details);
    if (firebaseAvailable) {
      FirebaseCrashlytics.instance.recordFlutterFatalError(details).ignore();
    }
  };
  PlatformDispatcher.instance.onError = (error, stack) {
    if (firebaseAvailable) {
      FirebaseCrashlytics.instance
          .recordError(error, stack, fatal: true)
          .ignore();
    }
    return true;
  };

  SavedProgress? progress;
  try {
    progress = await ProgressService.load();
  } catch (error, stack) {
    debugPrint('Saved progress could not be loaded: $error\n$stack');
  }
  if (progress != null) {
    try {
      await GameContentService.restore(
        progress.wish,
        languageCode: LocaleService.instance.effectiveLanguageCode,
      );
    } catch (error, stack) {
      debugPrint('Personalized content could not be restored: $error\n$stack');
    }
  }
  var onboardingDone = false;
  try {
    onboardingDone = await OnboardingService.isDone();
  } catch (error, stack) {
    debugPrint('Onboarding state could not be loaded: $error\n$stack');
  }
  int? launchTabIndex;
  try {
    launchTabIndex = await NotificationService.instance.consumeLaunchTabIndex();
  } catch (error, stack) {
    debugPrint('Notifications could not initialize: $error\n$stack');
  }
  final analyticsObserver = AnalyticsService.instance.navigatorObserver;
  runApp(
    LeadLifeApp(
      resumeProgress: progress,
      onboardingDone: onboardingDone,
      launchTabIndex: launchTabIndex,
      navigatorObservers: [?analyticsObserver],
    ),
  );
}

class LeadLifeApp extends StatelessWidget {
  const LeadLifeApp({
    super.key,
    this.resumeProgress,
    required this.onboardingDone,
    this.launchTabIndex,
    this.navigatorObservers = const [],
  });
  final SavedProgress? resumeProgress;
  final bool onboardingDone;
  final int? launchTabIndex;
  // Defaults to empty (rather than wiring AnalyticsService directly) so
  // widget tests can pump this without touching Firebase at all — only
  // main() supplies the real analytics observer.
  final List<NavigatorObserver> navigatorObservers;

  @override
  Widget build(BuildContext context) {
    final Widget home = !onboardingDone
        ? const OnboardingNameScreen()
        : resumeProgress != null
        ? MidDiceScreen(
            currentFieldNum: resumeProgress!.currentFieldNum,
            wish: resumeProgress!.wish,
            completedFields: resumeProgress!.completedFields,
            answers: resumeProgress!.answers,
          )
        : RulesScreen(initialTab: launchTabIndex ?? 0);

    return ValueListenableBuilder<Locale?>(
      valueListenable: LocaleService.instance,
      builder: (context, locale, _) => MaterialApp(
        title: 'Hatchpot',
        locale: locale,
        debugShowCheckedModeBanner: false,
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        // New languages are enabled here only after every user-facing string
        // has been translated and checked, so the UI never mixes languages.
        supportedLocales: const [Locale('en'), Locale('es')],
        navigatorObservers: navigatorObservers,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: llGold, surface: llBg),
          scaffoldBackgroundColor: llBg,
          pageTransitionsTheme: const PageTransitionsTheme(
            builders: {
              TargetPlatform.iOS: FadeUpwardsPageTransitionsBuilder(),
              TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
            },
          ),
        ),
        home: home,
      ),
    );
  }
}
