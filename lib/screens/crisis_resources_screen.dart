import 'package:flutter/material.dart';
import '../app_theme.dart';
import '../l10n/app_localizations.dart';
import '../widgets/ll_widgets.dart';

// Shown instead of the game board when the backend's crisis-safety filter
// declines to generate content for what was typed in. Deliberately calm and
// not a dead end — the player can always go back and write something else.
class CrisisResourcesScreen extends StatelessWidget {
  const CrisisResourcesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return Scaffold(
      backgroundColor: llBg,
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(l10n.crisisResourcesHeading, style: llSerif(size: 26, height: 1.2)),
                  const SizedBox(height: 16),
                  Text(
                    l10n.crisisResourcesBody,
                    style: llUi(size: 14.5, color: llMuted).copyWith(height: 1.6),
                  ),
                  const SizedBox(height: 32),
                  LLCTA(
                    label: l10n.crisisResourcesBackCta,
                    onTap: () => Navigator.of(context).popUntil((r) => r.isFirst),
                  ),
                ],
              ),
            ),
            LLBackArrow(onTap: () => Navigator.of(context).maybePop()),
          ],
        ),
      ),
    );
  }
}
