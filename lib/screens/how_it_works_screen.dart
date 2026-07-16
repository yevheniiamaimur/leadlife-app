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

  static const _totalSlides = 7;

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
                Center(child: LLSmallCaps(l10n.howItWorksStepOfTotal(_page + 1, _totalSlides), color: llGold)),
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
                      _Slide5(),
                      _Slide6(),
                      _Slide7(),
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

// ── Shared slide scaffold ────────────────────────────────────
class _SlideBody extends StatelessWidget {
  const _SlideBody({required this.title, required this.children});
  final String title;
  final List<Widget> children;

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
                const SizedBox(height: 22),
                ...children,
              ],
            ),
          ),
        );
      },
    );
  }
}

// A soft italic paragraph — for descriptive/reflective text.
Widget _para(String text) => Padding(
  padding: const EdgeInsets.only(bottom: 16),
  child: Text(text, textAlign: TextAlign.center, style: llSerifItalic(size: 15.5, height: 1.6)),
);

// A short, plain-weight line — for instructions or list items.
Widget _line(String text) => Padding(
  padding: const EdgeInsets.only(bottom: 8),
  child: Text(
    text,
    textAlign: TextAlign.center,
    style: llSerif(size: 17, weight: FontWeight.w600, height: 1.3, color: llInk),
  ),
);

// A group of short lines rendered tightly together.
Widget _lineGroup(List<String> lines) => Padding(
  padding: const EdgeInsets.only(bottom: 16),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [for (final l in lines) _line(l)],
  ),
);

// ── Slide 1 ───────────────────────────────────────────────────
class _Slide1 extends StatelessWidget {
  const _Slide1();
  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return _SlideBody(
      title: l10n.howItWorksSlide1Title,
      children: [
        _para(l10n.howItWorksSlide1Para),
      ],
    );
  }
}

// ── Slide 2 ───────────────────────────────────────────────────
class _Slide2 extends StatelessWidget {
  const _Slide2();
  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return _SlideBody(
      title: l10n.howItWorksSlide2Title,
      children: [
        _lineGroup([l10n.howItWorksSlide2Line1, l10n.howItWorksSlide2Line2, l10n.howItWorksSlide2Line3]),
        _para(l10n.howItWorksSlide2Para),
      ],
    );
  }
}

// ── Slide 3 ───────────────────────────────────────────────────
class _Slide3 extends StatelessWidget {
  const _Slide3();
  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return _SlideBody(
      title: l10n.howItWorksSlide3Title,
      children: [
        _lineGroup([l10n.howItWorksSlide3Line1, l10n.howItWorksSlide3Line2]),
        _para(l10n.howItWorksSlide3Para1),
        _para(l10n.howItWorksSlide3Para2),
      ],
    );
  }
}

// ── Slide 4 ───────────────────────────────────────────────────
class _Slide4 extends StatelessWidget {
  const _Slide4();
  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return _SlideBody(
      title: l10n.howItWorksSlide4Title,
      children: [
        _para(l10n.howItWorksSlide4Para1),
        _line(l10n.howItWorksSlide4Line),
        const SizedBox(height: 4),
        _lineGroup([l10n.howItWorksSlide4Line1, l10n.howItWorksSlide4Line2]),
        _para(l10n.howItWorksSlide4Para2),
      ],
    );
  }
}

// ── Slide 5 ───────────────────────────────────────────────────
class _Slide5 extends StatelessWidget {
  const _Slide5();
  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return _SlideBody(
      title: l10n.howItWorksSlide5Title,
      children: [
        _lineGroup([l10n.howItWorksSlide5Line1, l10n.howItWorksSlide5Line2, l10n.howItWorksSlide5Line3]),
        _para(l10n.howItWorksSlide5Para1),
        _para(l10n.howItWorksSlide5Para2),
      ],
    );
  }
}

// ── Slide 6 ───────────────────────────────────────────────────
class _Slide6 extends StatelessWidget {
  const _Slide6();
  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return _SlideBody(
      title: l10n.howItWorksSlide6Title,
      children: [
        _para(l10n.howItWorksSlide6Para1),
        _para(l10n.howItWorksSlide6Para2),
        Text.rich(
          textAlign: TextAlign.center,
          TextSpan(
            style: llSerifItalic(size: 15.5, height: 1.6),
            children: [
              TextSpan(text: l10n.howItWorksSlide6RichTextBefore),
              WidgetSpan(
                alignment: PlaceholderAlignment.middle,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 2),
                  child: Icon(Icons.menu_rounded, size: 17, color: llGold),
                ),
              ),
              TextSpan(text: l10n.howItWorksSlide6RichTextAfter),
            ],
          ),
        ),
      ],
    );
  }
}

// ── Slide 7 ───────────────────────────────────────────────────
class _Slide7 extends StatelessWidget {
  const _Slide7();
  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return _SlideBody(
      title: l10n.howItWorksSlide7Title,
      children: [
        _para(l10n.howItWorksSlide7Para1),
        _lineGroup([l10n.howItWorksSlide7Line1, l10n.howItWorksSlide7Line2, l10n.howItWorksSlide7Line3]),
        _para(l10n.howItWorksSlide7Para2),
        _para(l10n.howItWorksSlide7Para3),
        _para(l10n.howItWorksSlide7Para4),
      ],
    );
  }
}
