import 'package:flutter/material.dart';
import '../app_theme.dart';
import '../widgets/ll_widgets.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
                  Text('About the System', textAlign: TextAlign.center, style: llSerif(size: 26, weight: FontWeight.w600, height: 1.2)),
                  const SizedBox(height: 20),
                  const LLHairline(width: 48),
                  const SizedBox(height: 24),
                  Text(
                    'Lead Life is built around 32 fields, arranged in one continuous path.',
                    textAlign: TextAlign.center,
                    style: llSerifItalic(size: 15.5, height: 1.6),
                  ),
                  const SizedBox(height: 24),
                  Text('10 Levels of Reality', textAlign: TextAlign.center, style: llSerif(size: 19, weight: FontWeight.w600)),
                  const SizedBox(height: 10),
                  Text(
                    'The layers your intention moves through — from the concrete circumstances '
                    'of your life to the deeper states behind them.',
                    textAlign: TextAlign.center,
                    style: llUi(size: 14, color: llMuted),
                  ),
                  const SizedBox(height: 28),
                  Text('22 Life Strategies', textAlign: TextAlign.center, style: llSerif(size: 19, weight: FontWeight.w600)),
                  const SizedBox(height: 10),
                  Text(
                    'Different ways of thinking, choosing, feeling and acting. You don\'t need '
                    'to study them — you simply move through the ones your path leads you to.',
                    textAlign: TextAlign.center,
                    style: llUi(size: 14, color: llMuted),
                  ),
                  const SizedBox(height: 28),
                  Text('Your Success Code', textAlign: TextAlign.center, style: llSerif(size: 19, weight: FontWeight.w600)),
                  const SizedBox(height: 10),
                  Text(
                    'At the end of the journey, your own decisions and insights are brought '
                    'together into a personal code — not a universal answer, but a map back to your desire.',
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
