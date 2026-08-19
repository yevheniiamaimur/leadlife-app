import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../app_theme.dart';
import '../l10n/app_localizations.dart';
import '../services/auth_service.dart';
import '../services/profile_service.dart';
import '../widgets/ll_widgets.dart';
import 'onboarding_name_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});
  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  Profile? _profile;
  bool _loading = true;
  bool _busy = false;
  User? get _user => AuthService.instance.currentUser;
  bool get _hasPassword =>
      _user?.providerData.any((p) => p.providerId == 'password') ?? false;

  @override
  void initState() {
    super.initState();
    _load();
  }

  Future<void> _load() async {
    final profile = await ProfileService.load();
    if (mounted) {
      setState(() {
        _profile = profile;
        _loading = false;
      });
    }
  }

  String _formatDate(DateTime d) =>
      '${d.day.toString().padLeft(2, '0')} / ${d.month.toString().padLeft(2, '0')} / ${d.year}';

  Future<void> _resetPassword() async {
    final l10n = AppLocalizations.of(context);
    final controller = TextEditingController(
      text: _user?.email ?? _profile?.email ?? '',
    );
    final email = await showDialog<String>(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(l10n.resetPasswordAction),
        content: TextField(
          controller: controller,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(hintText: l10n.resetPasswordPrompt),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(l10n.cancelAction),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context, controller.text.trim()),
            child: Text(l10n.confirmAction),
          ),
        ],
      ),
    );
    controller.dispose();
    if (email == null || email.isEmpty) return;
    try {
      await AuthService.instance.sendPasswordResetEmail(email);
      if (mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text(l10n.resetPasswordSent)));
      }
    } catch (_) {
      if (mounted) _showError();
    }
  }

  Future<bool> _confirm(String title, String message) async {
    final l10n = AppLocalizations.of(context);
    return await showDialog<bool>(
          context: context,
          builder: (context) => AlertDialog(
            title: Text(title),
            content: Text(message),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context, false),
                child: Text(l10n.cancelAction),
              ),
              TextButton(
                onPressed: () => Navigator.pop(context, true),
                child: Text(l10n.confirmAction),
              ),
            ],
          ),
        ) ??
        false;
  }

  Future<void> _signOut() async {
    final l10n = AppLocalizations.of(context);
    if (await _confirm(l10n.signOutAction, l10n.signOutConfirm)) {
      await _run(AuthService.instance.signOutAndStartFresh);
    }
  }

  Future<void> _deleteAccount() async {
    final l10n = AppLocalizations.of(context);
    if (await _confirm(l10n.deleteAccountAction, l10n.deleteAccountConfirm)) {
      await _run(AuthService.instance.deleteAccount);
    }
  }

  Future<void> _run(Future<void> Function() action) async {
    setState(() => _busy = true);
    try {
      await action();
      if (!mounted) return;
      Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (_) => const OnboardingNameScreen()),
        (_) => false,
      );
    } catch (_) {
      if (mounted) {
        setState(() => _busy = false);
        _showError();
      }
    }
  }

  void _showError() => ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(content: Text(AppLocalizations.of(context).accountActionError)),
  );

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final profile = _profile;
    final isAnonymous = _user?.isAnonymous ?? true;
    return Scaffold(
      backgroundColor: llBg,
      body: Stack(
        children: [
          SafeArea(
            child: _loading
                ? const SizedBox.shrink()
                : SingleChildScrollView(
                    padding: const EdgeInsets.fromLTRB(24, 96, 24, 40),
                    child: Column(
                      children: [
                        const LLLogo(size: 56, color: llGold),
                        const SizedBox(height: 18),
                        Text(
                          profile?.name ?? l10n.yourProfileFallback,
                          textAlign: TextAlign.center,
                          style: llSerif(size: 26, weight: FontWeight.w600),
                        ),
                        const SizedBox(height: 28),
                        if (profile == null)
                          Text(
                            l10n.profileNoDataMessage,
                            textAlign: TextAlign.center,
                            style: llSerifItalic(
                              size: 14,
                              color: llMutedSoft,
                              height: 1.5,
                            ),
                          )
                        else ...[
                          if (profile.birthday != null)
                            _ProfileRow(
                              label: l10n.profileBirthdayLabel,
                              value: _formatDate(profile.birthday!),
                            ),
                          if (profile.email.isNotEmpty)
                            _ProfileRow(
                              label: l10n.profileEmailLabel,
                              value: profile.email,
                            ),
                          if (profile.focus.isNotEmpty)
                            _ProfileRow(
                              label: l10n.profileFocusLabel,
                              value: profile.focus,
                            ),
                        ],
                        const SizedBox(height: 14),
                        LLSmallCaps(l10n.accountSectionTitle, color: llGold),
                        const SizedBox(height: 10),
                        Text(
                          isAnonymous
                              ? l10n.accountAnonymousStatus
                              : l10n.accountConnectedStatus,
                          textAlign: TextAlign.center,
                          style: llUi(size: 13, color: llMuted),
                        ),
                        const SizedBox(height: 18),
                        if (_hasPassword) ...[
                          LLCTA(
                            label: l10n.resetPasswordAction,
                            variant: 'secondary',
                            onTap: _busy ? null : _resetPassword,
                          ),
                          const SizedBox(height: 12),
                        ],
                        if (!isAnonymous) ...[
                          LLCTA(
                            label: l10n.signOutAction,
                            variant: 'secondary',
                            onTap: _busy ? null : _signOut,
                          ),
                          const SizedBox(height: 12),
                        ],
                        LLCTA(
                          label: l10n.deleteAccountAction,
                          variant: 'secondary',
                          onTap: _busy ? null : _deleteAccount,
                        ),
                      ],
                    ),
                  ),
          ),
          LLBackArrow(
            onTap: _busy ? null : () => Navigator.of(context).maybePop(),
          ),
        ],
      ),
    );
  }
}

class _ProfileRow extends StatelessWidget {
  const _ProfileRow({required this.label, required this.value});
  final String label;
  final String value;
  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.only(bottom: 18),
    child: Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: llCardDecoration(),
      child: Column(
        children: [
          LLSmallCaps(label, color: llGold),
          const SizedBox(height: 8),
          Text(
            value,
            textAlign: TextAlign.center,
            style: llUi(size: 15, color: llInk),
          ),
        ],
      ),
    ),
  );
}
