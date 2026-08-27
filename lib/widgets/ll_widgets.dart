import 'dart:math' as math;
import 'package:flutter/material.dart';
import '../app_theme.dart';
import '../l10n/app_localizations.dart';

// ── Brand typography helpers ─────────────────────────────────
// Fonts are bundled as local assets (see pubspec.yaml) rather than fetched
// at runtime via google_fonts, so the app has no network dependency for
// text rendering and no first-frame font-swap flicker.
const _cyrillicFallback = ['Helvetica Neue', 'Arial'];

TextStyle llSerif({double size = 16, FontWeight weight = FontWeight.w400, Color color = llInk, double height = 1.3}) =>
    TextStyle(fontFamily: 'PlayfairDisplay', fontSize: size, fontWeight: weight, color: color, height: height, fontFamilyFallback: _cyrillicFallback);

TextStyle llSerifItalic({double size = 14, Color color = llMuted, double height = 1.5, FontWeight weight = FontWeight.w400}) =>
    TextStyle(fontFamily: 'WorkSans', fontStyle: FontStyle.italic, fontSize: size, fontWeight: weight, color: color, height: height, fontFamilyFallback: _cyrillicFallback);

TextStyle llUi({double size = 13, Color color = llInk, FontWeight weight = FontWeight.w400, double letterSpacing = 0}) =>
    TextStyle(fontFamily: 'WorkSans', fontSize: size, fontWeight: weight, color: color, letterSpacing: letterSpacing, fontFamilyFallback: _cyrillicFallback);

// Hatchpot wordmark: the capital H is intentionally condensed so it keeps
// the visual rhythm of the lowercase letters.
class HatchpotWordmark extends StatelessWidget {
  const HatchpotWordmark({super.key, this.size = 19, this.color = llInk});

  final double size;
  final Color color;

  @override
  Widget build(BuildContext context) {
    final style = llSerif(size: size, weight: FontWeight.w600, color: color);
    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.baseline,
      textBaseline: TextBaseline.alphabetic,
      children: [
        Transform.scale(
          scaleX: 0.78,
          alignment: Alignment.centerRight,
          child: Text('H', style: style),
        ),
        Transform.translate(
          offset: Offset(-size * 0.1, 0),
          child: Text('atchpot', style: style),
        ),
      ],
    );
  }
}

// ── SmallCaps label ──────────────────────────────────────────
class LLSmallCaps extends StatelessWidget {
  const LLSmallCaps(this.text, {super.key, this.size = 11, this.color = llGold, this.letterSpacing = 2.0});
  final String text;
  final double size;
  final Color color;
  final double letterSpacing;

  @override
  Widget build(BuildContext context) => Text(
    text.toUpperCase(),
    style: TextStyle(
      fontFamily: 'WorkSans',
      fontSize: size,
      fontWeight: FontWeight.w600,
      color: color,
      letterSpacing: letterSpacing,
      fontFamilyFallback: _cyrillicFallback,
    ),
  );
}

// ── Marquee ticker ───────────────────────────────────────────
class LLMarquee extends StatefulWidget {
  const LLMarquee({super.key, required this.text, this.color = llGold, this.size = 13, this.height = 22, this.duration = const Duration(seconds: 9), this.uppercase = true});
  final String text;
  final Color color;
  final double size;
  final double height;
  final Duration duration;
  final bool uppercase;

  @override
  State<LLMarquee> createState() => _LLMarqueeState();
}

class _LLMarqueeState extends State<LLMarquee> with SingleTickerProviderStateMixin {
  late final AnimationController _ctrl;

  @override
  void initState() {
    super.initState();
    _ctrl = AnimationController(vsync: this, duration: widget.duration)..repeat();
  }

