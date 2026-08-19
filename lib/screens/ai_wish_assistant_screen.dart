import 'package:flutter/material.dart';
import '../app_theme.dart';
import '../l10n/app_localizations.dart';
import '../services/ai_service.dart';
import '../widgets/ll_widgets.dart';

/// A short chat with the AI game assistant that helps the player turn a
/// vague desire into a clear, present-tense wish statement. Returns the
/// accepted suggestion via [Navigator.pop] (or null if dismissed) — the
/// wish-entry screen still requires the player to confirm it themselves.
class AiWishAssistantScreen extends StatefulWidget {
  const AiWishAssistantScreen({super.key});

  @override
  State<AiWishAssistantScreen> createState() => _AiWishAssistantScreenState();
}

class _AiWishAssistantScreenState extends State<AiWishAssistantScreen> {
  final List<ChatTurn> _history = [];
  final _inputCtrl = TextEditingController();
  final _scrollCtrl = ScrollController();
  bool _sending = false;
  String? _errorText;
  String? _suggestedWish;

  @override
  void dispose() {
    _inputCtrl.dispose();
    _scrollCtrl.dispose();
    super.dispose();
  }

  void _scrollToBottom() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!_scrollCtrl.hasClients) return;
      _scrollCtrl.animateTo(
        _scrollCtrl.position.maxScrollExtent,
        duration: const Duration(milliseconds: 250),
        curve: Curves.easeOut,
      );
    });
  }

  Future<void> _send() async {
    final text = _inputCtrl.text.trim();
    if (text.isEmpty || _sending) return;
    FocusScope.of(context).unfocus();
    setState(() {
      _history.add(ChatTurn(role: 'user', text: text));
      _inputCtrl.clear();
      _sending = true;
      _errorText = null;
    });
    _scrollToBottom();
    await _requestReply();
  }

  Future<void> _retry() async {
    setState(() {
      _sending = true;
      _errorText = null;
    });
    await _requestReply();
  }

  Future<void> _requestReply() async {
    try {
      final result = await AiService.clarifyWish(history: _history);
      if (!mounted) return;
      setState(() {
        _history.add(ChatTurn(role: 'assistant', text: result.reply));
        _suggestedWish = result.suggestedWish ?? _suggestedWish;
        _sending = false;
      });
      _scrollToBottom();
    } on AiServiceException {
      if (!mounted) return;
      setState(() {
        _sending = false;
        _errorText = AppLocalizations.of(context).aiAssistantError;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return Scaffold(
      backgroundColor: llBg,
      resizeToAvoidBottomInset: true,
      body: Stack(
        children: [
          SafeArea(
            child: Column(
              children: [
                const SizedBox(height: 64),
                LLSmallCaps(l10n.aiAssistantTitle, color: llGold),
                const SizedBox(height: 16),
                Expanded(
                  child: ListView(
                    controller: _scrollCtrl,
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                    children: [
                      LLChatBubble(text: l10n.aiAssistantGreeting, isUser: false),
                      for (final turn in _history) LLChatBubble(text: turn.text, isUser: turn.role == 'user'),
                      if (_sending)
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 4),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: SizedBox(
                              width: 18,
                              height: 18,
                              child: CircularProgressIndicator(strokeWidth: 2, color: llGold),
                            ),
                          ),
                        ),
                      if (_errorText != null)
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(_errorText!, style: llUi(size: 13, color: const Color(0xFFB3261E))),
                              const SizedBox(height: 4),
                              GestureDetector(
                                onTap: _retry,
                                child: Text(
                                  l10n.aiAssistantRetryCta,
                                  style: llUi(size: 13, color: llGold, weight: FontWeight.w600),
                                ),
                              ),
                            ],
                          ),
                        ),
                    ],
                  ),
                ),
                if (_suggestedWish != null)
                  Padding(
                    padding: const EdgeInsets.fromLTRB(24, 0, 24, 14),
                    child: LLCTA(
                      label: l10n.aiAssistantUseThisWish,
                      onTap: () => Navigator.of(context).pop(_suggestedWish),
                    ),
                  ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Expanded(
                        child: Container(
                          constraints: const BoxConstraints(minHeight: 48),
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          decoration: BoxDecoration(
                            color: llCardBg,
                            borderRadius: BorderRadius.circular(24),
                            border: Border.all(color: llHair, width: 1),
                          ),
                          child: TextField(
                            controller: _inputCtrl,
                            minLines: 1,
                            maxLines: 4,
                            textInputAction: TextInputAction.send,
                            onSubmitted: (_) => _send(),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              isCollapsed: true,
                              hintText: l10n.aiAssistantInputHint,
                              hintStyle: llUi(size: 15, color: llMutedSoft),
                            ),
                            style: llUi(size: 15, color: llInk),
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      GestureDetector(
                        onTap: _sending ? null : _send,
                        child: Container(
                          width: 44,
                          height: 44,
                          decoration: BoxDecoration(
                            color: _sending ? llDisabled : llGold,
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(Icons.arrow_upward_rounded, color: Colors.white, size: 20),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          LLBackArrow(onTap: () => Navigator.of(context).maybePop()),
        ],
      ),
    );
  }
}
