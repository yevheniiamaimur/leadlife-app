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
import 'services/notification_service.dart';
import 'services/onboarding_service.dart';
import 'services/progress_service.dart';
import 'services/cloud_sync_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await FirebaseAppCheck.instance.activate(
    providerAndroid: kDebugMode
        ? const AndroidDebugProvider()
        : const AndroidPlayIntegrityProvider(),
    providerApple: kDebugMode
        ? const AppleDebugProvider()
        : const AppleAppAttestWithDeviceCheckFallbackProvider(),
  );
  await AuthService.instance.ensureSignedIn();
  await CloudSyncService.instance.restoreOrUpload();

  // Route uncaught errors to Crashlytics instead of just the console —
  // debug builds still print to console too, via debugPrint below.
  FlutterError.onError = (details) {
    FlutterError.presentError(details);
    FirebaseCrashlytics.instance.recordFlutterFatalError(details);
  };
  PlatformDispatcher.instance.onError = (error, stack) {
    FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
    return true;
  };

  final progress = await ProgressService.load();
  if (progress != null) {
    await GameContentService.restore(progress.wish);
  }
  final onboardingDone = await OnboardingService.isDone();
  final launchTabIndex = await NotificationService.instance
      .consumeLaunchTabIndex();
  runApp(
    LeadLifeApp(
      resumeProgress: progress,
      onboardingDone: onboardingDone,
      launchTabIndex: launchTabIndex,
      navigatorObservers: [AnalyticsService.instance.navigatorObserver],
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

    return MaterialApp(
      title: 'leadlife',
      debugShowCheckedModeBanner: false,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
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
    );
  }
}
