import 'package:flutter/material.dart';
import '../app_theme.dart';
import '../l10n/app_localizations.dart';
import '../services/legal_consent_service.dart';
import '../widgets/ll_widgets.dart';
import 'onboarding_name_screen.dart';

// A blocking legal/safety gate shown once, before onboarding's numbered
// steps begin. Deliberately has no step indicator — it isn't part of the
// journey-building flow, it's a prerequisite to it.
class OnboardingDisclaimerScreen extends StatefulWidget {
  const OnboardingDisclaimerScreen({super.key});

  @override
  State<OnboardingDisclaimerScreen> createState() => _OnboardingDisclaimerScreenState();
}

class _OnboardingDisclaimerScreenState extends State<OnboardingDisclaimerScreen> {
  bool _ackChecked = false;

  void _toggleAck() => setState(() => _ackChecked = !_ackChecked);

  Future<void> _continue() async {
    await LegalConsentService.recordDisclaimerAccepted();
    if (!mounted) return;
    Navigator.of(context).pushReplacement(_fadeRoute(const OnboardingNameScreen()));
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return Scaffold(
      backgroundColor: llBg,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 48),
              LLSmallCaps(l10n.aiDisclaimerHeading, color: llGold),
              const SizedBox(height: 20),
              Expanded(
                child: SingleChildScrollView(
                  child: Text(
                    l10n.aiDisclaimerBody,
                    style: llUi(size: 14.5, color: llMuted).copyWith(height: 1.6),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              GestureDetector(
                onTap: _toggleAck,
                child: Container(
                  decoration: llCardDecoration(borderColor: _ackChecked ? llGold : llHair).copyWith(
                    color: _ackChecked ? llGold.withAlpha(18) : llCardBg,
                  ),
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        _ackChecked ? Icons.check_box_rounded : Icons.check_box_outline_blank_rounded,
                        size: 24,
                        color: _ackChecked ? llGold : llMutedSoft,
                      ),
                      const SizedBox(width: 14),
                      Expanded(
                        child: Text(
                          l10n.aiDisclaimerCheckboxLabel,
                          style: llUi(size: 13.5, color: llMuted),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              LLCTA(
                label: l10n.continueButton,
                enabled: _ackChecked,
                onTap: _ackChecked ? _continue : null,
              ),
              const SizedBox(height: 40),
            ],
          ),
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
