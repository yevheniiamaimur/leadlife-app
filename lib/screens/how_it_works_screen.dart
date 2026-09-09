import 'package:flutter/material.dart';
import '../app_theme.dart';
import '../l10n/app_localizations.dart';
import '../widgets/ll_widgets.dart';
import 'wish_entry_screen.dart';

class HowItWorksScreen extends StatefulWidget {
  const HowItWorksScreen({super.key});
  @override
  State<HowItWorksScreen> createState() => _HowItWorksScreenState();
}

class _HowItWorksScreenState extends State<HowItWorksScreen> {
  final _controller = PageController();
  int _page = 0;

  static const _totalSlides = 4;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _next() {
    if (_page < _totalSlides - 1) {
      _controller.nextPage(
        duration: const Duration(milliseconds: 350),
        curve: Curves.easeOut,
      );
    } else {
      Navigator.of(context).push(_fadeRoute(const WishEntryScreen()));
    }
  }

  void _back() {
    if (_page > 0) {
      _controller.previousPage(
        duration: const Duration(milliseconds: 350),
        curve: Curves.easeOut,
      );
    } else {
      Navigator.of(context).maybePop();
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return Scaffold(
      backgroundColor: llBg,
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                const SizedBox(height: 28),
                _DotIndicator(count: _totalSlides, current: _page),
                const SizedBox(height: 12),
                Expanded(
                  child: PageView(
                    controller: _controller,
                    onPageChanged: (i) => setState(() => _page = i),
                    children: const [
                      _Slide1(),
                      _Slide2(),
                      _Slide3(),
                      _Slide4(),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  child: LLCTA(
                    label: _page == _totalSlides - 1 ? l10n.howItWorksBeginJourneyCta : l10n.howItWorksContinueCta,
                    onTap: _next,
                  ),
                ),
                const SizedBox(height: 40),
              ],
            ),
            LLBackArrow(top: 24, left: 4, onTap: _back),
          ],
        ),
      ),
    );
  }
}

PageRouteBuilder<T> _fadeRoute<T>(Widget page) => PageRouteBuilder(
  pageBuilder: (_, _, _) => page,
  transitionsBuilder: (_, a, _, child) => FadeTransition(opacity: a, child: child),
  transitionDuration: const Duration(milliseconds: 350),
);

// ── Dot page indicator ───────────────────────────────────────
class _DotIndicator extends StatelessWidget {
  const _DotIndicator({required this.count, required this.current});
  final int count;
  final int current;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        for (var i = 0; i < count; i++)
          AnimatedContainer(
            duration: const Duration(milliseconds: 250),
            margin: const EdgeInsets.symmetric(horizontal: 4),
            width: i == current ? 20 : 6,
            height: 6,
            decoration: BoxDecoration(
              color: i == current ? llGold : llHair,
              borderRadius: BorderRadius.circular(3),
            ),
          ),
      ],
    );
  }
}

// ── Shared slide scaffold ────────────────────────────────────
class _SlideBody extends StatelessWidget {
  const _SlideBody({required this.title, this.visual, required this.body});
  final String title;
  final Widget? visual;
  final String body;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: ConstrainedBox(
            constraints: BoxConstraints(minHeight: constraints.maxHeight),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  title,
                  textAlign: TextAlign.center,
                  style: llSerif(size: 27, weight: FontWeight.w600, height: 1.2),
                ),
                if (visual != null) ...[
                  const SizedBox(height: 24),
                  visual!,
                ],
                const SizedBox(height: 22),
                Text(
                  body,
                  textAlign: TextAlign.center,
                  style: llSerifItalic(size: 15.5, height: 1.6),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

// ── Slide 1 — what Hatchpot is ───────────────────────────────
class _Slide1 extends StatelessWidget {
  const _Slide1();
  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return _SlideBody(
      title: l10n.howItWorksSlide1Title,
      visual: const FieldGlyph(color: llGold, size: 72),
      body: l10n.howItWorksSlide1Body,
    );
  }
}

// ── Slide 2 — the dice reads your unconscious ────────────────
// The one slide with a genuinely interactive centerpiece: a live tumbling,
// glowing die the player can tap to re-roll, rather than another static
// paragraph — this is the beat the whole redesign was about.
class _Slide2 extends StatefulWidget {
  const _Slide2();
  @override
  State<_Slide2> createState() => _Slide2State();
}

class _Slide2State extends State<_Slide2> {
  int _pips = 1;

  void _reroll() => setState(() => _pips = _pips % 8 + 1);

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return _SlideBody(
      title: l10n.howItWorksSlide2Title,
      visual: GestureDetector(
        onTap: _reroll,
        child: LLDice(pips: _pips, size: 96, glow: true, tumbling: true),
      ),
      body: l10n.howItWorksSlide2Body,
    );
  }
}

// ── Slide 3 — 32 fields, your own path ───────────────────────
class _Slide3 extends StatelessWidget {
  const _Slide3();
  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return _SlideBody(
      title: l10n.howItWorksSlide3Title,
      visual: const FieldGlyph(color: llViolet, size: 72),
      body: l10n.howItWorksSlide3Body,
    );
  }
}

// ── Slide 4 — your success code ──────────────────────────────
class _Slide4 extends StatelessWidget {
  const _Slide4();
  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return _SlideBody(
      title: l10n.howItWorksSlide4Title,
      visual: const FieldGlyph(color: llGoldDark, size: 72),
      body: l10n.howItWorksSlide4Body,
    );
  }
}
