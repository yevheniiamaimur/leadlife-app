import 'package:flutter/material.dart';
import '../app_theme.dart';
import '../l10n/app_localizations.dart';
import '../services/ai_service.dart';
import '../services/analytics_service.dart';
import '../services/game_content_service.dart';
import '../services/locale_service.dart';
import '../services/game_history_service.dart';
import '../services/profile_service.dart';
import '../widgets/ll_widgets.dart';
import 'crisis_resources_screen.dart';
import 'dice_roll_screen.dart';
import 'help_modal.dart';

class WishEntryScreen extends StatefulWidget {
  const WishEntryScreen({super.key, this.initialText});
  final String? initialText;
  @override
  State<WishEntryScreen> createState() => _WishEntryScreenState();
}

class _WishEntryScreenState extends State<WishEntryScreen> {
  late final _ctrl = TextEditingController(text: widget.initialText ?? '');
  bool _showHelp = false;
  bool _submitting = false;

  @override
  void dispose() {
    _ctrl.dispose();
    super.dispose();
  }

  bool get _canSubmit => _ctrl.text.trim().length > 3 && !_submitting;

  /// Kicks off game-content generation and awaits it fully (unlike the rest
  /// of the app's fire-and-forget AI calls) so a crisis-detected refusal can
  /// be caught here, before the player ever reaches the board — see
  /// GameContentService for the ordinary-failure fallback behavior, which
  /// still applies to every non-crisis error.
  Future<void> _submit() async {
    FocusScope.of(context).unfocus();
    final wish = _ctrl.text.trim();
    setState(() => _submitting = true);
    GameHistoryService.recordStart(wish).ignore();
    AnalyticsService.instance.logWishConfirmed().ignore();
    try {
      final profile = await ProfileService.load();
      await GameContentService.generate(
        wish: wish,
        languageCode: LocaleService.instance.effectiveLanguageCode,
        focus: profile?.focus,
      );
    } on AiServiceException catch (e) {
      if (e.isCrisisDetected) {
        if (!mounted) return;
        setState(() => _submitting = false);
        Navigator.of(context).push(_fadeRoute(const CrisisResourcesScreen()));
        return;
      }
      // Any other AiServiceException already left GameContentService on its
      // static fallback — fall through to the normal journey below.
    }
    if (!mounted) return;
    setState(() => _submitting = false);
    Navigator.of(context).push(_fadeRoute(DiceRollScreen(wish: wish)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: llBg,
      resizeToAvoidBottomInset: true,
      body: Stack(
        children: [
          SafeArea(
            child: Padding(
              padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 28),
                  // Step label
                  Center(
                    child: LLSmallCaps(
                      AppLocalizations.of(context).stepOneOfThreeIntention,
                      color: llGold,
                    ),
                  ),
                  const SizedBox(height: 28),
                  // Heading
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(AppLocalizations.of(context).whatDoYouDesire,
                          style: llSerif(size: 30, height: 1.1)),
                        const SizedBox(height: 10),
                        Text(
                          AppLocalizations.of(context).presentPerfectPrompt,
                          style: llSerifItalic(size: 14, height: 1.5),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 24),
                  // Journal field
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0x99FFFFF8),
                          borderRadius: BorderRadius.circular(16),
                          boxShadow: const [
                            BoxShadow(color: Color(0x14B4A078), blurRadius: 24, offset: Offset(0, 4)),
                          ],
                        ),
                        padding: const EdgeInsets.all(20),
                        child: ValueListenableBuilder<TextEditingValue>(
                          valueListenable: _ctrl,
                          builder: (_, _, _) => TextField(
                            controller: _ctrl,
                            maxLines: null,
                            expands: true,
                            autofocus: true,
                            textAlignVertical: TextAlignVertical.top,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: AppLocalizations.of(context).wishFieldHint,
                              hintStyle: llSerifItalic(size: 17, color: llHair, height: 2.0),
                            ),
                            style: llSerif(size: 17, height: 2.0),
                            cursorColor: llGold,
                            cursorWidth: 1.5,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32),
                    child: Text(
                      AppLocalizations.of(context).beSpecificHonestYou,
                      textAlign: TextAlign.center,
                      style: llUi(size: 12, color: llMutedSoft, letterSpacing: 0.3),
                    ),
                  ),
                  const SizedBox(height: 12),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: ValueListenableBuilder<TextEditingValue>(
                      valueListenable: _ctrl,
                      builder: (_, _, _) => LLCTA(
                        label: AppLocalizations.of(context).confirmMyDesire,
                        enabled: _canSubmit,
                        onTap: _canSubmit ? _submit : null,
                      ),
                    ),
                  ),
                  const SizedBox(height: 40),
                ],
              ),
            ),
          ),
          LLBackArrow(onTap: () => Navigator.of(context).maybePop()),
          LLHelpBtn(
            right: 22,
            onTap: () => setState(() => _showHelp = true),
          ),
          if (_showHelp)
            HelpModal(onClose: () => setState(() => _showHelp = false)),
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