  @override
  void dispose() {
    _ctrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final style = TextStyle(
      fontFamily: 'WorkSans',
      fontSize: widget.size,
      fontWeight: FontWeight.w700,
      color: widget.color,
      letterSpacing: 4,
      fontFamilyFallback: _cyrillicFallback,
    );
    final unit = '${widget.uppercase ? widget.text.toUpperCase() : widget.text}    ';
    final painter = TextPainter(text: TextSpan(text: unit, style: style), textDirection: TextDirection.ltr)..layout();
    final unitWidth = painter.width;

    return ClipRect(
      child: SizedBox(
        height: widget.height,
        child: AnimatedBuilder(
          animation: _ctrl,
          builder: (context, _) {
            final dx = -_ctrl.value * unitWidth;
            return Stack(
              children: [
                for (var i = 0; i < 24; i++)
                  Positioned(left: dx + i * unitWidth, top: 0, child: Text(unit, style: style)),
              ],
            );
          },
        ),
      ),
    );
  }
}

// ── Gold hairline ────────────────────────────────────────────
class LLHairline extends StatelessWidget {
  const LLHairline({super.key, this.width = 48, this.color = llGold});
  final double width;
  final Color color;

  @override
  Widget build(BuildContext context) => Container(
    width: width,
    height: 1,
    color: color,
  );
}

// ── Primary CTA button ───────────────────────────────────────
class LLCTA extends StatelessWidget {
  const LLCTA({super.key, required this.label, this.onTap, this.enabled = true, this.variant = 'primary', this.color});
  final String label;
  final VoidCallback? onTap;
  final bool enabled;
  final String variant;
  // Overrides the primary fill color (e.g. a game field's own color).
  // Falls back to llGold automatically if too light to read white text on.
  final Color? color;

  @override
  Widget build(BuildContext context) {
    final isPrimary = variant == 'primary';
    final isDark = variant == 'dark';
    final fill = llReadableAccent(color ?? llGold);
    return GestureDetector(
      onTap: enabled ? onTap : null,
      child: AnimatedOpacity(
        opacity: enabled ? 1.0 : 0.4,
        duration: const Duration(milliseconds: 200),
        child: Container(
          width: double.infinity,
          height: 52,
          decoration: BoxDecoration(
            color: isDark ? const Color(0xFF111111) : (isPrimary ? fill : Colors.transparent),
            borderRadius: BorderRadius.circular(12),
            border: (!isPrimary && !isDark) ? Border.all(color: fill) : null,
            boxShadow: (isPrimary || isDark) && enabled
                ? [BoxShadow(
                    color: isDark ? const Color(0x40000000) : fill.withAlpha(89),
                    blurRadius: 14,
                    offset: const Offset(0, 4),
                  )]
                : null,
          ),
          child: Center(
            child: Text(
              label,
              style: TextStyle(
                fontFamily: 'WorkSans',
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: (isPrimary || isDark) ? Colors.white : fill,
                letterSpacing: 0.3,
                fontFamilyFallback: _cyrillicFallback,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// ── Back arrow ───────────────────────────────────────────────
class LLBackArrow extends StatelessWidget {
  const LLBackArrow({super.key, this.onTap, this.top = 80, this.left = 18, this.color = llMuted});
  final VoidCallback? onTap;
  final double top;
  final double left;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      left: left,
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: 44,
          height: 44,
          color: Colors.transparent,
          child: Center(
            child: Icon(Icons.chevron_left_rounded, color: color, size: 24),
          ),
        ),
      ),
    );
  }
}

// ── Help button "?" ──────────────────────────────────────────
class LLHelpBtn extends StatelessWidget {
  const LLHelpBtn({super.key, this.onTap, this.top = 84, this.right, this.left, this.showLabel = false});
  final VoidCallback? onTap;
  final double top;
  final double? right;
  final double? left;
  final bool showLabel;

  @override
  Widget build(BuildContext context) {
    final pos = <String, double>{};
    if (right != null) pos['right'] = right!;
    if (left != null) pos['left'] = left!;

    Widget btn = GestureDetector(
      onTap: onTap,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (showLabel) ...[
            Text(AppLocalizations.of(context).seeExample, style: llUi(size: 12, color: llGold, letterSpacing: 0.5)),
            const SizedBox(width: 6),
          ],
          Container(
            width: 26,
            height: 26,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: llGold, width: 1),
            ),
            child: Center(
              child: Text('?', style: llSerifItalic(size: 14, color: llGold)),
            ),
          ),
        ],
      ),
    );

    return Positioned(
      top: top,
      right: right,
      left: left,
      child: btn,
    );
  }
}

