import 'package:flutter/material.dart';
import '../app_theme.dart';
import '../widgets/ll_widgets.dart';
import 'wish_entry_screen.dart';
import 'how_to_play_screen.dart';
import 'help_modal.dart';

class RulesScreen extends StatefulWidget {
  const RulesScreen({super.key});
  @override
  State<RulesScreen> createState() => _RulesScreenState();
}

class _RulesScreenState extends State<RulesScreen> {
  bool _showHelp = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: llBg,
      body: Stack(
        children: [
          SafeArea(
            child: Column(
              children: [
                const SizedBox(height: 64),
                const LLLogo(size: 88, color: llGold),
                const SizedBox(height: 20),
                Text(
                  'Welcome',
                  textAlign: TextAlign.center,
                  style: llSerif(size: 20, weight: FontWeight.w600),
                ),
                const SizedBox(height: 28),
                // Wish preview card — taps straight through to the wish screen
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 28),
                  child: GestureDetector(
                    onTap: () => Navigator.of(context).push(_fadeRoute(const WishEntryScreen())),
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 26),
                      decoration: BoxDecoration(
                        color: llCardBg,
                        borderRadius: BorderRadius.circular(24),
                        border: Border.all(color: llGold.withAlpha(46)),
                        boxShadow: [
                          BoxShadow(color: llGold.withAlpha(56), blurRadius: 36, offset: const Offset(0, 14)),
                          BoxShadow(color: llGold.withAlpha(30), blurRadius: 8, offset: const Offset(0, 2)),
                        ],
                      ),
                      child: Column(
                        children: [
                          Text(
                            "What's your wish?",
                            textAlign: TextAlign.center,
                            style: llSerif(size: 22, height: 1.2, weight: FontWeight.w600),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            'Write in the present perfect tense — as if it has already come true.',
                            textAlign: TextAlign.center,
                            style: llSerifItalic(size: 13, height: 1.5),
                          ),
                          const SizedBox(height: 20),
                          Container(
                            width: double.infinity,
                            padding: const EdgeInsets.only(bottom: 8),
                            decoration: BoxDecoration(border: Border(bottom: BorderSide(color: llHair))),
                            child: Text(
                              'Type it here…',
                              textAlign: TextAlign.center,
                              style: llUi(size: 13, color: llMutedSoft),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 14),
                // Two separate nav buttons
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 28),
                  child: Row(
                    children: [
                      Expanded(
                        child: _NavButton(
                          label: 'How It Works',
                          onTap: () => Navigator.of(context).push(_fadeRoute(const HowToPlayScreen())),
                        ),
                      ),
                      const SizedBox(width: 14),
                      Expanded(
                        child: _NavButton(
                          label: 'Build Success Code',
                          onTap: () => Navigator.of(context).push(_fadeRoute(const WishEntryScreen())),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 32),
                const LLMarquee(text: 'lead life   lead life', uppercase: false),
                const Spacer(),
              ],
            ),
          ),
          // Help button
          LLHelpBtn(
            left: 22,
            showLabel: true,
            onTap: () => setState(() => _showHelp = true),
          ),
          if (_showHelp)
            HelpModal(onClose: () => setState(() => _showHelp = false)),
        ],
      ),
    );
  }
}

class _NavButton extends StatelessWidget {
  const _NavButton({required this.label, required this.onTap});
  final String label;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) => GestureDetector(
    onTap: onTap,
    child: Container(
      height: 56,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: llGold,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [BoxShadow(color: llGold.withAlpha(70), blurRadius: 14, offset: const Offset(0, 4))],
      ),
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Text(
        label,
        textAlign: TextAlign.center,
        style: llUi(size: 12, color: Colors.white, weight: FontWeight.w600, letterSpacing: 0.2),
      ),
    ),
  );
}

PageRouteBuilder<T> _fadeRoute<T>(Widget page) => PageRouteBuilder(
  pageBuilder: (_, _, _) => page,
  transitionsBuilder: (_, a, _, child) => FadeTransition(opacity: a, child: child),
  transitionDuration: const Duration(milliseconds: 350),
);
