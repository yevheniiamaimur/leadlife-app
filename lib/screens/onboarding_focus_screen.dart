import 'package:flutter/material.dart';
import '../app_theme.dart';
import '../widgets/ll_widgets.dart';
import 'onboarding_ready_screen.dart';

const _focusOptions = [
  'Relationships',
  'Career & Purpose',
  'Health & Energy',
  'Money & Abundance',
  'Inner Peace',
];

class OnboardingFocusScreen extends StatefulWidget {
  const OnboardingFocusScreen({
    super.key,
    required this.name,
    required this.birthday,
    required this.email,
  });
  final String name;
  final DateTime birthday;
  final String email;

  @override
  State<OnboardingFocusScreen> createState() => _OnboardingFocusScreenState();
}

class _OnboardingFocusScreenState extends State<OnboardingFocusScreen> {
  final Set<String> _selected = {};

  void _toggle(String option) => setState(() {
    if (_selected.contains(option)) {
      _selected.remove(option);
    } else {
      _selected.add(option);
    }
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: llBg,
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 28),
                Center(child: LLSmallCaps('Step 4 of 5', color: llGold)),
                const SizedBox(height: 28),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('What\'s most on your mind\nright now?', style: llSerif(size: 26, height: 1.25)),
                      const SizedBox(height: 10),
                      Text(
                        'Choose the areas calling for your attention.',
                        style: llSerifItalic(size: 14, height: 1.5),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 28),
                Expanded(
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.symmetric(horizontal: 32),
                    child: Column(
                      children: [
                        for (final option in _focusOptions)
                          Padding(
                            padding: const EdgeInsets.only(bottom: 12),
                            child: _FocusOptionCard(
                              label: option,
                              selected: _selected.contains(option),
                              onTap: () => _toggle(option),
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  child: LLCTA(
                    label: 'Continue',
                    enabled: _selected.isNotEmpty,
                    onTap: _selected.isNotEmpty
                        ? () => Navigator.of(context).push(_fadeRoute(
                              OnboardingReadyScreen(
                                name: widget.name,
                                birthday: widget.birthday,
                                email: widget.email,
                                focus: _selected.join(', '),
                              ),
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

class _FocusOptionCard extends StatelessWidget {
  const _FocusOptionCard({required this.label, required this.selected, required this.onTap});
  final String label;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
        decoration: llCardDecoration(borderColor: selected ? llGold : llHair).copyWith(
          color: selected ? llGold.withAlpha(18) : llCardBg,
        ),
        child: Row(
          children: [
            Icon(
              selected ? Icons.check_box_rounded : Icons.check_box_outline_blank_rounded,
              size: 20,
              color: selected ? llGold : llMutedSoft,
            ),
            const SizedBox(width: 14),
            Text(label, style: llSerif(size: 16, weight: selected ? FontWeight.w600 : FontWeight.w400)),
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
