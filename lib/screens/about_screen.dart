import 'package:flutter/material.dart';
import '../app_theme.dart';
import '../l10n/app_localizations.dart';
import '../widgets/ll_widgets.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return Scaffold(
      backgroundColor: llBg,
      body: Stack(
        children: [
          SafeArea(
            child: SingleChildScrollView(
              padding: const EdgeInsets.fromLTRB(32, 96, 32, 40),
              child: Column(
                children: [
                  const LLLogo(size: 48, color: llGold),
                  const SizedBox(height: 16),
                  Text(l10n.aboutHeading, textAlign: TextAlign.center, style: llSerif(size: 26, weight: FontWeight.w600, height: 1.2)),
                  const SizedBox(height: 20),
                  const LLHairline(width: 48),
                  const SizedBox(height: 24),
                  Text(
                    l10n.aboutIntro,
                    textAlign: TextAlign.center,
                    style: llSerifItalic(size: 15.5, height: 1.6),
                  ),
                  const SizedBox(height: 24),
                  Text(l10n.tenLevelsHeading, textAlign: TextAlign.center, style: llSerif(size: 19, weight: FontWeight.w600)),
                  const SizedBox(height: 10),
                  Text(
                    l10n.tenLevelsBody,
                    textAlign: TextAlign.center,
                    style: llUi(size: 14, color: llMuted),
                  ),
                  const SizedBox(height: 28),
                  Text(l10n.lifeStrategiesHeading, textAlign: TextAlign.center, style: llSerif(size: 19, weight: FontWeight.w600)),
                  const SizedBox(height: 10),
                  Text(
                    l10n.lifeStrategiesBody,
                    textAlign: TextAlign.center,
                    style: llUi(size: 14, color: llMuted),
                  ),
                  const SizedBox(height: 28),
                  Text(l10n.successCodeHeading, textAlign: TextAlign.center, style: llSerif(size: 19, weight: FontWeight.w600)),
                  const SizedBox(height: 10),
                  Text(
                    l10n.successCodeBody,
                    textAlign: TextAlign.center,
                    style: llUi(size: 14, color: llMuted),
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
