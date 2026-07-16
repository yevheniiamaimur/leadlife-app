import 'package:flutter/material.dart';
import '../app_theme.dart';
import '../l10n/app_localizations.dart';
import '../services/profile_service.dart';
import '../widgets/ll_widgets.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});
  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  Profile? _profile;
  bool _loading = true;

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

  @override
  Widget build(BuildContext context) {
    final profile = _profile;
    return Scaffold(
      backgroundColor: llBg,
      body: Stack(
        children: [
          SafeArea(
            child: _loading
                ? const SizedBox.shrink()
                : Padding(
                    padding: const EdgeInsets.fromLTRB(24, 96, 24, 24),
                    child: Column(
                      children: [
                        const LLLogo(size: 56, color: llGold),
                        const SizedBox(height: 18),
                        Text(
                          profile?.name ?? AppLocalizations.of(context).yourProfileFallback,
                          textAlign: TextAlign.center,
                          style: llSerif(size: 26, weight: FontWeight.w600),
                        ),
                        const SizedBox(height: 28),
                        if (profile == null)
                          Text(
                            AppLocalizations.of(context).profileNoDataMessage,
                            textAlign: TextAlign.center,
                            style: llSerifItalic(size: 14, color: llMutedSoft, height: 1.5),
                          )
                        else ...[
                          if (profile.birthday != null)
                            _ProfileRow(label: AppLocalizations.of(context).profileBirthdayLabel, value: _formatDate(profile.birthday!)),
                          if (profile.email.isNotEmpty)
                            _ProfileRow(label: AppLocalizations.of(context).profileEmailLabel, value: profile.email),
                          if (profile.focus.isNotEmpty)
                            _ProfileRow(label: AppLocalizations.of(context).profileFocusLabel, value: profile.focus),
                        ],
                      ],
                    ),
                  ),
          ),
          LLBackArrow(onTap: () => Navigator.of(context).maybePop()),
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
          Text(value, textAlign: TextAlign.center, style: llUi(size: 15, color: llInk)),
        ],
      ),
    ),
  );
}
