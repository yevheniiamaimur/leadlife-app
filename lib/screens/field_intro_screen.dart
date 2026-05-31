import 'package:flutter/material.dart';
import '../app_theme.dart';
import '../models/field.dart';
import '../widgets/ll_widgets.dart';
import 'field_task_screen.dart';

class FieldIntroScreen extends StatelessWidget {
  const FieldIntroScreen({
    super.key,
    required this.field,
    required this.wish,
    required this.completedFields,
    required this.answers,
  });

  final GameField field;
  final String wish;
  final List<int> completedFields;
  final Map<int, String> answers;

  @override
  Widget build(BuildContext context) {
    final accent = field.color;

    return Scaffold(
      backgroundColor: llBg,
      body: Stack(
        children: [
          // Tinted wash from top
          Positioned(
            top: 0, left: 0, right: 0,
            height: MediaQuery.of(context).size.height * 0.6,
            child: DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [accent.withAlpha(32), Colors.transparent],
                ),
              ),
            ),
          ),
          SafeArea(
            child: Column(
              children: [
                const SizedBox(height: 56),
                // Glyph area
                Expanded(
                  flex: 5,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      // Radial background
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          gradient: RadialGradient(
                            colors: [accent.withAlpha(48), Colors.transparent],
                            radius: 0.7,
                          ),
                        ),
                      ),
                      LLWatermark(size: 200, opacity: 0.04),
                      FieldGlyph(color: accent, size: 140),
                    ],
                  ),
                ),
                // Field number badge
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 4),
                  decoration: BoxDecoration(
                    color: llCardBg,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: accent, width: 1),
                  ),
                  child: Text(
                    'FIELD ${field.paddedNumber}',
                    style: llUi(size: 10, color: accent, letterSpacing: 2.0, weight: FontWeight.w600),
                  ),
                ),
                const SizedBox(height: 18),
                // Field name
                Text(
                  field.name,
                  textAlign: TextAlign.center,
                  style: llSerif(size: 30, height: 1.1).copyWith(letterSpacing: 2.5),
                ),
                const SizedBox(height: 6),
                Text(
                  field.subtitle,
                  style: llSerifItalic(size: 13.5, color: llMuted, height: 1.4),
                ),
                const SizedBox(height: 24),
                // Intro text
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  child: Text(
                    field.intro,
                    textAlign: TextAlign.center,
                    style: llSerifItalic(size: 15, color: llInk, height: 1.75),
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: LLCTA(
                    label: 'Receive My Task  →',
                    onTap: () => Navigator.of(context).push(_fadeRoute(FieldTaskScreen(
                      field: field,
                      wish: wish,
                      initialAnswer: answers[field.n] ?? '',
                      completedFields: completedFields,
                      answers: answers,
                    ))),
                  ),
                ),
                const SizedBox(height: 40),
              ],
            ),
          ),
          LLBackArrow(onTap: () => Navigator.of(context).maybePop()),
          WishStrip(wish: wish),
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
