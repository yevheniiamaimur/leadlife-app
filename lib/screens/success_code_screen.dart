import 'package:flutter/material.dart';
import '../app_theme.dart';
import '../models/field.dart';
import '../widgets/ll_widgets.dart';
import 'rules_screen.dart';

class SuccessCodeScreen extends StatelessWidget {
  const SuccessCodeScreen({
    super.key,
    required this.wish,
    required this.answers,
    required this.currentAreaField,
  });

  final String wish;
  final Map<int, String> answers;
  final GameField currentAreaField;

  @override
  Widget build(BuildContext context) {
    final entries = answers.entries.toList()..sort((a, b) => a.key.compareTo(b.key));

    return Scaffold(
      backgroundColor: llBg,
      body: Stack(
        children: [
          // Gold dawn gradient
          Positioned(
            top: 0, left: 0, right: 0,
            height: 220,
            child: DecoratedBox(
              decoration: BoxDecoration(
                gradient: RadialGradient(
                  center: Alignment.topCenter,
                  radius: 1.2,
                  colors: [llGold.withAlpha(40), Colors.transparent],
                ),
              ),
            ),
          ),
          SafeArea(
            child: Column(
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Column(
                      children: [
                        const SizedBox(height: 60),
                        // Logo + wordmark
                        const LLLogo(size: 56, color: llGold),
                        const SizedBox(height: 14),
                        Text(
                          'LEAD LIFE',
                          style: llSerif(size: 13, color: llGold).copyWith(
                            letterSpacing: 4,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(height: 28),
                        // Heading
                        Text(
                          'Your Journey\nis Complete',
                          textAlign: TextAlign.center,
                          style: llSerif(size: 28, height: 1.15),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          'You have walked all 32 paths.\nThis is your Success Code.',
                          textAlign: TextAlign.center,
                          style: llSerifItalic(size: 14, color: llMuted, height: 1.6),
                        ),
                        const SizedBox(height: 24),
                        const Center(child: LLHairline(width: 48)),
                        const SizedBox(height: 24),
                        // Original desire
                        Container(
                          width: double.infinity,
                          padding: const EdgeInsets.all(22),
                          decoration: BoxDecoration(
                            color: llCardBg,
                            borderRadius: BorderRadius.circular(16),
                            border: Border.all(color: const Color(0x80C8A96E)),
                            boxShadow: const [BoxShadow(color: Color(0x0FB4A078), blurRadius: 20, offset: Offset(0, 4))],
                          ),
                          child: Column(
                            children: [
                              const LLSmallCaps('Your Original Desire'),
                              const SizedBox(height: 8),
                              Text(
                                '"$wish"',
                                textAlign: TextAlign.center,
                                style: llSerifItalic(size: 16, color: llInk, height: 1.5),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 22),
                        // Current area of action
                        Column(
                          children: [
                            LLSmallCaps('Your current area of action', size: 10, color: llMuted),
                            const SizedBox(height: 6),
                            Text(
                              currentAreaField.name,
                              textAlign: TextAlign.center,
                              style: llSerif(size: 22, height: 1.2).copyWith(letterSpacing: 2),
                            ),
                            const SizedBox(height: 4),
                            Text(currentAreaField.subtitle,
                              style: llSerifItalic(size: 13, color: llMuted)),
                          ],
                        ),
                        const SizedBox(height: 28),
                        // Discovered answers
                        Text(
                          'What you have discovered',
                          style: llUi(size: 13, weight: FontWeight.w600),
                        ),
                        const SizedBox(height: 12),
                        if (entries.isEmpty)
                          Padding(
                            padding: const EdgeInsets.all(8),
                            child: Text(
                              'Your answers will appear here.',
                              style: llSerifItalic(size: 13, color: llMutedSoft),
                            ),
                          )
                        else
                          Column(
                            children: entries.map((e) {
                              final field = kFields.firstWhere((f) => f.n == e.key);
                              return Padding(
                                padding: const EdgeInsets.only(bottom: 14),
                                child: Container(
                                  width: double.infinity,
                                  padding: const EdgeInsets.fromLTRB(14, 10, 14, 10),
                                  decoration: const BoxDecoration(
                                    border: Border(left: BorderSide(color: Color(0x80C8A96E), width: 2)),
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      LLSmallCaps(field.name, size: 9, letterSpacing: 2.5),
                                      const SizedBox(height: 3),
                                      Text('"${e.value}"',
                                        style: llSerifItalic(size: 14, color: llInk, height: 1.5)),
                                    ],
                                  ),
                                ),
                              );
                            }).toList(),
                          ),
                        const SizedBox(height: 24),
                        // Closing line
                        const Center(child: LLHairline(width: 28)),
                        const SizedBox(height: 18),
                        Text(
                          'The golden fish is already on its way.\nYour work is to believe — and to act.',
                          textAlign: TextAlign.center,
                          style: llSerifItalic(size: 15, color: llGold, height: 1.6),
                        ),
                        const SizedBox(height: 32),
                      ],
                    ),
                  ),
                ),
                // Fixed bottom CTAs
                Container(
                  padding: const EdgeInsets.fromLTRB(24, 12, 24, 0),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [llBg, llBg.withAlpha(0)],
                      stops: const [0.7, 1.0],
                    ),
                  ),
                  child: SafeArea(
                    top: false,
                    child: Column(
                      children: [
                        LLCTA(
                          label: 'Start a New Journey',
                          onTap: () => Navigator.of(context).pushAndRemoveUntil(
                            _fadeRoute(const RulesScreen()),
                            (_) => false,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
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