// ── Wish strip (persistent reminder) ────────────────────────
class WishStrip extends StatelessWidget {
  const WishStrip({super.key, required this.wish});
  final String wish;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 60,
      left: 0,
      right: 0,
      child: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 300),
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 5),
          decoration: BoxDecoration(
            color: const Color(0xC8FFFFF8),
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: const Color(0x33C8A96E)),
          ),
          child: Text(
            '"$wish"',
            style: TextStyle(
              fontFamily: 'WorkSans',
              fontStyle: FontStyle.italic,
              fontSize: 11.5,
              color: llGoldDark,
              letterSpacing: 0.2,
              height: 1.3,
              fontFamilyFallback: _cyrillicFallback,
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ),
    );
  }
}

// ── Dice widget (d8: 1-8 pips) ───────────────────────────────
class LLDice extends StatefulWidget {
  const LLDice({super.key, required this.pips, this.size = 120, this.glow = false, this.highlight = false, this.tumbling = false});
  final int pips;
  final double size;
  final bool glow;
  final bool highlight;
  final bool tumbling;

  @override
  State<LLDice> createState() => _LLDiceState();
}

class _LLDiceState extends State<LLDice> with SingleTickerProviderStateMixin {
  late AnimationController _ctrl;
  late Animation<double> _rot;

  @override
  void initState() {
    super.initState();
    _ctrl = AnimationController(vsync: this, duration: const Duration(milliseconds: 600))
      ..repeat();
    _rot = Tween<double>(begin: -0.08, end: 0.08).animate(
      CurvedAnimation(parent: _ctrl, curve: Curves.easeInOut),
    );
  }

  @override
  void dispose() {
    _ctrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Widget dice = CustomPaint(
      painter: _DicePainter(
        pips: widget.pips.clamp(1, 8),
        size: widget.size,
        color: llGold,
        fill: widget.highlight ? const Color(0xFFFBF4E8) : llCardBg,
        highlight: widget.highlight,
      ),
      size: Size(widget.size, widget.size),
    );

    if (widget.tumbling) {
      dice = AnimatedBuilder(
        animation: _rot,
        builder: (_, child) => Transform.rotate(angle: _rot.value, child: child),
        child: dice,
      );
    }

    if (widget.glow) {
      return Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: widget.size * 1.4,
            height: widget.size * 1.4,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: RadialGradient(
                colors: [llGold.withAlpha(85), Colors.transparent],
                stops: const [0, 0.65],
              ),
            ),
          ),
          dice,
        ],
      );
    }

    return dice;
  }
}

class _DicePainter extends CustomPainter {
  const _DicePainter({required this.pips, required this.size, required this.color, required this.fill, required this.highlight});
  final int pips;
  final double size;
  final Color color;
  final Color fill;
  final bool highlight;

  static const _layouts = {
    1: [[0.5, 0.5]],
    2: [[0.3, 0.3], [0.7, 0.7]],
    3: [[0.27, 0.27], [0.5, 0.5], [0.73, 0.73]],
    4: [[0.3, 0.3], [0.7, 0.3], [0.3, 0.7], [0.7, 0.7]],
    5: [[0.3, 0.3], [0.7, 0.3], [0.5, 0.5], [0.3, 0.7], [0.7, 0.7]],
    6: [[0.28, 0.25], [0.72, 0.25], [0.28, 0.5], [0.72, 0.5], [0.28, 0.75], [0.72, 0.75]],
    7: [[0.28, 0.25], [0.72, 0.25], [0.28, 0.5], [0.5, 0.5], [0.72, 0.5], [0.28, 0.75], [0.72, 0.75]],
    8: [[0.28, 0.22], [0.72, 0.22], [0.28, 0.42], [0.72, 0.42], [0.28, 0.62], [0.72, 0.62], [0.28, 0.82], [0.72, 0.82]],
  };

