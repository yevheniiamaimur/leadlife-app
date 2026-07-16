import 'package:flutter/material.dart';
import '../app_theme.dart';
import '../l10n/app_localizations.dart';
import '../widgets/ll_widgets.dart';
import 'onboarding_birthday_screen.dart';

class OnboardingNameScreen extends StatefulWidget {
  const OnboardingNameScreen({super.key});
  @override
  State<OnboardingNameScreen> createState() => _OnboardingNameScreenState();
}

class _OnboardingNameScreenState extends State<OnboardingNameScreen> {
  final _ctrl = TextEditingController();

  @override
  void dispose() {
    _ctrl.dispose();
    super.dispose();
  }

  bool get _canContinue => _ctrl.text.trim().isNotEmpty;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: llBg,
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 28),
              Center(child: LLSmallCaps(AppLocalizations.of(context).onboardingStepOfFive(1), color: llGold)),
              const SizedBox(height: 28),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(AppLocalizations.of(context).onboardingNameGreeting, style: llSerif(size: 28, height: 1.2)),
                    const SizedBox(height: 10),
                    Text(
                      AppLocalizations.of(context).onboardingNamePrompt,
                      style: llSerifItalic(size: 14, height: 1.5),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 32),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: Container(
                  decoration: llCardDecoration(),
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 6),
                  child: ValueListenableBuilder<TextEditingValue>(
                    valueListenable: _ctrl,
                    builder: (_, _, _) => TextField(
                      controller: _ctrl,
                      autofocus: true,
                      textCapitalization: TextCapitalization.words,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: AppLocalizations.of(context).yourNameHint,
                        hintStyle: llSerifItalic(size: 17, color: llHair),
                      ),
                      style: llSerif(size: 17),
                      cursorColor: llGold,
                      cursorWidth: 1.5,
                      onSubmitted: (_) {
                        if (_canContinue) _goNext(context);
                      },
                    ),
                  ),
                ),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: ValueListenableBuilder<TextEditingValue>(
                  valueListenable: _ctrl,
                  builder: (_, _, _) => LLCTA(
                    label: AppLocalizations.of(context).continueButton,
                    enabled: _canContinue,
                    onTap: _canContinue ? () => _goNext(context) : null,
                  ),
                ),
              ),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }

  void _goNext(BuildContext context) {
    FocusScope.of(context).unfocus();
    Navigator.of(context).push(_fadeRoute(
      OnboardingBirthdayScreen(name: _ctrl.text.trim()),
    ));
  }
}

PageRouteBuilder<T> _fadeRoute<T>(Widget page) => PageRouteBuilder(
  pageBuilder: (_, _, _) => page,
  transitionsBuilder: (_, a, _, child) => FadeTransition(opacity: a, child: child),
  transitionDuration: const Duration(milliseconds: 350),
);
