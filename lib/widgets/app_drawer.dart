import 'package:flutter/material.dart';
import '../app_theme.dart';
import '../l10n/app_localizations.dart';
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
            Text('leadlife', style: llSerif(size: 19, weight: FontWeight.w600)),
            const SizedBox(height: 24),
            const LLHairline(width: 44),
            const SizedBox(height: 8),
            _DrawerItem(icon: Icons.home_rounded, label: l10n.navHome, onTap: onHome),
            _DrawerItem(icon: Icons.person_outline_rounded, label: l10n.drawerProfile, onTap: onProfile),
            _DrawerItem(icon: Icons.auto_stories_rounded, label: l10n.drawerHistory, onTap: onHistory),
            _DrawerItem(icon: Icons.edit_note_rounded, label: l10n.navJournal, onTap: onJournal),
            _DrawerItem(icon: Icons.help_outline_rounded, label: l10n.drawerHelp, onTap: onHelp),
            _DrawerItem(icon: Icons.info_outline_rounded, label: l10n.drawerAbout, onTap: onAbout),
          ],
        ),
      ),
    );
  }
}

class _DrawerItem extends StatelessWidget {
  const _DrawerItem({required this.icon, required this.label, required this.onTap});
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
          Text(label, style: llUi(size: 15.5, color: llInk, weight: FontWeight.w500)),
        ],
      ),
    ),
  );
}
