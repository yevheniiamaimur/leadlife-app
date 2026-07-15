import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import '../app_theme.dart';
import '../widgets/ll_widgets.dart';
import 'onboarding_focus_screen.dart';

class OnboardingContactScreen extends StatefulWidget {
  const OnboardingContactScreen({super.key, required this.name, required this.birthday});
  final String name;
  final DateTime birthday;

  @override
  State<OnboardingContactScreen> createState() => _OnboardingContactScreenState();
}

class _OnboardingContactScreenState extends State<OnboardingContactScreen> {
  final _ctrl = TextEditingController();
  bool _notifyChecked = false;

  @override
  void dispose() {
    _ctrl.dispose();
    super.dispose();
  }

  bool get _canContinue {
    final v = _ctrl.text.trim();
    return v.contains('@') && v.contains('.') && v.length >= 5;
  }

  void _toggleNotify() => setState(() => _notifyChecked = !_notifyChecked);

  Future<void> _goNext() async {
    FocusScope.of(context).unfocus();
    if (_notifyChecked) await Permission.notification.request();
    if (!mounted) return;
    Navigator.of(context).push(_fadeRoute(
      OnboardingFocusScreen(
        name: widget.name,
        birthday: widget.birthday,
        email: _ctrl.text.trim(),
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: llBg,
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 28),
                  Center(child: LLSmallCaps('Step 3 of 5', color: llGold)),
                  const SizedBox(height: 28),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Stay connected.', style: llSerif(size: 28, height: 1.2)),
                        const SizedBox(height: 10),
                        Text(
                          'Where can we reach you with your journey?',
                          style: llSerifItalic(size: 14, height: 1.5),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 24),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32),
                    child: Container(
                      decoration: llCardDecoration(),
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 6),
                      child: ValueListenableBuilder<TextEditingValue>(
                        valueListenable: _ctrl,
                        builder: (_, _, _) => TextField(
                          controller: _ctrl,
                          autofocus: true,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'your@email.com',
                            hintStyle: llSerifItalic(size: 17, color: llHair),
                          ),
                          style: llSerif(size: 17),
                          cursorColor: llGold,
                          cursorWidth: 1.5,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 28),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32),
                    child: GestureDetector(
                      onTap: _toggleNotify,
                      child: Container(
                        decoration: llCardDecoration(borderColor: _notifyChecked ? llGold : llHair).copyWith(
                          color: _notifyChecked ? llGold.withAlpha(18) : llCardBg,
                        ),
                        padding: const EdgeInsets.all(20),
                        child: Row(
                          children: [
                            Icon(Icons.notifications_active_rounded, size: 26, color: llGold),
                            const SizedBox(width: 14),
                            Expanded(
                              child: Text(
                                'Allow gentle reminders to keep you on your path.',
                                style: llUi(size: 13.5, color: llMuted),
                              ),
                            ),
                            const SizedBox(width: 10),
                            Icon(
                              _notifyChecked ? Icons.check_box_rounded : Icons.check_box_outline_blank_rounded,
                              size: 24,
                              color: _notifyChecked ? llGold : llMutedSoft,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32),
                    child: ValueListenableBuilder<TextEditingValue>(
                      valueListenable: _ctrl,
                      builder: (_, _, _) => LLCTA(
                        label: 'Continue',
                        enabled: _canContinue,
                        onTap: _canContinue ? _goNext : null,
                      ),
                    ),
                  ),
                  const SizedBox(height: 40),
                ],
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
