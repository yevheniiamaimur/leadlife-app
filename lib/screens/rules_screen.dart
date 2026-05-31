import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../app_theme.dart';
import '../widgets/ll_widgets.dart';
import 'wish_entry_screen.dart';
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
                const SizedBox(height: 28),
                // Logo + title
                Column(
                  children: [
                    const LLLogo(size: 40, color: llGold),
                    const SizedBox(height: 10),
                    Text(
                      'The Rule of One',
                      style: GoogleFonts.inter(
                        fontSize: 11,
                        fontWeight: FontWeight.w600,
                        color: llGold,
                        letterSpacing: 2.5,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 36),
                // Hero dice
                LLDice(pips: 1, size: 150, glow: true, highlight: true),
                const SizedBox(height: 36),
                // Poetic statement
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  child: Column(
                    children: [
                      Text(
                        'The path awakens\nwith a single One.',
                        textAlign: TextAlign.center,
                        style: llSerif(size: 26, height: 1.2),
                      ),
                      const SizedBox(height: 14),
                      const LLHairline(width: 40),
                      const SizedBox(height: 14),
                      Text(
                        'Name your desire. Roll until the universe answers.\nIf not, refine your wish — and roll again.',
                        textAlign: TextAlign.center,
                        style: llSerifItalic(size: 14, height: 1.7),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                // Rule strip
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 14),
                    decoration: BoxDecoration(
                      color: llCardBg,
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: const [BoxShadow(color: Color(0x0FB4A078), blurRadius: 20, offset: Offset(0, 4))],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        _RuleChip(n: '1', label: 'Name'),
                        _RuleChip(n: '2', label: 'Roll'),
                        _RuleChip(n: '3', label: 'Refine'),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                // CTA
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: LLCTA(
                    label: "I'm Ready",
                    onTap: () => Navigator.of(context).push(
                      _fadeRoute(const WishEntryScreen()),
                    ),
                  ),
                ),
                const SizedBox(height: 40),
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

class _RuleChip extends StatelessWidget {
  const _RuleChip({required this.n, required this.label});
  final String n;
  final String label;

  @override
  Widget build(BuildContext context) => Row(
    children: [
      Container(
        width: 18, height: 18,
        decoration: const BoxDecoration(shape: BoxShape.circle, color: llGold),
        child: Center(
          child: Text(n, style: llSerif(size: 10, color: Colors.white, weight: FontWeight.w600)),
        ),
      ),
      const SizedBox(width: 6),
      Text(label, style: llUi(size: 12, letterSpacing: 0.3)),
    ],
  );
}

PageRouteBuilder<T> _fadeRoute<T>(Widget page) => PageRouteBuilder(
  pageBuilder: (_, _, _) => page,
  transitionsBuilder: (_, a, _, child) => FadeTransition(opacity: a, child: child),
  transitionDuration: const Duration(milliseconds: 350),
);
