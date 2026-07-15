import 'package:flutter/material.dart';
import '../app_theme.dart';
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
    return Scaffold(
      backgroundColor: llBg,
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                const SizedBox(height: 28),
                Center(child: LLSmallCaps('Step ${_page + 1} of $_totalSlides', color: llGold)),
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
                    label: _page == _totalSlides - 1 ? 'Begin your journey' : 'Continue',
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
  Widget build(BuildContext context) => _SlideBody(
    title: 'What is the leadlife journey?',
    children: [
      _para(
        'A guided journey designed to help you clarify what you truly want, '
        'shift your inner state, and find your direction.',
      ),
    ],
  );
}

// ── Slide 2 ───────────────────────────────────────────────────
class _Slide2 extends StatelessWidget {
  const _Slide2();
  @override
  Widget build(BuildContext context) => _SlideBody(
    title: 'Start with one desire',
    children: [
      _lineGroup(['Write down what you want as if it is already true.', 'Focus on it.', 'Then roll the dice.']),
      _para(
        'In leadlife, your journey begins by clarifying the intention '
        'you are ready to work with right now.',
      ),
    ],
  );
}

// ── Slide 3 ───────────────────────────────────────────────────
class _Slide3 extends StatelessWidget {
  const _Slide3();
  @override
  Widget build(BuildContext context) => _SlideBody(
    title: 'Let the dice guide you',
    children: [
      _lineGroup(['If you roll 1, your desire is ready.', 'Your journey begins.']),
      _para(
        'If another number appears, you’ll receive a clue to help you '
        'clarify, rewrite, or reconsider your desire.',
      ),
      _para('You can refine it — or choose a completely different one.'),
    ],
  );
}

// ── Slide 4 ───────────────────────────────────────────────────
class _Slide4 extends StatelessWidget {
  const _Slide4();
  @override
  Widget build(BuildContext context) => _SlideBody(
    title: 'Then your journey begins',
    children: [
      _para('Choose how you want to interact with leadlife and start moving through your unique path.'),
      _line('The system is built around 32 fields:'),
      const SizedBox(height: 4),
      _lineGroup(['10 levels of reality.', '22 life strategies.']),
      _para('Your path through them is uniquely yours.'),
    ],
  );
}

// ── Slide 5 ───────────────────────────────────────────────────
class _Slide5 extends StatelessWidget {
  const _Slide5();
  @override
  Widget build(BuildContext context) => _SlideBody(
    title: 'Move through your path',
    children: [
      _lineGroup(['Roll the dice.', 'Enter a field.', 'Answer one question or complete one simple task.']),
      _para('Most interactions take less than a minute.'),
      _para('Each field shifts your focus and helps you explore your desire from a different perspective.'),
    ],
  );
}

// ── Slide 6 ───────────────────────────────────────────────────
class _Slide6 extends StatelessWidget {
  const _Slide6();
  @override
  Widget build(BuildContext context) => _SlideBody(
    title: '22 strategies. Different ways of moving.',
    children: [
      _para('You move through different life strategies — ways of thinking, choosing, feeling and acting.'),
      _para('You don’t need to study the system. Just follow your path.'),
      Text.rich(
        textAlign: TextAlign.center,
        TextSpan(
          style: llSerifItalic(size: 15.5, height: 1.6),
          children: [
            const TextSpan(text: 'Want to understand the structure behind it? Explore '),
            WidgetSpan(
              alignment: PlaceholderAlignment.middle,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 2),
                child: Icon(Icons.menu_rounded, size: 17, color: llGold),
              ),
            ),
            const TextSpan(text: ' About the system in the menu.'),
          ],
        ),
      ),
    ],
  );
}

// ── Slide 7 ───────────────────────────────────────────────────
class _Slide7 extends StatelessWidget {
  const _Slide7();
  @override
  Widget build(BuildContext context) => _SlideBody(
    title: 'Your success code',
    children: [
      _para('At the end of your journey, your answers come together.'),
      _lineGroup(['Your decisions.', 'Your insights.', 'Your direction.']),
      _para('leadlife turns them into your personal success code — a map back to your desire.'),
      _para('Not a universal answer.'),
      _para('Your path, built from your own answers.'),
    ],
  );
}
