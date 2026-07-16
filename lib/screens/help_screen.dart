import 'package:flutter/material.dart';
import '../app_theme.dart';
import '../l10n/app_localizations.dart';
import '../widgets/ll_widgets.dart';

class HelpScreen extends StatelessWidget {
  const HelpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final items = [
      (q: l10n.helpFaqWhatIsLeadlifeQ, a: l10n.helpFaqWhatIsLeadlifeA),
      (q: l10n.helpFaqDiceQ, a: l10n.helpFaqDiceA),
      (q: l10n.helpFaqStuckFieldQ, a: l10n.helpFaqStuckFieldA),
      (q: l10n.helpFaqSavedIntentionsQ, a: l10n.helpFaqSavedIntentionsA),
      (q: l10n.helpFaqChangeIntentionQ, a: l10n.helpFaqChangeIntentionA),
    ];
    return Scaffold(
      backgroundColor: llBg,
      body: Stack(
        children: [
          SafeArea(
            child: SingleChildScrollView(
              padding: const EdgeInsets.fromLTRB(24, 96, 24, 40),
              child: Column(
                children: [
                  const LLLogo(size: 48, color: llGold),
                  const SizedBox(height: 16),
                  Text(l10n.drawerHelp, textAlign: TextAlign.center, style: llSerif(size: 28, weight: FontWeight.w600)),
                  const SizedBox(height: 8),
                  Text(
                    l10n.helpSubtitle,
                    textAlign: TextAlign.center,
                    style: llSerifItalic(size: 14, height: 1.5),
                  ),
                  const SizedBox(height: 28),
                  for (final item in items)
                    Padding(
                      padding: const EdgeInsets.only(bottom: 16),
                      child: Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(18),
                        decoration: llCardDecoration(),
                        child: Column(
                          children: [
                            Text(item.q, textAlign: TextAlign.center, style: llSerif(size: 17, weight: FontWeight.w600)),
                            const SizedBox(height: 8),
                            Text(item.a, textAlign: TextAlign.center, style: llUi(size: 14, color: llMuted, letterSpacing: 0.1)),
                          ],
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ),
          LLBackArrow(onTap: () => Navigator.of(context).maybePop()),
        ],
      ),
    );
  }
}
