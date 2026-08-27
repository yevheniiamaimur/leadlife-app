import 'package:flutter/material.dart';
import '../app_theme.dart';
import '../l10n/app_localizations.dart';
import '../services/locale_service.dart';
import 'll_widgets.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({
    super.key,
    required this.onHome,
    required this.onProfile,
    required this.onHistory,
    required this.onJournal,
    required this.onHelp,
    required this.onAbout,
  });

  final VoidCallback onHome;
  final VoidCallback onProfile;
  final VoidCallback onHistory;
  final VoidCallback onJournal;
  final VoidCallback onHelp;
  final VoidCallback onAbout;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return Drawer(
      backgroundColor: llCardBg,
      width: 280,
      child: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 32),
            const LLLogo(size: 48, color: llGold),
            const SizedBox(height: 14),
            const HatchpotWordmark(),
            const SizedBox(height: 24),
            const LLHairline(width: 44),
            const SizedBox(height: 8),
            _DrawerItem(
              icon: Icons.home_rounded,
              label: l10n.navHome,
              onTap: onHome,
            ),
            _DrawerItem(
              icon: Icons.person_outline_rounded,
              label: l10n.drawerProfile,
              onTap: onProfile,
            ),
            _DrawerItem(
              icon: Icons.auto_stories_rounded,
              label: l10n.drawerHistory,
              onTap: onHistory,
            ),
            _DrawerItem(
              icon: Icons.edit_note_rounded,
              label: l10n.navJournal,
              onTap: onJournal,
            ),
            _DrawerItem(
              icon: Icons.help_outline_rounded,
              label: l10n.drawerHelp,
              onTap: onHelp,
            ),
            _DrawerItem(
              icon: Icons.info_outline_rounded,
              label: l10n.drawerAbout,
              onTap: onAbout,
            ),
            _DrawerItem(
              icon: Icons.language_rounded,
              label: l10n.languageTitle,
              onTap: () => _showLanguagePicker(context),
            ),
          ],
        ),
      ),
    );
  }
}

class _DrawerItem extends StatelessWidget {
  const _DrawerItem({
    required this.icon,
    required this.label,
    required this.onTap,
  });
  final IconData icon;
  final String label;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) => InkWell(
    onTap: onTap,
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 20, color: llGold),
          const SizedBox(width: 14),
          Text(
            label,
            style: llUi(size: 15.5, color: llInk, weight: FontWeight.w500),
          ),
        ],
      ),
    ),
  );
}

Future<void> _showLanguagePicker(BuildContext context) async {
  final selected = await showModalBottomSheet<String?>(
    context: context,
    backgroundColor: llCardBg,
    builder: (context) => SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 14),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              AppLocalizations.of(context).languageTitle,
              style: llSerif(size: 21, weight: FontWeight.w600),
            ),
            const SizedBox(height: 10),
            _LanguageOption(
              label: AppLocalizations.of(context).languageSystem,
              code: '',
            ),
            const _LanguageOption(label: 'English', code: 'en'),
            const _LanguageOption(label: 'Español', code: 'es'),
          ],
        ),
      ),
    ),
  );
  if (selected == null) return;
  await LocaleService.instance.setLocale(selected.isEmpty ? null : selected);
}

class _LanguageOption extends StatelessWidget {
  const _LanguageOption({required this.label, required this.code});
  final String label;
  final String code;

  @override
  Widget build(BuildContext context) => ListTile(
    title: Text(label, textAlign: TextAlign.center, style: llUi(size: 16)),
    onTap: () => Navigator.pop(context, code),
  );
}
