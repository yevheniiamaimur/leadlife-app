import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../app_theme.dart';
import '../widgets/ll_widgets.dart';
import 'paywall_screen.dart';

class DiceRollScreen extends StatefulWidget {
  const DiceRollScreen({super.key, required this.wish});
  final String wish;

  @override
  State<DiceRollScreen> createState() => _DiceRollScreenState();
}

class _DiceRollScreenState extends State<DiceRollScreen> with SingleTickerProviderStateMixin {
  int? _result;
  bool _rolling = false;
  int _rollCount = 0;

  late final AnimationController _idleCtrl;
  late final Animation<double> _idleScale;

  @override
  void initState() {
    super.initState();
    _idleCtrl = AnimationController(vsync: this, duration: const Duration(milliseconds: 2500))
      ..repeat(reverse: true);
    _idleScale = Tween<double>(begin: 1.0, end: 1.03).animate(
      CurvedAnimation(parent: _idleCtrl, curve: Curves.easeInOut),
    );
  }

  @override
  void dispose() {
    _idleCtrl.dispose();
    super.dispose();
  }

  void _roll() {
    if (_rolling) return;
    HapticFeedback.lightImpact();
    setState(() { _rolling = true; _result = null; });
    Future.delayed(const Duration(milliseconds: 1200), () {
      if (!mounted) return;
      setState(() {
        _result = 1 + math.Random().nextInt(8);
        _rolling = false;
        _rollCount++;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final isOne = _result == 1;
    final showResult = _result != null && !_rolling;

    return Scaffold(
      backgroundColor: llBg,
      body: Stack(
        children: [
          SafeArea(
            child: Column(
              children: [
                const SizedBox(height: 28),
                const LLSmallCaps('Step 2 of 3', color: llMuted),
                const SizedBox(height: 24),
                Text('Awakening the Path', style: llSerif(size: 26, height: 1.15)),
                const SizedBox(height: 18),
                // Wish echo
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 28),
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                    decoration: BoxDecoration(
                      color: llCardBg,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: llHair),
                    ),
                    child: Column(
                      children: [
                        const LLSmallCaps('Your intention', size: 9, color: llGold),
                        const SizedBox(height: 4),
                        Text(
                          '"${widget.wish}"',
                          textAlign: TextAlign.center,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: llSerifItalic(size: 13.5, color: llInk, height: 1.4),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 28),
                // Dice — idle pulse when waiting for first roll
                AnimatedBuilder(
                  animation: _idleScale,
                  builder: (_, child) => Transform.scale(
                    scale: (_result == null && !_rolling) ? _idleScale.value : 1.0,
                    child: child,
                  ),
                  child: LLDice(
                    pips: _result ?? 1,
                    size: 140,
                    glow: isOne && showResult,
                    highlight: isOne && showResult,
                    tumbling: _rolling,
                  ),
                ),
                const SizedBox(height: 24),
                // Result message
                SizedBox(
                  height: 70,
                  child: AnimatedSwitcher(
                    duration: const Duration(milliseconds: 300),
                    child: showResult ? Column(
                      key: ValueKey(_result),
                      children: [
                        Text(
                          '$_result',
                          style: llSerif(size: 44, color: isOne ? llGold : llInk, height: 1),
                        ),
                        const SizedBox(height: 6),
                        Text(
                          isOne
                            ? 'The path awakens. Your journey begins.'
                            : 'Not yet · roll $_rollCount',
                          style: isOne
                            ? llSerif(size: 15, color: llGold)
                            : llSerifItalic(size: 13, color: llMuted),
                        ),
                      ],
                    ) : _rolling ? Text(
                      'The universe listens…',
                      style: llSerifItalic(size: 13, color: llMutedSoft),
                    ) : const SizedBox.shrink(),
                  ),
                ),
                const SizedBox(height: 32),
                // CTAs
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    children: [
                      if (!showResult)
                        LLCTA(
                          label: _rolling ? 'Rolling…' : (_rollCount == 0 ? 'Roll' : 'Roll Again'),
                          enabled: !_rolling,
                          onTap: _roll,
                          variant: 'primary',
                        ),
                      if (showResult && isOne)
                        LLCTA(
                          label: 'Enter the First Field  →',
                          onTap: () => Navigator.of(context).push(_fadeRoute(
                            PaywallScreen(wish: widget.wish),
                          )),
                        ),
                      if (showResult && !isOne) ...[
                        LLCTA(label: 'Roll Again', onTap: _roll, variant: 'dark'),
                        const SizedBox(height: 10),
                        GestureDetector(
                          onTap: () => Navigator.of(context).maybePop(),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 6),
                            child: Text('Refine my desire',
                              style: llUi(size: 13, color: llGold, letterSpacing: 0.3)),
                          ),
                        ),
                      ],
                    ],
                  ),
                ),
                const Spacer(),
                const SizedBox(height: 24),
              ],
            ),
          ),
          LLBackArrow(onTap: () { Navigator.of(context).maybePop(); }),
        ],
      ),
    );
  }
}

PageRouteBuilder<T> _fadeRoute<T>(Widget page) => PageRouteBuilder(
  pageBuilder: (_, _, _) => page,
  transitionsBuilder: (_, a, _, child) => FadeTransition(opacity: a, child: child),
  transitionDuration: const Duration(milliseconds: 350),
);
