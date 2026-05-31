import 'dart:math' as math;
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'wish_entry_screen.dart';

// ── Brand palette ────────────────────────────────────────────
const _ink = Color(0xFF1F1B16);
const _inkSoft = Color(0xFF6B6259);
const _paper = Color(0xFFF5EFE6);
const _peach = Color(0xFFE9967A);

class HowToPlayScreen extends StatelessWidget {
  const HowToPlayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _paper,
      body: Stack(
        children: [
          // Paper grain background
          const _PaperBackground(),
          // Peach orb top-left
          Positioned(top: -50, left: -60, child: _PeachOrb(size: 220)),
          // Top bar
          const _TopBar(),
          // Content
          Positioned(
            top: 120,
            left: 28,
            right: 28,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'BEFORE WE BEGIN',
                  style: GoogleFonts.sourceCodePro(
                    fontSize: 10,
                    letterSpacing: 3,
                    color: _inkSoft,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  'how to play.',
                  style: GoogleFonts.caveat(
                    fontSize: 42,
                    fontWeight: FontWeight.w600,
                    color: _ink,
                    height: 1.05,
                  ),
                ),
                const SizedBox(height: 4),
                CustomPaint(
                  painter: _SquigglePainter(color: _peach, width: 130),
                  size: const Size(130, 10),
                ),
              ],
            ),
          ),
          // Steps
          Positioned(
            top: 240,
            left: 28,
            right: 28,
            child: Column(
              children: [
                _RuleStep(
                  n: 1,
                  title: 'name your wish.',
                  body:
                      'write what you long for — in present perfect, as if already so.',
                ),
                const SizedBox(height: 22),
                _RuleStep(
                  n: 2,
                  title: 'roll the dice.',
                  body:
                      'the dice will reveal whether this is your true main desire.',
                ),
                const SizedBox(height: 22),
                _RuleStep(
                  n: 3,
                  title: 'roll a 1 to begin.',
                  body:
                      'only the one opens the door. unlimited tries — but rethink between rolls.',
                ),
              ],
            ),
          ),
          // Help card
          Positioned(
            bottom: 150,
            left: 28,
            right: 28,
            child: CustomPaint(
              painter: _SketchBoxPainter(
                color: _peach,
                radius: 14,
                dashed: true,
              ),
              child: SizedBox(
                height: 56,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    children: [
                      Text(
                        '?',
                        style: TextStyle(
                          fontFamily: 'Georgia',
                          fontSize: 18,
                          color: _peach,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'tap any rule for an example',
                            style: GoogleFonts.caveat(
                              fontSize: 16,
                              color: _inkSoft,
                            ),
                          ),
                          Text(
                            '↳ SEE HOW IT WORKS',
                            style: GoogleFonts.sourceCodePro(
                              fontSize: 9,
                              letterSpacing: 1,
                              color: _inkSoft,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          // CTA button
          Positioned(
            bottom: 70,
            left: 0,
            right: 0,
            child: Center(
              child: _PillButton(
                label: 'name my wish →',
                filled: true,
                width: 210,
                height: 52,
                fontSize: 24,
                onTap: () {
                  Navigator.of(context).push(
                    PageRouteBuilder(
                      pageBuilder: (_, _, _) => const WishEntryScreen(),
                      transitionsBuilder: (_, anim, _, child) {
                        return FadeTransition(opacity: anim, child: child);
                      },
                      transitionDuration: const Duration(milliseconds: 400),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ── Rule step row ────────────────────────────────────────────
class _RuleStep extends StatelessWidget {
  const _RuleStep({required this.n, required this.title, required this.body});
  final int n;
  final String title;
  final String body;

  String get _example {
    switch (n) {
      case 1:
        return 'Example: I have finally launched my first poetry collection.';
      case 2:
        return 'Example: The dice decides whether this wish is your true main desire.';
      case 3:
        return 'Example: Only a roll of 1 opens the door — you may try again if needed.';
      default:
        return '';
    }
  }

  void _showExample(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => Dialog(
        backgroundColor: _paper,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 18),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'rule $n example',
                style: GoogleFonts.sourceCodePro(
                  fontSize: 11,
                  letterSpacing: 2,
                  color: _inkSoft,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                _example,
                style: TextStyle(
                  fontFamily: 'Georgia',
                  fontStyle: FontStyle.italic,
                  fontSize: 16,
                  color: _ink,
                  height: 1.5,
                ),
              ),
              const SizedBox(height: 20),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: Text(
                    'got it',
                    style: GoogleFonts.caveat(fontSize: 16, color: _peach),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () => _showExample(context),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _StepCircle(n: n),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: GoogleFonts.caveat(
                    fontSize: 24,
                    color: _ink,
                    height: 1.1,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  body,
                  style: TextStyle(
                    fontFamily: 'Georgia',
                    fontStyle: FontStyle.italic,
                    fontSize: 14,
                    color: _inkSoft,
                    height: 1.45,
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

// ── Step number circle ───────────────────────────────────────
class _StepCircle extends StatelessWidget {
  const _StepCircle({required this.n});
  final int n;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 32,
      height: 32,
      child: CustomPaint(
        painter: _DottedCirclePainter(color: _peach),
        child: Center(
          child: Text(
            '$n',
            style: TextStyle(
              fontFamily: 'Georgia',
              fontStyle: FontStyle.italic,
              fontSize: 16,
              color: _peach,
            ),
          ),
        ),
      ),
    );
  }
}

class _DottedCirclePainter extends CustomPainter {
  const _DottedCirclePainter({required this.color});
  final Color color;

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.6;
    final center = Offset(size.width / 2, size.height / 2);
    final radius = size.width / 2 - 2;
    // dotted circle via path
    final path = Path();
    const dashAngle = 0.15;
    const gapAngle = 0.22;
    double angle = 0;
    while (angle < math.pi * 2) {
      path.addArc(
        Rect.fromCircle(center: center, radius: radius),
        angle,
        dashAngle,
      );
      angle += dashAngle + gapAngle;
    }
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(_DottedCirclePainter old) => old.color != color;
}

// ── Squiggle underline painter ───────────────────────────────
class _SquigglePainter extends CustomPainter {
  const _SquigglePainter({required this.color, required this.width});
  final Color color;
  final double width;

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.6
      ..strokeCap = StrokeCap.round;
    final h = size.height;
    final w = size.width;
    final path = Path();
    path.moveTo(2, h - 3);
    path.quadraticBezierTo(w * 0.15, 1, w * 0.3, h - 3);
    path.quadraticBezierTo(w * 0.45, h + 2, w * 0.6, h - 3);
    path.quadraticBezierTo(w * 0.75, 1, w * 0.9, h - 3);
    path.lineTo(w - 2, h - 3);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(_SquigglePainter old) => old.color != color;
}

// ── Sketch box border painter ────────────────────────────────
class _SketchBoxPainter extends CustomPainter {
  const _SketchBoxPainter({
    required this.color,
    this.radius = 18,
    this.strokeWidth = 1.4,
    this.dashed = false,
    this.fill = Colors.transparent,
  });
  final Color color;
  final double radius;
  final double strokeWidth;
  final bool dashed;
  final Color fill;

  @override
  void paint(Canvas canvas, Size size) {
    final w = size.width;
    final h = size.height;
    final r = radius;
    final path = Path()
      ..moveTo(r + 1.2, 1)
      ..quadraticBezierTo(w * 0.35, -1.2, w * 0.55, 1)
      ..quadraticBezierTo(w * 0.8, 1.2, w - r, 1)
      ..quadraticBezierTo(w - 1, r / 2, w - 1, r)
      ..quadraticBezierTo(w + 1.2, h * 0.45, w - 1, h - r)
      ..quadraticBezierTo(w - 1, h - 1, w - r, h - 1)
      ..quadraticBezierTo(w * 0.6, h + 1.2, w * 0.35, h - 1)
      ..quadraticBezierTo(w * 0.1, h - 1.2, r, h - 1)
      ..quadraticBezierTo(1, h - 1, 1, h - r)
      ..quadraticBezierTo(-1.2, h * 0.5, 1, r)
      ..quadraticBezierTo(1, 1, r + 1.2, 1)
      ..close();

    if (fill != Colors.transparent) {
      canvas.drawPath(path, Paint()..color = fill);
    }

    final strokePaint = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth
      ..strokeJoin = StrokeJoin.round;

    if (dashed) {
      _drawDashedPath(canvas, path, strokePaint);
    } else {
      canvas.drawPath(path, strokePaint);
    }
  }

  void _drawDashedPath(Canvas canvas, Path path, Paint paint) {
    final metrics = path.computeMetrics();
    for (final metric in metrics) {
      double distance = 0;
      bool draw = true;
      while (distance < metric.length) {
        final next = distance + (draw ? 6 : 5);
        if (draw) {
          canvas.drawPath(
            metric.extractPath(distance, math.min(next, metric.length)),
            paint,
          );
        }
        distance = next;
        draw = !draw;
      }
    }
  }

  @override
  bool shouldRepaint(_SketchBoxPainter old) => false;
}

// ── Peach orb (blurred gradient circle) ─────────────────────
class _PeachOrb extends StatelessWidget {
  const _PeachOrb({required this.size});
  final double size;

  @override
  Widget build(BuildContext context) {
    return ImageFiltered(
      imageFilter: ImageFilter.blur(sigmaX: 14, sigmaY: 14),
      child: Container(
        width: size,
        height: size,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          gradient: RadialGradient(
            center: Alignment(-0.2, -0.3),
            colors: [_peach, Color(0xCCE9967A), Colors.transparent],
            stops: [0, 0.3, 0.7],
          ),
        ),
      ),
    );
  }
}

// ── Pill button ──────────────────────────────────────────────
class _PillButton extends StatelessWidget {
  const _PillButton({
    required this.label,
    required this.filled,
    required this.width,
    required this.height,
    required this.fontSize,
    this.onTap,
  });
  final String label;
  final bool filled;
  final double width;
  final double height;
  final double fontSize;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: CustomPaint(
        painter: _SketchBoxPainter(
          color: _ink,
          radius: height / 2,
          strokeWidth: 1.6,
          fill: filled ? _ink : Colors.transparent,
        ),
        child: SizedBox(
          width: width,
          height: height,
          child: Center(
            child: Text(
              label,
              style: GoogleFonts.caveat(
                fontSize: fontSize,
                color: filled ? _paper : _ink,
                letterSpacing: 0.3,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// ── Top bar ──────────────────────────────────────────────────
class _TopBar extends StatelessWidget {
  const _TopBar();

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 56,
      left: 0,
      right: 0,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () => Navigator.of(context).maybePop(),
              child: Text(
                '←',
                style: TextStyle(
                  fontFamily: 'Georgia',
                  fontSize: 22,
                  color: _inkSoft,
                ),
              ),
            ),
            Text(
              'STEP 01 / 32',
              style: GoogleFonts.sourceCodePro(
                fontSize: 14,
                letterSpacing: 4,
                color: _inkSoft,
              ),
            ),
            Container(
              width: 26,
              height: 26,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: _inkSoft, width: 1.4),
              ),
              child: Center(
                child: Text(
                  '?',
                  style: TextStyle(
                    fontFamily: 'Georgia',
                    fontSize: 13,
                    color: _inkSoft,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ── Paper background texture ─────────────────────────────────
class _PaperBackground extends StatelessWidget {
  const _PaperBackground();

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: DecoratedBox(
        decoration: BoxDecoration(
          gradient: RadialGradient(
            center: const Alignment(-0.8, -0.9),
            radius: 1.4,
            colors: [const Color(0xFFF7E2CF), _paper.withAlpha(0)],
          ),
        ),
      ),
    );
  }
}
