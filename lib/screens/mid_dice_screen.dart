import 'dart:math' as math;
import 'package:flutter/material.dart';
import '../app_theme.dart';
import '../l10n/app_localizations.dart';
import '../models/field.dart';
import '../widgets/ll_widgets.dart';
import 'success_code_screen.dart';
import 'game_board_screen.dart';

class MidDiceScreen extends StatefulWidget {
  const MidDiceScreen({
    super.key,
    required this.currentFieldNum,
    required this.wish,
    required this.completedFields,
    required this.answers,
  });

  final int currentFieldNum;
  final String wish;
  final List<int> completedFields;
  final Map<int, String> answers;

  @override
  State<MidDiceScreen> createState() => _MidDiceScreenState();
}

class _MidDiceScreenState extends State<MidDiceScreen> {
  int? _result;
  bool _rolling = false;

  bool get _isFinal => widget.currentFieldNum == kFields.length; // 32 = Wholeness
  bool get _showResult => _result != null && !_rolling;

  int? get _newFieldNum {
    if (_result == null) return null;
    if (_isFinal) return _result; // final: area of action = roll value (1-8)
    return math.min(widget.currentFieldNum + _result!, kFields.length);
  }

  GameField? get _newField => _newFieldNum == null
      ? null
      : localizeField(AppLocalizations.of(context), kFields.firstWhere((f) => f.n == _newFieldNum!));

  bool get _overshoot => !_isFinal && _result != null && (widget.currentFieldNum + _result!) > kFields.length;

  void _roll() {
    if (_rolling) return;
    setState(() { _rolling = true; _result = null; });
    Future.delayed(const Duration(milliseconds: 1200), () {
      if (!mounted) return;
      setState(() {
        _result = 1 + math.Random().nextInt(8);
        _rolling = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: llBg,
      body: Stack(
        children: [
          SafeArea(
            child: Column(
              children: [
                const SizedBox(height: 32),
                LLSmallCaps(
                  _isFinal
                      ? AppLocalizations.of(context).finalTurnLabel
                      : AppLocalizations.of(context).pathContinuesLabel,
                  size: 10,
                  color: llMuted,
                  letterSpacing: 2.5,
                ),
                const SizedBox(height: 20),

                // Wish — always visible, readable
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 14),
                    decoration: BoxDecoration(
                      color: llCardBg,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: const Color(0x40C8A96E)),
                    ),
                    child: Column(
                      children: [
                        LLSmallCaps(AppLocalizations.of(context).yourDesireLabel, size: 9, color: llMuted, letterSpacing: 2),
                        const SizedBox(height: 6),
                        Text(
                          '"${widget.wish}"',
                          textAlign: TextAlign.center,
                          style: llSerifItalic(size: 15, color: llGoldDark, height: 1.45, weight: FontWeight.w500),
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                ),

                const SizedBox(height: 28),

                // Instruction text
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 36),
                  child: Text(
                    _showResult
                        ? (_isFinal
                            ? AppLocalizations.of(context).currentAreaOfActionColon
                            : (_overshoot
                                ? AppLocalizations.of(context).reachedFinalPathText
                                : AppLocalizations.of(context).youAreNowOnText))
                        : (_isFinal
                            ? AppLocalizations.of(context).finalTurnInstructions
                            : AppLocalizations.of(context).onFieldWhereWillPathLead(
                                widget.currentFieldNum.toString().padLeft(2, '0'),
                              )),
                    textAlign: TextAlign.center,
                    style: llSerifItalic(size: 14, color: llMuted, height: 1.55),
                  ),
                ),

                const SizedBox(height: 36),

                // Dice
                LLDice(
                  pips: _result ?? 1,
                  size: 140,
                  glow: _showResult,
                  highlight: _showResult,
                  tumbling: _rolling,
                ),

                const SizedBox(height: 32),

                // Result — no big number, just field info
                AnimatedSwitcher(
                  duration: const Duration(milliseconds: 400),
                  child: _showResult && _newField != null
                      ? Column(
                          key: ValueKey(_result),
                          children: [
                            const Center(child: LLHairline(width: 36)),
                            const SizedBox(height: 16),
                            LLSmallCaps(
                              _isFinal
                                  ? AppLocalizations.of(context).fromThisPlaceLabel
                                  : AppLocalizations.of(context).arrivingAtField(
                                      (_newFieldNum ?? 0).toString().padLeft(2, '0'),
                                    ),
                              size: 10,
                              letterSpacing: 2,
                            ),
                            const SizedBox(height: 8),
                            Text(
                              _newField!.name,
                              textAlign: TextAlign.center,
                              style: llSerif(size: 26, height: 1.1, weight: FontWeight.w600).copyWith(letterSpacing: 2),
                            ),
                            const SizedBox(height: 4),
                            Text(_newField!.subtitle,
                              style: llSerifItalic(size: 13, color: llMuted)),
                          ],
                        )
                      : _rolling
                          ? Text(
                              _isFinal
                                  ? AppLocalizations.of(context).wheelTurnsOnceMore
                                  : AppLocalizations.of(context).pathTurnsEllipsis,
                              style: llSerifItalic(size: 13, color: llMutedSoft),
                            )
                          : const SizedBox.shrink(),
                ),

                const Spacer(),

                // CTA — pinned to bottom
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    children: [
                      if (!_showResult)
                        LLCTA(
                          label: _rolling
                              ? AppLocalizations.of(context).rollingEllipsis
                              : (_isFinal
                                  ? AppLocalizations.of(context).rollFinalDiceCta
                                  : AppLocalizations.of(context).rollDiceCta),
                          enabled: !_rolling,
                          onTap: _roll,
                          variant: 'primary',
                        ),
                      if (_showResult && _newField != null)
                        LLCTA(
                          label: _isFinal
                              ? AppLocalizations.of(context).receiveSuccessCodeCta
                              : AppLocalizations.of(context).enterFieldNameCta(_newField!.name),
                          onTap: _proceed,
                        ),
                    ],
                  ),
                ),
                const SizedBox(height: 40),
              ],
            ),
          ),
          LLBackArrow(
            onTap: () => Navigator.of(context).pushAndRemoveUntil(
              _fadeRoute(GameBoardScreen(
                wish: widget.wish,
                currentFieldNum: widget.currentFieldNum,
                completedFields: widget.completedFields,
                answers: widget.answers,
              )),
              (_) => false,
            ),
          ),
        ],
      ),
    );
  }

  void _proceed() {
    if (_newField == null) return;
    if (_isFinal) {
      Navigator.of(context).pushAndRemoveUntil(
        _fadeRoute(SuccessCodeScreen(
          wish: widget.wish,
          answers: widget.answers,
          currentAreaField: _newField!,
        )),
        (_) => false,
      );
    } else {
      Navigator.of(context).pushAndRemoveUntil(
        _fadeRoute(GameBoardScreen(
          wish: widget.wish,
          currentFieldNum: _newField!.n,
          completedFields: widget.completedFields,
          answers: widget.answers,
        )),
        (r) => r.isFirst,
      );
    }
  }
}

PageRouteBuilder<T> _fadeRoute<T>(Widget page) => PageRouteBuilder(
  pageBuilder: (_, _, _) => page,
  transitionsBuilder: (_, a, _, child) => FadeTransition(opacity: a, child: child),
  transitionDuration: const Duration(milliseconds: 350),
);
