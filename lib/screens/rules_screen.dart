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
                // Glowing menu panel
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 28),
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: llCardBg,
                        borderRadius: BorderRadius.circular(28),
                        border: Border.all(color: llGold.withAlpha(46)),
                        boxShadow: [
                          BoxShadow(color: llGold.withAlpha(64), blurRadius: 44, offset: const Offset(0, 16)),
                          BoxShadow(color: llGold.withAlpha(36), blurRadius: 10, offset: const Offset(0, 2)),
                        ],
                      ),
                      child: Column(
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                Expanded(
                                  child: _MenuTile(
                                    label: 'Check My Wish',
                                    icon: Icons.auto_awesome_outlined,
                                    color: const Color(0xFF06578C),
                                    onTap: () => Navigator.of(context).push(_fadeRoute(const WishEntryScreen())),
                                  ),
                                ),
                                const SizedBox(width: 14),
                                Expanded(
                                  child: _MenuTile(
                                    label: 'Build Success Code',
                                    icon: Icons.workspace_premium_outlined,
                                    color: const Color(0xFF15B263),
                                    onTap: () => Navigator.of(context).push(_fadeRoute(const WishEntryScreen())),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 14),
                          Expanded(
                            child: Row(
                              children: [
                                Expanded(
                                  child: _MenuTile(
                                    label: 'How It Works',
                                    icon: Icons.menu_book_outlined,
                                    color: llGold,
                                    onTap: () => Navigator.of(context).push(_fadeRoute(const HowToPlayScreen())),
                                  ),
                                ),
                                const SizedBox(width: 14),
                                const Expanded(child: SizedBox()),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
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

class _MenuTile extends StatelessWidget {
  const _MenuTile({required this.label, required this.icon, required this.color, required this.onTap});
  final String label;
  final IconData icon;
  final Color color;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final accent = llReadableAccent(color);
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Color.alphaBlend(color.withAlpha(28), llBg),
          borderRadius: BorderRadius.circular(18),
          border: Border.all(color: color.withAlpha(70)),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: accent, size: 26),
            const SizedBox(height: 8),
            Text(
              label,
              textAlign: TextAlign.center,
              style: llUi(size: 12, color: accent, weight: FontWeight.w600, letterSpacing: 0.2),
            ),
          ],
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
