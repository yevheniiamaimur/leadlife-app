import 'package:flutter/material.dart';
import '../app_theme.dart';
import '../l10n/app_localizations.dart';
import '../models/field.dart';
import '../services/game_history_service.dart';
import '../services/progress_service.dart';
import '../models/journey_entry.dart';
import '../widgets/ll_widgets.dart';
import 'answer_saved_screen.dart';

const _blank = '__________';

class FieldTaskScreen extends StatefulWidget {
  const FieldTaskScreen({
    super.key,
    required this.field,
    required this.wish,
    required this.initialAnswer,
    required this.completedFields,
    required this.answers,
  });

  final GameField field;
  final String wish;
  final String initialAnswer;
  final List<int> completedFields;
  final Map<int, String> answers;

  @override
  State<FieldTaskScreen> createState() => _FieldTaskScreenState();
}

class _FieldTaskScreenState extends State<FieldTaskScreen> {
  late final TextEditingController _ctrl;
  late final List<TextEditingController> _blankCtrls;

  List<String> get _paragraphs => widget.field.task.split('\n\n');
  List<String> get _questionParas =>
      _paragraphs.where((p) => !p.contains(_blank)).toList();
  List<String> get _taskParas =>
      _paragraphs.where((p) => p.contains(_blank)).toList();
  int get _blankCount =>
      _taskParas.fold(0, (sum, p) => sum + p.split(_blank).length - 1);

  @override
  void initState() {
    super.initState();
    _ctrl = TextEditingController(text: widget.initialAnswer);
    _blankCtrls = List.generate(_blankCount, (_) => TextEditingController());
  }

  @override
  void dispose() {
    _ctrl.dispose();
    for (final c in _blankCtrls) {
      c.dispose();
    }
    super.dispose();
  }

  bool get _canSave => _ctrl.text.trim().length >= 3;

