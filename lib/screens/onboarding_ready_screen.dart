import 'package:flutter/material.dart';
import '../app_theme.dart';
import '../services/onboarding_service.dart';
import '../widgets/ll_widgets.dart';
import 'rules_screen.dart';

class OnboardingReadyScreen extends StatelessWidget {
  const OnboardingReadyScreen({
    super.key,
    required this.name,
    required this.birthday,
    required this.email,
    required this.focus,
  });
  final String name;
  final DateTime birthday;
  final String email;
  final String focus;

  Future<void> _start(BuildContext context) async {
    await OnboardingService.markDone();
    if (!context.mounted) return;
    Navigator.of(context).pushAndRemoveUntil(
      _fadeRoute(const RulesScreen()),
      (_) => false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: llBg,
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 28),
                LLSmallCaps('Step 5 of 5', color: llGold),
                const Spacer(),
                const LLLogo(size: 72, color: llGold),
                const SizedBox(height: 36),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('Take a breath in.', textAlign: TextAlign.center, style: llSerif(size: 26, height: 1.3)),
                      const SizedBox(height: 6),
                      Text('And out.', textAlign: TextAlign.center, style: llSerif(size: 26, height: 1.3)),
                      const SizedBox(height: 18),
                      Text(
                        '$name, your path is about to begin.',
                        textAlign: TextAlign.center,
                        style: llSerifItalic(size: 15, height: 1.5),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  child: LLCTA(
                    label: "Let's Start",
                    onTap: () => _start(context),
                  ),
                ),
                const SizedBox(height: 40),
              ],
            ),
            LLBackArrow(onTap: () => Navigator.of(context).maybePop()),
          ],
        ),
      ),
    );
  }
}

PageRouteBuilder<T> _fadeRoute<T>(Widget page) => PageRouteBuilder(
  pageBuilder: (_, _, _) => page,
  transitionsBuilder: (_, a, _, child) => FadeTransition(opacity: a, child: child),
  transitionDuration: const Duration(milliseconds: 350),
);
