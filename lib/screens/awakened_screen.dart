import 'package:flutter/material.dart';
import '../app_theme.dart';
import '../widgets/ll_widgets.dart';
import 'game_board_screen.dart';

class AwakenedScreen extends StatelessWidget {
  const AwakenedScreen({super.key, required this.wish});
  final String wish;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: llBg,
      body: Stack(
        children: [
          SafeArea(
            child: Column(
              children: [
                const SizedBox(height: 80),
                // Glow ring + logo
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      width: 120, height: 120,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: RadialGradient(
                          colors: [llGold.withAlpha(48), Colors.transparent],
                          stops: const [0, 0.65],
                        ),
                      ),
                    ),
                    const LLLogo(size: 64, color: llGold),
                  ],
                ),
                const SizedBox(height: 44),
                const LLSmallCaps('Field 01 awaits', color: llGold),
                const SizedBox(height: 10),
                Text(
                  'Your journey\nhas begun.',
                  textAlign: TextAlign.center,
                  style: llSerif(size: 28, height: 1.2),
                ),
                const SizedBox(height: 14),
                const Center(child: LLHairline(width: 36)),
                const SizedBox(height: 14),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  child: Text(
                    'The path will respond to your intention.\nWalk it with patience.',
                    textAlign: TextAlign.center,
                    style: llSerifItalic(size: 14, height: 1.7),
                  ),
                ),
                const Spacer(),
                // Wish frame
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 28),
                  child: Container(
                    padding: const EdgeInsets.all(18),
                    decoration: BoxDecoration(
                      color: llCardBg,
                      borderRadius: BorderRadius.circular(14),
                      border: Border.all(color: const Color(0x50C8A96E)),
                      boxShadow: const [BoxShadow(color: Color(0x0FB4A078), blurRadius: 20, offset: Offset(0, 4))],
                    ),
                    child: Column(
                      children: [
                        const LLSmallCaps('Held in light', size: 9),
                        const SizedBox(height: 6),
                        Text('"$wish"',
                          textAlign: TextAlign.center,
                          style: llSerifItalic(size: 15, color: llInk, height: 1.45)),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: LLCTA(
                    label: 'Enter Field 01  →',
                    onTap: () {
                      Navigator.of(context).pushAndRemoveUntil(
                        _fadeRoute(GameBoardScreen(wish: wish, currentFieldNum: 1, completedFields: const [], answers: const {})),
                        (_) => false,
                      );
                    },
                  ),
                ),
                const SizedBox(height: 40),
              ],
            ),
          ),
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