  @override
  Widget build(BuildContext context) {
    final bg = widget.field.color;
    final isDark = bg.computeLuminance() < 0.4;
    final onBg = isDark ? Colors.white : llInk;
    final onBgSoft = isDark ? Colors.white.withAlpha(160) : llMuted;
    // Input fields stay light regardless of the page background, so their
    // own text reads dark rather than following onBg.
    final cardColor = Colors.white.withAlpha(235);
    final cardAccent = llReadableAccent(bg);
    final cardBorder = cardAccent.withAlpha(90);
    final cardShadow = [
      BoxShadow(
        color: Colors.black.withAlpha(isDark ? 60 : 20),
        blurRadius: 24,
        offset: const Offset(0, 4),
      ),
    ];

    return Scaffold(
      backgroundColor: bg,
      resizeToAvoidBottomInset: true,
      body: Stack(
        children: [
          SafeArea(
            child: Padding(
              padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom,
              ),
              child: SingleChildScrollView(
                padding: const EdgeInsets.only(top: 56, bottom: 40),
                child: Column(
                  children: [
                    LLSmallCaps(
                      AppLocalizations.of(context).fieldNumberAndName(
                        widget.field.paddedNumber,
                        widget.field.name,
                      ),
                      size: 10,
                      color: onBg,
                      letterSpacing: 2.5,
                    ),
                    const SizedBox(height: 22),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: Container(
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 24,
                          vertical: 26,
                        ),
                        decoration: BoxDecoration(
                          color: llGold,
                          borderRadius: BorderRadius.circular(18),
                          boxShadow: [
                            BoxShadow(
                              color: llGold.withAlpha(90),
                              blurRadius: 20,
                              offset: const Offset(0, 8),
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            Text(
                              _questionParas.join('\n\n'),
                              textAlign: TextAlign.center,
                              style: llSerif(
                                size: 22,
                                height: 1.3,
                                weight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(height: 10),
                            const Center(
                              child: LLHairline(width: 28, color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: Container(
                        height: 150,
                        decoration: BoxDecoration(
                          color: cardColor,
                          borderRadius: BorderRadius.circular(14),
                          border: Border.all(color: cardBorder, width: 1),
                          boxShadow: cardShadow,
                        ),
                        padding: const EdgeInsets.all(18),
                        child: ValueListenableBuilder<TextEditingValue>(
                          valueListenable: _ctrl,
                          builder: (_, _, _) => TextField(
                            controller: _ctrl,
                            maxLines: null,
                            expands: true,
                            autofocus: widget.initialAnswer.isEmpty,
                            textAlignVertical: TextAlignVertical.top,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: AppLocalizations.of(
                                context,
                              ).yourAnswerHint,
                              hintStyle: llUi(size: 16, color: llMutedSoft),
                            ),
                            style: llUi(
                              size: 16,
                              color: llInk,
                              letterSpacing: 0,
                            ),
                            cursorColor: cardAccent,
                            cursorWidth: 1.5,
                          ),
                        ),
                      ),
                    ),
                    if (_taskParas.isNotEmpty) ...[
                      const SizedBox(height: 26),
                      LLSmallCaps(
                        AppLocalizations.of(context).taskLabel,
                        size: 10,
                        color: onBg,
                        letterSpacing: 2.5,
                      ),
                      const SizedBox(height: 14),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                        child: Container(
                          decoration: BoxDecoration(
                            color: cardColor,
                            borderRadius: BorderRadius.circular(14),
                            border: Border.all(color: cardBorder, width: 1),
                            boxShadow: cardShadow,
                          ),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 18,
                            vertical: 20,
                          ),
                          child: Column(
                            children: [
                              if (widget.field.n == 6) ...[
                                Text(
                                  AppLocalizations.of(
                                    context,
                                  ).field06CodeInstruction,
                                  textAlign: TextAlign.center,
                                  style: llUi(
                                    size: 14,
                                    color: llMuted,
                                  ).copyWith(height: 1.5),
                                ),
                                const SizedBox(height: 16),
                              ],
                              ..._buildBlankSentences(cardAccent),
                            ],
                          ),
                        ),
                      ),
                    ],
                    const SizedBox(height: 24),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: ValueListenableBuilder<TextEditingValue>(
                        valueListenable: _ctrl,
                        builder: (_, _, _) => LLCTA(
                          label: AppLocalizations.of(context).saveMyAnswerCta,
                          enabled: _canSave,
                          onTap: _canSave ? _save : null,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          LLBackArrow(
            onTap: () => Navigator.of(context).maybePop(),
            color: onBgSoft,
          ),
          WishStrip(wish: widget.wish),
        ],
      ),
    );
  }

  List<Widget> _buildBlankSentences(Color accent) {
    final widgets = <Widget>[];
    var index = 0;
    for (var i = 0; i < _taskParas.length; i++) {
      final parts = _taskParas[i].split(_blank);
      final spans = <InlineSpan>[];
      for (var p = 0; p < parts.length; p++) {
        if (parts[p].isNotEmpty) spans.add(TextSpan(text: parts[p]));
        if (p < parts.length - 1) {
          final ctrl = _blankCtrls[index++];
          spans.add(
            WidgetSpan(
              alignment: PlaceholderAlignment.middle,
              child: Container(
                width: 100,
                margin: const EdgeInsets.symmetric(horizontal: 3),
                decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: accent, width: 1.4)),
                ),
                child: TextField(
                  controller: ctrl,
                  textAlign: TextAlign.center,
                  style: llUi(size: 15, color: llInk),
                  cursorColor: accent,
                  decoration: const InputDecoration(
                    isDense: true,
                    isCollapsed: true,
                    contentPadding: EdgeInsets.symmetric(vertical: 4),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
          );
        }
      }
      widgets.add(
        Text.rich(
          TextSpan(
            style: llSerif(size: 16, height: 1.8, color: llInk),
            children: spans,
          ),
          textAlign: TextAlign.center,
        ),
      );
      if (i < _taskParas.length - 1) widgets.add(const SizedBox(height: 16));
    }
    return widgets;
  }

  Future<void> _save() async {
    FocusScope.of(context).unfocus();
    final openText = _ctrl.text.trim();
    final codes = _completedCodes();
    final newAnswer = _taskParas.isEmpty
        ? openText
        : '$openText\n\n${codes.join('\n')}';
    final newAnswers = Map<int, String>.from(widget.answers)
      ..[widget.field.n] = newAnswer;
    final newCompleted = List<int>.from(widget.completedFields);
    if (!newCompleted.contains(widget.field.n)) {
      newCompleted.add(widget.field.n);
    }

    final previous = await ProgressService.load();
    final journey = List<JourneyEntry>.from(
      previous?.journeyEntries ?? const [],
    );
    journey.add(
      JourneyEntry(
        fieldNumber: widget.field.n,
        question: _questionParas.join('\n\n'),
        answer: openText,
        codes: codes,
      ),
    );
    final saved = await ProgressService.save(
      wish: widget.wish,
      currentFieldNum: widget.field.n,
      completedFields: newCompleted,
      answers: newAnswers,
      journeyEntries: journey,
    );
    GameHistoryService.updateProgress(
      widget.wish,
      newCompleted.length,
    ).ignore();

    if (!mounted) return;
    if (!saved) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(AppLocalizations.of(context).saveProgressError)),
      );
    }

    Navigator.of(context).push(
      _fadeRoute(
        AnswerSavedScreen(
          field: widget.field,
          wish: widget.wish,
          completedFields: newCompleted,
          answers: newAnswers,
        ),
      ),
    );
  }

  String _reconstructedTask() {
    var index = 0;
    final lines = <String>[];
    for (final para in _taskParas) {
      final parts = para.split(_blank);
      final buffer = StringBuffer();
      for (var p = 0; p < parts.length; p++) {
        buffer.write(parts[p]);
        if (p < parts.length - 1) {
          final value = _blankCtrls[index++].text.trim();
          buffer.write(value.isEmpty ? _blank : value);
        }
      }
      lines.add(buffer.toString());
    }
    return lines.join('\n');
  }

  List<String> _completedCodes() => _reconstructedTask()
      .split('\n')
      .map((line) => line.trim())
      .where((line) => line.isNotEmpty)
      .toList();
}

PageRouteBuilder<T> _fadeRoute<T>(Widget page) => PageRouteBuilder(
  pageBuilder: (_, _, _) => page,
  transitionsBuilder: (_, a, _, child) =>
      FadeTransition(opacity: a, child: child),
  transitionDuration: const Duration(milliseconds: 350),
);
