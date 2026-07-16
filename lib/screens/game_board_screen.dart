import 'dart:math' as math;
import 'package:flutter/material.dart';
import '../app_theme.dart';
import '../l10n/app_localizations.dart';
import '../models/field.dart';
import '../widgets/ll_widgets.dart';
import 'field_intro_screen.dart';

class GameBoardScreen extends StatefulWidget {
  const GameBoardScreen({
    super.key,
    required this.wish,
    required this.currentFieldNum,
    required this.completedFields,
    required this.answers,
  });

  final String wish;
  final int currentFieldNum;
  final List<int> completedFields;
  final Map<int, String> answers;

  @override
  State<GameBoardScreen> createState() => _GameBoardScreenState();
}

class _GameBoardScreenState extends State<GameBoardScreen> {
  late final ScrollController _scroll;

  @override
  void initState() {
    super.initState();
    _scroll = ScrollController();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final y = 60.0 + (widget.currentFieldNum - 1) * 84;
      _scroll.animateTo(
        math.max(0, y - 220),
        duration: const Duration(milliseconds: 300),
        curve: Curves.ease,
      );
    });
  }

  @override
  void dispose() {
    _scroll.dispose();
    super.dispose();
  }

  double _xAt(int i) {
    const center = 195.0;
    const amp = 96.0;
    return center + math.sin(i * 0.55) * amp;
  }

  double _yAt(int i) => 60.0 + i * 84;

  @override
  Widget build(BuildContext context) {
    final trackH = 60.0 + kFields.length * 84 + 80;
    final l10n = AppLocalizations.of(context);
    final currentField = localizeField(l10n, kFields.firstWhere((f) => f.n == widget.currentFieldNum));

    return Scaffold(
      backgroundColor: llBg,
      body: Column(
        children: [
          // Fixed header
          SafeArea(
            bottom: false,
            child: Container(
              padding: const EdgeInsets.fromLTRB(22, 16, 22, 12),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [llBg, llBg.withAlpha(0)],
                  stops: const [0.8, 1.0],
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            LLSmallCaps(AppLocalizations.of(context).yourPathLabel, size: 10),
                            const SizedBox(height: 4),
                            Text(
                              AppLocalizations.of(context).fieldOfTotal(
                                widget.currentFieldNum.toString().padLeft(2, '0'),
                                kFields.length,
                              ),
                              style: llSerif(size: 22, height: 1.1),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 18),
                        child: GestureDetector(
                          onTap: () => _showAnswers(context),
                          child: Text(AppLocalizations.of(context).myAnswersLabel,
                            style: llUi(size: 12, color: llMuted, letterSpacing: 0.3)),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Text(
                    '"${widget.wish}"',
                    style: llSerifItalic(size: 13, color: llMutedSoft, height: 1.45),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ),
          // Scrollable path
          Expanded(
            child: SingleChildScrollView(
              controller: _scroll,
              child: SizedBox(
                width: double.infinity,
                height: trackH,
                child: CustomPaint(
                  painter: _PathPainter(fields: kFields, xAt: _xAt, yAt: _yAt),
                  child: Stack(
                    children: kFields.map((raw) {
                      final f = localizeField(l10n, raw);
                      final i = f.n - 1;
                      final x = _xAt(i);
                      final y = _yAt(i);
                      final isCurrent = f.n == widget.currentFieldNum;
                      final isDone = widget.completedFields.contains(f.n);
                      final isFuture = !isCurrent && !isDone;
                      final r = isCurrent ? 26.0 : 19.0;

                      return Positioned(
                        left: x - r,
                        top: y - r,
                        child: GestureDetector(
                          onTap: (isCurrent || isDone) ? () => _goToField(context, f) : null,
                          child: SizedBox(
                            width: r * 2 + 80,
                            height: r * 2 + 30,
                            child: Stack(
                              clipBehavior: Clip.none,
                              children: [
                                // Pulse glow for current
                                if (isCurrent)
                                  Positioned(
                                    left: r - r - 10,
                                    top: r - r - 10,
                                    child: _PulsingGlow(color: f.color, size: r * 2 + 20),
                                  ),
                                // Node circle
                                Container(
                                  width: r * 2,
                                  height: r * 2,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: isCurrent ? f.color : isDone ? f.color : llCardBg,
                                    border: isFuture ? Border.all(color: f.color.withAlpha(128), width: 1.4) : null,
                                    boxShadow: isCurrent ? [BoxShadow(color: f.color.withAlpha(102), blurRadius: 8, offset: const Offset(0, 2))] : null,
                                  ),
                                  child: Center(
                                    child: Text(
                                      '${f.n}',
                                      style: llSerif(
                                        size: isCurrent ? 15 : 12,
                                        color: isFuture ? f.color : Colors.white,
                                        weight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
                                // Label below
                                Positioned(
                                  top: r * 2 + 4,
                                  left: 0,
                                  right: -60,
                                  child: Text(
                                    f.name,
                                    textAlign: TextAlign.center,
                                    style: llUi(
                                      size: isCurrent ? 11 : 10,
                                      color: isFuture ? llMutedSoft : llInk,
                                      weight: isCurrent ? FontWeight.w600 : FontWeight.w400,
                                      letterSpacing: 0.4,
                                    ),
                                    maxLines: 1,
                                    overflow: TextOverflow.visible,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ),
            ),
          ),
          // Fixed bottom CTA
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
              child: LLCTA(
                label: AppLocalizations.of(context).enterFieldCta(
                  widget.currentFieldNum.toString().padLeft(2, '0'),
                ),
                onTap: () => _goToField(context, currentField),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _goToField(BuildContext context, GameField field) {
    Navigator.of(context).push(_fadeRoute(FieldIntroScreen(
      field: field,
      wish: widget.wish,
      completedFields: widget.completedFields,
      answers: widget.answers,
    )));
  }

  void _showAnswers(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: llBg,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      builder: (_) => _AnswersSheet(answers: widget.answers),
    );
  }
}

class _AnswersSheet extends StatelessWidget {
  const _AnswersSheet({required this.answers});
  final Map<int, String> answers;

  @override
  Widget build(BuildContext context) {
    final entries = answers.entries.toList()..sort((a, b) => a.key.compareTo(b.key));
    return Container(
      padding: const EdgeInsets.all(24),
      constraints: BoxConstraints(maxHeight: MediaQuery.of(context).size.height * 0.7),
      child: Column(
        children: [
          Container(width: 40, height: 4, decoration: BoxDecoration(color: llHair, borderRadius: BorderRadius.circular(2))),
          const SizedBox(height: 16),
          LLSmallCaps(AppLocalizations.of(context).myAnswersLabel),
          const SizedBox(height: 16),
          if (entries.isEmpty)
            Padding(
              padding: const EdgeInsets.all(24),
              child: Text(AppLocalizations.of(context).answersEmptyState, style: llSerifItalic(size: 14, color: llMutedSoft)),
            )
          else
            Expanded(
              child: ListView.separated(
                itemCount: entries.length,
                separatorBuilder: (_, _) => const SizedBox(height: 14),
                itemBuilder: (_, i) {
                  final e = entries[i];
                  final field = kFields.firstWhere((f) => f.n == e.key);
                  return Container(
                    padding: const EdgeInsets.fromLTRB(14, 10, 14, 10),
                    decoration: const BoxDecoration(
                      border: Border(left: BorderSide(color: Color(0x80C8A96E), width: 2)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        LLSmallCaps(field.name, size: 9, letterSpacing: 2.5),
                        const SizedBox(height: 3),
                        Text('"${e.value}"', style: llSerifItalic(size: 14, color: llInk, height: 1.5)),
                      ],
                    ),
                  );
                },
              ),
            ),
        ],
      ),
    );
  }
}

// Animated pulsing glow ring
class _PulsingGlow extends StatefulWidget {
  const _PulsingGlow({required this.color, required this.size});
  final Color color;
  final double size;

  @override
  State<_PulsingGlow> createState() => _PulsingGlowState();
}

class _PulsingGlowState extends State<_PulsingGlow> with SingleTickerProviderStateMixin {
  late final AnimationController _ctrl;
  late final Animation<double> _scale;

  @override
  void initState() {
    super.initState();
    _ctrl = AnimationController(vsync: this, duration: const Duration(milliseconds: 2500))..repeat(reverse: true);
    _scale = Tween<double>(begin: 0.85, end: 1.15).animate(CurvedAnimation(parent: _ctrl, curve: Curves.easeInOut));
  }

  @override
  void dispose() { _ctrl.dispose(); super.dispose(); }

  @override
  Widget build(BuildContext context) => AnimatedBuilder(
    animation: _scale,
    builder: (_, _) => Transform.scale(
      scale: _scale.value,
      child: Container(
        width: widget.size,
        height: widget.size,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: RadialGradient(
            colors: [widget.color.withAlpha(68), Colors.transparent],
            stops: const [0, 0.7],
          ),
        ),
      ),
    ),
  );
}

// Path painter
class _PathPainter extends CustomPainter {
  const _PathPainter({required this.fields, required this.xAt, required this.yAt});
  final List<GameField> fields;
  final double Function(int) xAt;
  final double Function(int) yAt;

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = llGold.withAlpha(114)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.4;

    for (var i = 1; i < fields.length; i++) {
      final x1 = xAt(i - 1), y1 = yAt(i - 1);
      final x2 = xAt(i), y2 = yAt(i);
      _drawDashedLine(canvas, Offset(x1, y1), Offset(x2, y2), paint);
    }
  }

  void _drawDashedLine(Canvas canvas, Offset start, Offset end, Paint paint) {
    final dx = end.dx - start.dx;
    final dy = end.dy - start.dy;
    final len = math.sqrt(dx * dx + dy * dy);
    final dashLen = 3.0, gapLen = 5.0;
    double d = 0;
    bool drawing = true;
    final ux = dx / len, uy = dy / len;
    while (d < len) {
      final next = math.min(d + (drawing ? dashLen : gapLen), len);
      if (drawing) {
        canvas.drawLine(
          Offset(start.dx + ux * d, start.dy + uy * d),
          Offset(start.dx + ux * next, start.dy + uy * next),
          paint,
        );
      }
      d = next;
      drawing = !drawing;
    }
  }

  @override
  bool shouldRepaint(_PathPainter old) => false;
}

PageRouteBuilder<T> _fadeRoute<T>(Widget page) => PageRouteBuilder(
  pageBuilder: (_, _, _) => page,
  transitionsBuilder: (_, a, _, child) => FadeTransition(opacity: a, child: child),
  transitionDuration: const Duration(milliseconds: 350),
);
