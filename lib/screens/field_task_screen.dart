import 'package:flutter/material.dart';
import '../app_theme.dart';
import '../models/field.dart';
import '../services/progress_service.dart';
import '../widgets/ll_widgets.dart';
import 'answer_saved_screen.dart';

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

  @override
  void initState() {
    super.initState();
    _ctrl = TextEditingController(text: widget.initialAnswer);
  }

  @override
  void dispose() {
    _ctrl.dispose();
    super.dispose();
  }

  bool get _canSave => _ctrl.text.trim().length >= 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: llBg,
      resizeToAvoidBottomInset: true,
      body: Stack(
        children: [
          SafeArea(
            child: Padding(
              padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
              child: Column(
                children: [
                  const SizedBox(height: 56),
                  LLSmallCaps(
                    'FIELD ${widget.field.paddedNumber} · ${widget.field.name}',
                    size: 10,
                    color: llReadableAccent(widget.field.color),
                    letterSpacing: 2.5,
                  ),
                  const SizedBox(height: 22),
                  // Task instruction
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32),
                    child: Column(
                      children: [
                        Text(
                          widget.field.task,
                          textAlign: TextAlign.center,
                          style: llSerif(size: 22, height: 1.3, weight: FontWeight.w600),
                        ),
                        const SizedBox(height: 10),
                        const Center(child: LLHairline(width: 28)),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  // Answer textarea
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0x8CFFFFF8),
                          borderRadius: BorderRadius.circular(14),
                          boxShadow: const [BoxShadow(color: Color(0x0FB4A078), blurRadius: 24, offset: Offset(0, 4))],
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
                              hintText: '…write your answer here',
                              hintStyle: llUi(size: 16, color: llHair),
                            ),
                            style: llUi(size: 16, color: llInk, letterSpacing: 0),
                            cursorColor: llReadableAccent(widget.field.color),
                            cursorWidth: 1.5,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: ValueListenableBuilder<TextEditingValue>(
                      valueListenable: _ctrl,
                      builder: (_, _, _) => LLCTA(
                        label: 'Save My Answer',
                        enabled: _canSave,
                        onTap: _canSave ? _save : null,
                        color: widget.field.color,
                      ),
                    ),
                  ),
                  const SizedBox(height: 40),
                ],
              ),
            ),
          ),
          LLBackArrow(onTap: () => Navigator.of(context).maybePop()),
          WishStrip(wish: widget.wish),
        ],
      ),
    );
  }

  void _save() {
    FocusScope.of(context).unfocus();
    final newAnswer = _ctrl.text.trim();
    final newAnswers = Map<int, String>.from(widget.answers)..[widget.field.n] = newAnswer;
    final newCompleted = List<int>.from(widget.completedFields);
    if (!newCompleted.contains(widget.field.n)) newCompleted.add(widget.field.n);

    ProgressService.save(
      wish: widget.wish,
      currentFieldNum: widget.field.n,
      completedFields: newCompleted,
      answers: newAnswers,
    ).ignore();

    Navigator.of(context).push(_fadeRoute(AnswerSavedScreen(
      field: widget.field,
      wish: widget.wish,
      completedFields: newCompleted,
      answers: newAnswers,
    )));
  }
}

PageRouteBuilder<T> _fadeRoute<T>(Widget page) => PageRouteBuilder(
  pageBuilder: (_, _, _) => page,
  transitionsBuilder: (_, a, _, child) => FadeTransition(opacity: a, child: child),
  transitionDuration: const Duration(milliseconds: 350),
);
