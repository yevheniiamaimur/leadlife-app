import 'package:flutter/material.dart';
import '../app_theme.dart';
import '../l10n/app_localizations.dart';
import '../models/field.dart';
import '../widgets/ll_widgets.dart';
import '../models/journey_entry.dart';
import '../services/game_history_service.dart';
import '../services/progress_service.dart';
import 'answer_saved_screen.dart';
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
    final bg = field.color;
    final isDark = bg.computeLuminance() < 0.4;
    final onBg = isDark ? Colors.white : llInk;
    final onBgSoft = isDark ? Colors.white.withAlpha(160) : llMuted;

    return Scaffold(
      backgroundColor: bg,
      body: Stack(
        children: [
          SafeArea(
            child: Column(
              children: [
                const SizedBox(height: 56),
                const Spacer(),
                // Field number badge
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 14,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: onBg.withAlpha(100), width: 1),
                  ),
                  child: Text(
                    AppLocalizations.of(
                      context,
                    ).fieldBadgeNumber(field.paddedNumber),
                    style: llUi(
                      size: 10,
                      color: onBg,
                      letterSpacing: 2.0,
                      weight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(height: 18),
                // Field name
                Text(
                  field.name,
                  textAlign: TextAlign.center,
                  style: llSerif(
                    size: 30,
                    height: 1.1,
                    color: onBg,
                    weight: FontWeight.w600,
                  ).copyWith(letterSpacing: 2.5),
                ),
                const SizedBox(height: 6),
                Text(
                  field.subtitle,
                  style: llSerifItalic(
                    size: 13.5,
                    color: onBgSoft,
                    height: 1.4,
                    weight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 28),
                Container(width: 36, height: 1, color: onBg.withAlpha(60)),
                const SizedBox(height: 28),
                // Intro text
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  child: Text(
                    field.intro,
                    textAlign: TextAlign.center,
                    style: llSerifItalic(
                      size: 15,
                      color: onBg,
                      height: 1.75,
                      weight: FontWeight.w500,
                    ),
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: LLCTA(
                    label: field.n == 1
                        ? AppLocalizations.of(context).readyToBeginPathCta
                        : AppLocalizations.of(context).receiveMyTaskCta,
                    variant: 'primary',
                    onTap: field.n == 1
                        ? () => _beginFirstField(context)
                        : () => Navigator.of(context).push(
                            _fadeRoute(
                              FieldTaskScreen(
                                field: field,
                                wish: wish,
                                initialAnswer: answers[field.n] ?? '',
                                completedFields: completedFields,
                                answers: answers,
                              ),
                            ),
                          ),
                  ),
                ),
                const SizedBox(height: 40),
              ],
            ),
          ),
          // Adaptive back arrow
          Positioned(
            top: 80,
            left: 18,
            child: GestureDetector(
              onTap: () => Navigator.of(context).maybePop(),
              child: SizedBox(
                width: 44,
                height: 44,
                child: Center(
                  child: Icon(
                    Icons.chevron_left_rounded,
                    color: onBgSoft,
                    size: 24,
                  ),
                ),
              ),
            ),
          ),
          WishStrip(wish: wish),
        ],
      ),
    );
  }

  Future<void> _beginFirstField(BuildContext context) async {
    final savedProgress = await ProgressService.load();
    final journey = List<JourneyEntry>.from(
      savedProgress?.journeyEntries ?? const [],
    );
    journey.add(
      const JourneyEntry(fieldNumber: 1, question: '', answer: '', codes: []),
    );
    final newCompleted = List<int>.from(completedFields);
    if (!newCompleted.contains(1)) newCompleted.add(1);
    await ProgressService.save(
      wish: wish,
      currentFieldNum: 1,
      completedFields: newCompleted,
      answers: answers,
      journeyEntries: journey,
    );
    GameHistoryService.updateProgress(wish, newCompleted.length).ignore();
    if (!context.mounted) return;
    Navigator.of(context).push(
      _fadeRoute(
        AnswerSavedScreen(
          field: field,
          wish: wish,
          completedFields: newCompleted,
          answers: answers,
        ),
      ),
    );
  }
}

PageRouteBuilder<T> _fadeRoute<T>(Widget page) => PageRouteBuilder(
  pageBuilder: (_, _, _) => page,
  transitionsBuilder: (_, a, _, child) =>
      FadeTransition(opacity: a, child: child),
  transitionDuration: const Duration(milliseconds: 350),
);
