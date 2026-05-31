import 'package:flutter/material.dart';
import '../app_theme.dart';
import '../models/field.dart';
import '../widgets/ll_widgets.dart';
import 'mid_dice_screen.dart';

class AnswerSavedScreen extends StatefulWidget {
  const AnswerSavedScreen({
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
  State<AnswerSavedScreen> createState() => _AnswerSavedScreenState();
}

class _AnswerSavedScreenState extends State<AnswerSavedScreen> with TickerProviderStateMixin {
  late final AnimationController _circleCtrl;
  late final AnimationController _checkCtrl;
  late final AnimationController _btnCtrl;
  late final Animation<double> _circle;
  late final Animation<double> _check;
  late final Animation<double> _btnOpacity;

  @override
  void initState() {
    super.initState();
    _circleCtrl = AnimationController(vsync: this, duration: const Duration(milliseconds: 500));
    _checkCtrl = AnimationController(vsync: this, duration: const Duration(milliseconds: 400));
    _btnCtrl = AnimationController(vsync: this, duration: const Duration(milliseconds: 400));

    _circle = Tween<double>(begin: 0, end: 1).animate(CurvedAnimation(parent: _circleCtrl, curve: Curves.easeOut));
    _check = Tween<double>(begin: 0, end: 1).animate(CurvedAnimation(parent: _checkCtrl, curve: Curves.easeOut));
    _btnOpacity = Tween<double>(begin: 0, end: 1).animate(CurvedAnimation(parent: _btnCtrl, curve: Curves.easeIn));

    _circleCtrl.forward().then((_) {
      _checkCtrl.forward().then((_) {
        Future.delayed(const Duration(milliseconds: 100), () {
          if (mounted) _btnCtrl.forward();
        });
      });
    });
  }

  @override
  void dispose() {
    _circleCtrl.dispose();
    _checkCtrl.dispose();
    _btnCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: llBg,
      body: SafeArea(
        child: Column(
          children: [
            const Spacer(),
            // Animated checkmark
            SizedBox(
              width: 84, height: 84,
              child: AnimatedBuilder(
                animation: Listenable.merge([_circle, _check]),
                builder: (_, _) => CustomPaint(
                  painter: _CheckPainter(circle: _circle.value, check: _check.value),
                ),
              ),
            ),
            const SizedBox(height: 32),
            Text(
              'Your answer is received.',
              textAlign: TextAlign.center,
              style: llSerif(size: 24, height: 1.2),
            ),
            const SizedBox(height: 14),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  style: llSerifItalic(size: 15, color: llMuted, height: 1.6),
                  children: [
                    const TextSpan(text: 'You have walked through '),
                    TextSpan(
                      text: widget.field.name.toLowerCase(),
                      style: llSerifItalic(size: 15, color: llGold, height: 1.6),
                    ),
                    const TextSpan(text: '. The path continues.'),
                  ],
                ),
              ),
            ),
            const Spacer(),
            FadeTransition(
              opacity: _btnOpacity,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: LLCTA(
                  label: 'Roll for the Next Field',
                  onTap: () => Navigator.of(context).push(_fadeRoute(MidDiceScreen(
                    currentFieldNum: widget.field.n,
                    wish: widget.wish,
                    completedFields: widget.completedFields,
                    answers: widget.answers,
                  ))),
                ),
              ),
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}

class _CheckPainter extends CustomPainter {
  const _CheckPainter({required this.circle, required this.check});
  final double circle;
  final double check;

  @override
  void paint(Canvas canvas, Size size) {
    final c = Offset(size.width / 2, size.height / 2);
    final paint = Paint()
      ..color = llGold
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.4
      ..strokeCap = StrokeCap.round;

    // circle arc
    if (circle > 0) {
      canvas.drawArc(
        Rect.fromCircle(center: c, radius: 38),
        -1.5708, // start at top
        circle * 6.2832,
        false,
        paint,
      );
    }

    // checkmark
    if (check > 0) {
      final path = Path();
      path.moveTo(28, 44);
      path.lineTo(38, 54);
      path.lineTo(58, 32);

      final metrics = path.computeMetrics().first;
      final extracted = metrics.extractPath(0, metrics.length * check);
      canvas.drawPath(extracted, paint..strokeWidth = 1.8);
    }
  }

  @override
  bool shouldRepaint(_CheckPainter old) => old.circle != circle || old.check != check;
}

PageRouteBuilder<T> _fadeRoute<T>(Widget page) => PageRouteBuilder(
  pageBuilder: (_, _, _) => page,
  transitionsBuilder: (_, a, _, child) => FadeTransition(opacity: a, child: child),
  transitionDuration: const Duration(milliseconds: 350),
);
