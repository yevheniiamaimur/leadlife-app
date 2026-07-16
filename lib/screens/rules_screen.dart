import 'package:flutter/material.dart';
import '../app_theme.dart';
import '../l10n/app_localizations.dart';
import '../widgets/ll_widgets.dart';
import 'wish_entry_screen.dart';
import 'how_it_works_screen.dart';
import 'help_modal.dart';
import 'diary_tab.dart';
import 'journal_tab.dart';
import 'profile_screen.dart';
import 'help_screen.dart';
import 'about_screen.dart';
import '../services/notification_service.dart';
import '../widgets/app_drawer.dart';

class RulesScreen extends StatefulWidget {
  const RulesScreen({super.key, this.initialTab = 0});
  final int initialTab;
  @override
  State<RulesScreen> createState() => _RulesScreenState();
}

class _RulesScreenState extends State<RulesScreen> {
  late int _tabIndex = widget.initialTab;
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    NotificationService.instance.pendingTabIndex.addListener(_onNotificationTap);
  }

  @override
  void dispose() {
    NotificationService.instance.pendingTabIndex.removeListener(_onNotificationTap);
    super.dispose();
  }

  void _onNotificationTap() {
    final tab = NotificationService.instance.pendingTabIndex.value;
    if (tab == null) return;
    NotificationService.instance.pendingTabIndex.value = null;
    setState(() => _tabIndex = tab);
  }

  void _selectTab(int i) {
    _scaffoldKey.currentState?.closeDrawer();
    setState(() => _tabIndex = i);
  }

  void _openScreen(Widget screen) {
    _scaffoldKey.currentState?.closeDrawer();
    Navigator.of(context).push(_fadeRoute(screen));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: llBg,
      drawer: AppDrawer(
        onHome: () => _selectTab(0),
        onJournal: () => _selectTab(1),
        onHistory: () => _selectTab(2),
        onProfile: () => _openScreen(const ProfileScreen()),
        onHelp: () => _openScreen(const HelpScreen()),
        onAbout: () => _openScreen(const AboutScreen()),
      ),
      body: Column(
        children: [
          _TopBar(onMenuTap: () => _scaffoldKey.currentState?.openDrawer()),
          Expanded(
            child: IndexedStack(
              index: _tabIndex,
              children: const [
                _HomeTab(),
                JournalTab(),
                DiaryTab(),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: _BottomBar(
        index: _tabIndex,
        onChanged: (i) => setState(() => _tabIndex = i),
      ),
    );
  }
}

class _TopBar extends StatelessWidget {
  const _TopBar({required this.onMenuTap});
  final VoidCallback onMenuTap;

  @override
  Widget build(BuildContext context) => Container(
    decoration: BoxDecoration(
      color: llCardBg,
      border: Border(bottom: BorderSide(color: llHair)),
    ),
    child: SafeArea(
      bottom: false,
      child: SizedBox(
        height: 76,
        child: Padding(
          padding: const EdgeInsets.only(left: 22),
          child: Align(
            alignment: Alignment.centerLeft,
            child: GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: onMenuTap,
              child: const Icon(Icons.menu_rounded, size: 34, color: llInk),
            ),
          ),
        ),
      ),
    ),
  );
}

class _HomeTab extends StatefulWidget {
  const _HomeTab();
  @override
  State<_HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<_HomeTab> {
  bool _showHelp = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SafeArea(
          top: false,
          child: Column(
            children: [
              const SizedBox(height: 28),
              const LLLogo(size: 88, color: llGold),
              const SizedBox(height: 20),
              Text(
                AppLocalizations.of(context).welcomeGreeting,
                textAlign: TextAlign.center,
                style: llSerif(size: 20, weight: FontWeight.w600),
              ),
              const SizedBox(height: 28),
              // Wish preview card — taps straight through to the wish screen
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 28),
                child: GestureDetector(
                  onTap: () => Navigator.of(context).push(_fadeRoute(const WishEntryScreen())),
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 34),
                    decoration: BoxDecoration(
                      color: llCardBg,
                      borderRadius: BorderRadius.circular(28),
                      border: Border.all(color: llGold.withAlpha(46)),
                      boxShadow: [
                        BoxShadow(color: llGold.withAlpha(56), blurRadius: 36, offset: const Offset(0, 14)),
                        BoxShadow(color: llGold.withAlpha(30), blurRadius: 8, offset: const Offset(0, 2)),
                      ],
                    ),
                    child: Column(
                      children: [
                        Text(
                          AppLocalizations.of(context).whatsYourWish,
                          textAlign: TextAlign.center,
                          style: llSerif(size: 28, height: 1.2, weight: FontWeight.w600),
                        ),
                        const SizedBox(height: 13),
                        Text(
                          AppLocalizations.of(context).presentPerfectPrompt,
                          textAlign: TextAlign.center,
                          style: llSerifItalic(size: 16, height: 1.5),
                        ),
                        const SizedBox(height: 26),
                        Container(
                          width: double.infinity,
                          padding: const EdgeInsets.only(bottom: 10),
                          decoration: BoxDecoration(border: Border(bottom: BorderSide(color: llHair))),
                          child: Text(
                            AppLocalizations.of(context).typeItHere,
                            textAlign: TextAlign.center,
                            style: llUi(size: 16, color: llMutedSoft),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 14),
              // Two separate nav buttons
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 28),
                child: Row(
                  children: [
                    Expanded(
                      child: _NavButton(
                        label: AppLocalizations.of(context).howItWorks,
                        onTap: () => Navigator.of(context).push(_fadeRoute(const HowItWorksScreen())),
                      ),
                    ),
                    const SizedBox(width: 14),
                    Expanded(
                      child: _NavButton(
                        label: AppLocalizations.of(context).buildSuccessCode,
                        onTap: () => Navigator.of(context).push(_fadeRoute(const WishEntryScreen())),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 32),
              const LLMarquee(text: 'leadlife   leadlife', uppercase: false),
              const Spacer(),
            ],
          ),
        ),
        // Help button
        LLHelpBtn(
          left: 22,
          showLabel: true,
          onTap: () => setState(() => _showHelp = true),
        ),
        if (_showHelp)
          HelpModal(onClose: () => setState(() => _showHelp = false)),
      ],
    );
  }
}

class _BottomBar extends StatelessWidget {
  const _BottomBar({required this.index, required this.onChanged});
  final int index;
  final ValueChanged<int> onChanged;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final items = [
      (label: l10n.navHome, icon: Icons.home_rounded),
      (label: l10n.navJournal, icon: Icons.edit_note_rounded),
      (label: l10n.navDiary, icon: Icons.auto_stories_rounded),
    ];
    return Container(
      decoration: BoxDecoration(
        color: llCardBg,
        border: Border(top: BorderSide(color: llHair)),
      ),
      child: SafeArea(
        top: false,
        child: SizedBox(
          height: 76,
          child: Row(
            children: [
              for (var i = 0; i < items.length; i++)
                Expanded(
                  child: _BottomBarButton(
                    label: items[i].label,
                    icon: items[i].icon,
                    active: i == index,
                    onTap: () => onChanged(i),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class _BottomBarButton extends StatelessWidget {
  const _BottomBarButton({required this.label, required this.icon, required this.active, required this.onTap});
  final String label;
  final IconData icon;
  final bool active;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final color = active ? llGold : llMuted;
    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.opaque,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 28, color: color),
          const SizedBox(height: 5),
          Text(label, style: llUi(size: 12.5, color: color, weight: FontWeight.w600)),
        ],
      ),
    );
  }
}

class _NavButton extends StatelessWidget {
  const _NavButton({required this.label, required this.onTap});
  final String label;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) => GestureDetector(
    onTap: onTap,
    child: Container(
      height: 72,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: llGold,
        borderRadius: BorderRadius.circular(18),
        boxShadow: [BoxShadow(color: llGold.withAlpha(70), blurRadius: 14, offset: const Offset(0, 4))],
      ),
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Text(
        label,
        textAlign: TextAlign.center,
        style: llUi(size: 14.5, color: Colors.white, weight: FontWeight.w600, letterSpacing: 0.2),
      ),
    ),
  );
}

PageRouteBuilder<T> _fadeRoute<T>(Widget page) => PageRouteBuilder(
  pageBuilder: (_, _, _) => page,
  transitionsBuilder: (_, a, _, child) => FadeTransition(opacity: a, child: child),
  transitionDuration: const Duration(milliseconds: 350),
);
