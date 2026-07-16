import 'package:flutter/material.dart';
import '../app_theme.dart';
import '../l10n/app_localizations.dart';
import '../widgets/ll_widgets.dart';
import 'onboarding_contact_screen.dart';

class OnboardingBirthdayScreen extends StatefulWidget {
  const OnboardingBirthdayScreen({super.key, required this.name});
  final String name;

  @override
  State<OnboardingBirthdayScreen> createState() => _OnboardingBirthdayScreenState();
}

class _OnboardingBirthdayScreenState extends State<OnboardingBirthdayScreen> {
  DateTime? _birthday;

  Future<void> _pickDate() async {
    final now = DateTime.now();
    final picked = await showDatePicker(
      context: context,
      initialDate: DateTime(now.year - 25),
      firstDate: DateTime(now.year - 110),
      lastDate: now,
      builder: (context, child) => Theme(
        data: Theme.of(context).copyWith(
          colorScheme: ColorScheme.light(
            primary: llGold,
            onPrimary: Colors.white,
            surface: llCardBg,
            onSurface: llInk,
          ),
        ),
        child: child!,
      ),
    );
    if (picked != null) setState(() => _birthday = picked);
  }

  String _format(DateTime d) =>
      '${d.day.toString().padLeft(2, '0')} / ${d.month.toString().padLeft(2, '0')} / ${d.year}';

  @override
  Widget build(BuildContext context) {
    final birthday = _birthday;
    return Scaffold(
      backgroundColor: llBg,
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 28),
                Center(child: LLSmallCaps(AppLocalizations.of(context).onboardingStepOfFive(2), color: llGold)),
                const SizedBox(height: 28),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(AppLocalizations.of(context).onboardingBirthdayQuestion(widget.name), style: llSerif(size: 26, height: 1.2)),
                      const SizedBox(height: 10),
                      Text(
                        AppLocalizations.of(context).onboardingBirthdaySubtitle,
                        style: llSerifItalic(size: 14, height: 1.5),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 32),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  child: GestureDetector(
                    onTap: _pickDate,
                    child: Container(
                      decoration: llCardDecoration(),
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
                      child: Row(
                        children: [
                          Icon(Icons.calendar_today_rounded, size: 18, color: llGold),
                          const SizedBox(width: 12),
                          Text(
                            birthday != null ? _format(birthday) : AppLocalizations.of(context).selectYourBirthday,
                            style: birthday != null
                                ? llSerif(size: 17)
                                : llSerifItalic(size: 17, color: llHair),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  child: LLCTA(
                    label: AppLocalizations.of(context).continueButton,
                    enabled: birthday != null,
                    onTap: birthday != null
                        ? () => Navigator.of(context).push(_fadeRoute(
                              OnboardingContactScreen(name: widget.name, birthday: birthday),
                            ))
                        : null,
                  ),
                ),
                const SizedBox(height: 40),
              ],
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
