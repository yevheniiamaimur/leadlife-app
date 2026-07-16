import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../app_theme.dart';
import '../l10n/app_localizations.dart';
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

  Map<int, ({String title, String text})> _clues(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return {
      1: (title: l10n.diceClueYesTitle, text: l10n.diceClueYesText),
      2: (title: l10n.diceClueConnectionsTitle, text: l10n.diceClueConnectionsText),
      3: (title: l10n.diceClueClarityTitle, text: l10n.diceClueClarityText),
      4: (title: l10n.diceClueExpansionTitle, text: l10n.diceClueExpansionText),
      5: (title: l10n.diceClueFreedomTitle, text: l10n.diceClueFreedomText),
      6: (title: l10n.diceClueMeaningTitle, text: l10n.diceClueMeaningText),
      7: (title: l10n.diceClueFeelingsTitle, text: l10n.diceClueFeelingsText),
      8: (title: l10n.diceClueExpressionTitle, text: l10n.diceClueExpressionText),
    };
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
    final l10n = AppLocalizations.of(context);
    final clues = _clues(context);
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
                LLSmallCaps(l10n.diceStepTwoOfThree, color: llMuted),
                const SizedBox(height: 24),
                Text(l10n.diceScreenTitle, style: llSerif(size: 26, height: 1.15)),
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
                        LLSmallCaps(l10n.diceYourIntentionLabel, size: 9, color: llGold),
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
                AnimatedSize(
                  duration: const Duration(milliseconds: 300),
                  alignment: Alignment.topCenter,
                  child: AnimatedSwitcher(
                    duration: const Duration(milliseconds: 300),
                    child: showResult ? Column(
                      key: ValueKey(_result),
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          '$_result',
                          style: llSerif(size: 44, color: isOne ? llGold : llInk, height: 1),
                        ),
                        const SizedBox(height: 14),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 28),
                          child: Container(
                            width: double.infinity,
                            padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 14),
                            decoration: BoxDecoration(
                              color: llCardBg,
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(color: isOne ? llGold : llHair),
                            ),
                            child: Column(
                              children: [
                                LLSmallCaps(clues[_result]!.title, size: 10, color: llGold),
                                const SizedBox(height: 6),
                                Text(
                                  clues[_result]!.text,
                                  textAlign: TextAlign.center,
                                  style: llSerifItalic(size: 14, color: llInk, height: 1.4),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ) : _rolling ? Text(
                      l10n.diceUniverseListens,
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
                          label: _rolling ? l10n.diceRollingLabel : (_rollCount == 0 ? l10n.diceRollLabel : l10n.diceRollAgainLabel),
                          enabled: !_rolling,
                          onTap: _roll,
                          variant: 'primary',
                        ),
                      if (showResult && isOne)
                        LLCTA(
                          label: l10n.diceEnterFirstFieldCta,
                          onTap: () => Navigator.of(context).push(_fadeRoute(
                            PaywallScreen(wish: widget.wish),
                          )),
                        ),
                      if (showResult && !isOne) ...[
                        LLCTA(label: l10n.diceRollAgainLabel, onTap: _roll, variant: 'dark'),
                        const SizedBox(height: 10),
                        GestureDetector(
                          onTap: () => Navigator.of(context).maybePop(),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 6),
                            child: Text(l10n.diceRefineMyDesire,
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
