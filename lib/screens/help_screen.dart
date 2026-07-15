import 'package:flutter/material.dart';
import '../app_theme.dart';
import '../widgets/ll_widgets.dart';

class HelpScreen extends StatelessWidget {
  const HelpScreen({super.key});

  static const _items = [
    (
      q: 'What is leadlife?',
      a: 'A guided journey built around one intention you set — helping you clarify what you want, shift your inner state, and find your direction.',
    ),
    (
      q: 'How does the dice work?',
      a: 'Roll to see if your intention is ready. If it is, your journey begins. If not, you receive a clue to refine it and try again.',
    ),
    (
      q: 'What if I get stuck on a field?',
      a: 'Answer honestly, in a few words. There are no wrong answers — each field simply shifts your focus for a moment.',
    ),
    (
      q: 'Where do my saved intentions go?',
      a: 'Anything you save in the Diary tab stays in its history, right there on your device.',
    ),
    (
      q: 'Can I change my intention later?',
      a: 'Yes — write a new one any time from the Diary tab and check it against your path.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
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
                  Text('Help', textAlign: TextAlign.center, style: llSerif(size: 28, weight: FontWeight.w600)),
                  const SizedBox(height: 8),
                  Text(
                    'Answers to the questions we hear most.',
                    textAlign: TextAlign.center,
                    style: llSerifItalic(size: 14, height: 1.5),
                  ),
                  const SizedBox(height: 28),
                  for (final item in _items)
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
