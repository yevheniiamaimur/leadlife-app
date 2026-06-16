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
                        color: llInk,
                        letterSpacing: 2.5,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 36),
                // Hero dice
                LLDice(pips: 1, size: 150, glow: true, highlight: true),
                const SizedBox(height: 16),
                Center(child: Container(width: 1, height: 40, color: llHair)),
                const SizedBox(height: 16),
                // Poetic statement
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  child: Text(
                    'The path awakens\nwith a single One.',
                    textAlign: TextAlign.center,
                    style: llSerif(size: 26, height: 1.2),
                  ),
                ),
                const Spacer(),
                LLSmallCaps(
                  'Name · Roll · Refine',
                  size: 10,
                  color: llMuted,
                  letterSpacing: 2.0,
                ),
                const SizedBox(height: 16),
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


PageRouteBuilder<T> _fadeRoute<T>(Widget page) => PageRouteBuilder(
  pageBuilder: (_, _, _) => page,
  transitionsBuilder: (_, a, _, child) => FadeTransition(opacity: a, child: child),
  transitionDuration: const Duration(milliseconds: 350),
);