  @override
  void paint(Canvas canvas, Size sz) {
    final r = size * 0.18;
    final rect = RRect.fromRectAndRadius(
      Rect.fromLTWH(1, 1, size - 2, size - 2),
      Radius.circular(r),
    );
    canvas.drawRRect(rect, Paint()..color = fill);
    canvas.drawRRect(rect, Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeWidth = size * 0.012);

    final pipColor = llGold;
    final pipR = size * 0.075;
    for (final pos in _layouts[pips.clamp(1, 8)] ?? _layouts[1]!) {
      canvas.drawCircle(Offset(pos[0] * size, pos[1] * size), pipR, Paint()..color = pipColor);
    }
  }

  @override
  bool shouldRepaint(_DicePainter old) =>
      old.pips != pips || old.highlight != highlight;
}

// ── Field glyph (diamond + rays) ────────────────────────────
class FieldGlyph extends StatelessWidget {
  const FieldGlyph({super.key, required this.color, this.size = 96});
  final Color color;
  final double size;

  @override
  Widget build(BuildContext context) => CustomPaint(
    painter: _GlyphPainter(color: color),
    size: Size(size, size),
  );
}

class _GlyphPainter extends CustomPainter {
  const _GlyphPainter({required this.color});
  final Color color;

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.1;
    final s = size.width;
    final c = Offset(s / 2, s / 2);

    // outer diamond
    final diamond = Path()
      ..moveTo(s * 0.5, s * 0.06)
      ..lineTo(s * 0.896, s * 0.5)
      ..lineTo(s * 0.5, s * 0.94)
      ..lineTo(s * 0.104, s * 0.5)
      ..close();
    canvas.drawPath(diamond, paint);

    // inner circle
    canvas.drawCircle(c, s * 0.146, paint);

    // rays
    const angles = [0.0, 45.0, 90.0, 135.0, 180.0, 225.0, 270.0, 315.0];
    for (final a in angles) {
      final rad = a * math.pi / 180;
      final r1 = s * 0.188, r2 = s * 0.271;
      canvas.drawLine(
        Offset(c.dx + math.cos(rad) * r1, c.dy + math.sin(rad) * r1),
        Offset(c.dx + math.cos(rad) * r2, c.dy + math.sin(rad) * r2),
        paint,
      );
    }

    // center dot
    canvas.drawCircle(c, s * 0.026, Paint()..color = color);
  }

  @override
  bool shouldRepaint(_GlyphPainter old) => old.color != color;
}

// ── Chat bubble (AI assistant conversations) ───────────────────
class LLChatBubble extends StatelessWidget {
  const LLChatBubble({super.key, required this.text, required this.isUser});

  final String text;
  final bool isUser;

  @override
  Widget build(BuildContext context) => Align(
    alignment: isUser ? Alignment.centerRight : Alignment.centerLeft,
    child: Container(
      constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.78),
      margin: const EdgeInsets.symmetric(vertical: 6),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: isUser ? llGold : llCardBg,
        borderRadius: BorderRadius.circular(16),
        border: isUser ? null : Border.all(color: llHair, width: 1),
        boxShadow: llShadowSoft,
      ),
      child: Text(
        text,
        style: llUi(size: 15, color: isUser ? Colors.white : llInk, weight: FontWeight.w400).copyWith(height: 1.4),
      ),
    ),
  );
}

// ── Logo mark ────────────────────────────────────────────────
class LLLogo extends StatelessWidget {
  const LLLogo({super.key, this.size = 48, this.color = llGold});
  final double size;
  final Color color;

  @override
  Widget build(BuildContext context) => ColorFiltered(
    colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
    child: Image.asset(
      'assets/logo/logo_mark.png',
      width: size,
      height: size,
    ),
  );
}
