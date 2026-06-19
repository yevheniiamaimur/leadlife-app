import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'app_theme.dart';
import 'screens/mid_dice_screen.dart';
import 'screens/rules_screen.dart';
import 'services/progress_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  final progress = await ProgressService.load();
  runApp(LeadLifeApp(resumeProgress: progress));
}

class LeadLifeApp extends StatelessWidget {
  const LeadLifeApp({super.key, this.resumeProgress});
  final SavedProgress? resumeProgress;

  @override
  Widget build(BuildContext context) {
    final Widget home = resumeProgress != null
        ? MidDiceScreen(
            currentFieldNum: resumeProgress!.currentFieldNum,
            wish: resumeProgress!.wish,
            completedFields: resumeProgress!.completedFields,
            answers: resumeProgress!.answers,
          )
        : const RulesScreen();

    return MaterialApp(
      title: 'Lead Life',
      debugShowCheckedModeBanner: false,
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
