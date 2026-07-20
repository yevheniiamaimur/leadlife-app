import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../app_theme.dart';
import '../l10n/app_localizations.dart';
import '../services/auth_service.dart';
import '../services/profile_service.dart';
import '../widgets/ll_widgets.dart';
import 'awakened_screen.dart';

// Offered right after a paid tariff is chosen — an anonymous Firebase user
// can optionally upgrade to a real identity so a purchase survives a phone
// change. Never a hard gate: skipping just continues to AwakenedScreen.
class AccountLinkScreen extends StatefulWidget {
  const AccountLinkScreen({super.key, required this.wish});
  final String wish;

  @override
  State<AccountLinkScreen> createState() => _AccountLinkScreenState();
}

class _AccountLinkScreenState extends State<AccountLinkScreen> {
  final _passwordCtrl = TextEditingController();
  final _scrollCtrl = ScrollController();
  late final TextEditingController _emailCtrl;
  bool _showEmailForm = false;
  bool _busy = false;
  String? _error;

  @override
  void initState() {
    super.initState();
    _emailCtrl = TextEditingController();
    ProfileService.load().then((profile) {
      if (mounted && profile != null && profile.email.isNotEmpty) {
        _emailCtrl.text = profile.email;
      }
    });
  }

  @override
  void dispose() {
    _emailCtrl.dispose();
    _passwordCtrl.dispose();
    _scrollCtrl.dispose();
    super.dispose();
  }

  void _toggleEmailForm() {
    setState(() => _showEmailForm = !_showEmailForm);
    if (_showEmailForm) _scrollToBottomSoon();
  }

  // The form + CTA appear below the fold once the keyboard opens — scroll
  // them into view instead of leaving them hidden behind it. Called both
  // when the form first expands and again once a field gains focus (the
  // extra delay there lets the keyboard's own open animation settle before
  // we measure how far there is left to scroll).
  void _scrollToBottomSoon({Duration delay = Duration.zero}) {
    Future.delayed(delay, () {
      if (!mounted) return;
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (!_scrollCtrl.hasClients) return;
        _scrollCtrl.animateTo(
          _scrollCtrl.position.maxScrollExtent,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeOut,
        );
      });
    });
  }

  void _continue() {
    if (!mounted) return;
    Navigator.of(context).push(_fadeRoute(AwakenedScreen(wish: widget.wish)));
  }

  Future<void> _run(Future<void> Function() action) async {
    setState(() { _busy = true; _error = null; });
    try {
      await action();
      _continue();
    } on FirebaseAuthException catch (_) {
      if (mounted) setState(() => _error = AppLocalizations.of(context).accountLinkErrorGeneric);
    } catch (_) {
      if (mounted) setState(() => _error = AppLocalizations.of(context).accountLinkErrorGeneric);
    } finally {
      if (mounted) setState(() => _busy = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final isIOS = defaultTargetPlatform == TargetPlatform.iOS;
    return Scaffold(
      backgroundColor: llBg,
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              controller: _scrollCtrl,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 130),
                    Text(l10n.accountLinkHeadline, style: llSerif(size: 28, height: 1.2)),
                    const SizedBox(height: 10),
                    Text(l10n.accountLinkSubtitle, style: llSerifItalic(size: 14, height: 1.5)),
                    const SizedBox(height: 32),
                    if (isIOS) ...[
                      LLCTA(
                        label: l10n.continueWithApple,
                        variant: 'dark',
                        onTap: _busy ? null : () => _run(() => AuthService.instance.linkWithApple()),
                      ),
                      const SizedBox(height: 12),
                    ],
                    LLCTA(
                      label: l10n.continueWithGoogle,
                      variant: 'secondary',
                      onTap: _busy ? null : () => _run(() => AuthService.instance.linkWithGoogle()),
                    ),
                    const SizedBox(height: 12),
                    LLCTA(
                      label: l10n.continueWithEmail,
                      variant: 'secondary',
                      onTap: _busy ? null : _toggleEmailForm,
                    ),
                    if (_showEmailForm) ...[
                      const SizedBox(height: 20),
                      Container(
                        decoration: llCardDecoration(),
                        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 6),
                        child: TextField(
                          controller: _emailCtrl,
                          keyboardType: TextInputType.emailAddress,
                          onTap: () => _scrollToBottomSoon(delay: const Duration(milliseconds: 250)),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: l10n.emailHint,
                            hintStyle: llSerifItalic(size: 17, color: llHair),
                          ),
                          style: llSerif(size: 17),
                          cursorColor: llGold,
                          cursorWidth: 1.5,
                        ),
                      ),
                      const SizedBox(height: 12),
                      Container(
                        decoration: llCardDecoration(),
                        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 6),
                        child: TextField(
                          controller: _passwordCtrl,
                          obscureText: true,
                          onTap: () => _scrollToBottomSoon(delay: const Duration(milliseconds: 250)),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: l10n.accountLinkPasswordHint,
                            hintStyle: llSerifItalic(size: 17, color: llHair),
                          ),
                          style: llSerif(size: 17),
                          cursorColor: llGold,
                          cursorWidth: 1.5,
                        ),
                      ),
                      const SizedBox(height: 16),
                      LLCTA(
                        label: l10n.createAccountCta,
                        enabled: !_busy && _emailCtrl.text.trim().contains('@') && _passwordCtrl.text.trim().length >= 6,
                        onTap: () => _run(() => AuthService.instance.linkWithEmailPassword(
                          _emailCtrl.text.trim(),
                          _passwordCtrl.text.trim(),
                        )),
                      ),
                    ],
                    if (_error != null) ...[
                      const SizedBox(height: 14),
                      Text(_error!, style: llUi(size: 12, color: Colors.redAccent)),
                    ],
                    const SizedBox(height: 24),
                    Center(
                      child: GestureDetector(
                        onTap: _busy ? null : _continue,
                        child: Text(l10n.accountLinkSkip, style: llUi(size: 12, color: llMutedSoft)),
                      ),
                    ),
                    const SizedBox(height: 40),
                  ],
                ),
              ),
            ),
            LLBackArrow(onTap: () => Navigator.of(context).maybePop()),
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
