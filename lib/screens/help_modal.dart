import 'package:flutter/material.dart';
import '../app_theme.dart';
import '../widgets/ll_widgets.dart';

class HelpModal extends StatelessWidget {
  const HelpModal({super.key, required this.onClose});
  final VoidCallback onClose;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClose,
      child: Container(
        color: Colors.black.withAlpha(114),
        child: Center(
          child: GestureDetector(
            onTap: () {}, // prevent dismissal when tapping modal content
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 24),
              padding: const EdgeInsets.all(28),
              decoration: BoxDecoration(
                color: llCardBg,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: const Color(0x40C8A96E)),
                boxShadow: const [BoxShadow(color: Color(0x1FB4A078), blurRadius: 24, offset: Offset(0, 8))],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const LLLogo(size: 32, color: llGold),
                  const SizedBox(height: 14),
                  const LLSmallCaps('An example'),
                  const SizedBox(height: 10),
                  Text(
                    'How a desire is named',
                    textAlign: TextAlign.center,
                    style: llSerif(size: 22, height: 1.2),
                  ),
                  const SizedBox(height: 18),
                  const LLHairline(width: 40),
                  const SizedBox(height: 18),
                  // Good example
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                    decoration: BoxDecoration(
                      color: llBg,
                      borderRadius: BorderRadius.circular(12),
                      border: const Border(left: BorderSide(color: llGold, width: 3)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('YES — PRESENT PERFECT',
                          style: llUi(size: 10, color: llGreen, letterSpacing: 1.5, weight: FontWeight.w600)),
                        const SizedBox(height: 4),
                        Text(
                          '"I have built a life where my work and my truth are the same thing."',
                          style: llSerifItalic(size: 15, color: llInk, height: 1.5),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  // Bad example
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                    decoration: BoxDecoration(
                      color: llBg,
                      borderRadius: BorderRadius.circular(12),
                      border: const Border(left: BorderSide(color: llViolet, width: 3)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('NOT YET — FUTURE TENSE',
                          style: llUi(size: 10, color: llViolet, letterSpacing: 1.5, weight: FontWeight.w600)),
                        const SizedBox(height: 4),
                        Text(
                          '"I want to build a life where…"',
                          style: llSerifItalic(size: 15, color: llMuted, height: 1.5),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 18),
                  Text(
                    'Speak as if it has already come.\nThe path responds to certainty.',
                    textAlign: TextAlign.center,
                    style: llUi(size: 12.5, color: llMuted),
                  ),
                  const SizedBox(height: 20),
                  LLCTA(label: 'I Understand', onTap: onClose),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
