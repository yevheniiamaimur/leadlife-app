import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import '../app_theme.dart';
import '../l10n/app_localizations.dart';
import '../services/legal_consent_service.dart';
import '../services/notification_service.dart';
import '../widgets/ll_widgets.dart';
import 'legal_document_screen.dart';
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
  bool _sensitiveDataChecked = false;
  bool _termsAgreed = false;

  @override
  void dispose() {
    _ctrl.dispose();
    super.dispose();
  }

  bool get _canContinue {
    final v = _ctrl.text.trim();
    return v.contains('@') && v.contains('.') && v.length >= 5 && _termsAgreed;
  }

  void _toggleNotify() => setState(() => _notifyChecked = !_notifyChecked);
  void _toggleSensitiveData() => setState(() => _sensitiveDataChecked = !_sensitiveDataChecked);
  void _toggleTermsAgreed() => setState(() => _termsAgreed = !_termsAgreed);

  void _openLegalDocument(LegalDocumentType type) {
    FocusScope.of(context).unfocus();
    Navigator.of(context).push(_fadeRoute(LegalDocumentScreen(type: type)));
  }

  Future<void> _goNext() async {
    FocusScope.of(context).unfocus();
    if (_notifyChecked) {
      final status = await Permission.notification.request();
      if (status.isGranted) {
        NotificationService.instance.scheduleDailyReminder().ignore();
      }
    }
    await LegalConsentService.recordTermsPrivacyAccepted();
    await LegalConsentService.setSensitiveDataOptIn(_sensitiveDataChecked);
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
                  Center(child: LLSmallCaps(AppLocalizations.of(context).onboardingStepOfFive(3), color: llGold)),
                  const SizedBox(height: 28),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(AppLocalizations.of(context).onboardingContactHeading, style: llSerif(size: 28, height: 1.2)),
                        const SizedBox(height: 10),
                        Text(
                          AppLocalizations.of(context).onboardingContactSubtitle,
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
                            hintText: AppLocalizations.of(context).emailHint,
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
                                AppLocalizations.of(context).allowGentleReminders,
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
                  const SizedBox(height: 16),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32),
                    child: GestureDetector(
                      onTap: _toggleSensitiveData,
                      child: Container(
                        decoration: llCardDecoration(borderColor: _sensitiveDataChecked ? llGold : llHair).copyWith(
                          color: _sensitiveDataChecked ? llGold.withAlpha(18) : llCardBg,
                        ),
                        padding: const EdgeInsets.all(20),
                        child: Row(
                          children: [
                            Icon(Icons.health_and_safety_outlined, size: 26, color: llGold),
                            const SizedBox(width: 14),
                            Expanded(
                              child: Text(
                                AppLocalizations.of(context).allowSensitiveDataProcessing,
                                style: llUi(size: 13.5, color: llMuted),
                              ),
                            ),
                            const SizedBox(width: 10),
                            Icon(
                              _sensitiveDataChecked ? Icons.check_box_rounded : Icons.check_box_outline_blank_rounded,
                              size: 24,
                              color: _sensitiveDataChecked ? llGold : llMutedSoft,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32),
                    child: GestureDetector(
                      onTap: _toggleTermsAgreed,
                      child: Container(
                        decoration: llCardDecoration(borderColor: _termsAgreed ? llGold : llHair).copyWith(
                          color: _termsAgreed ? llGold.withAlpha(18) : llCardBg,
                        ),
                        padding: const EdgeInsets.all(20),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(
                              _termsAgreed ? Icons.check_box_rounded : Icons.check_box_outline_blank_rounded,
                              size: 24,
                              color: _termsAgreed ? llGold : llMutedSoft,
                            ),
                            const SizedBox(width: 14),
                            Expanded(
                              child: Text.rich(
                                TextSpan(
                                  style: llUi(size: 13.5, color: llMuted),
                                  children: [
                                    TextSpan(text: AppLocalizations.of(context).legalConsentPrefix),
                                    TextSpan(
                                      text: AppLocalizations.of(context).termsOfUseLabel,
                                      style: llUi(size: 13.5, color: llGold, weight: FontWeight.w600),
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () => _openLegalDocument(LegalDocumentType.termsOfUse),
                                    ),
                                    TextSpan(text: AppLocalizations.of(context).legalConsentAnd),
                                    TextSpan(
                                      text: AppLocalizations.of(context).privacyPolicyLabel,
                                      style: llUi(size: 13.5, color: llGold, weight: FontWeight.w600),
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () => _openLegalDocument(LegalDocumentType.privacyPolicy),
                                    ),
                                    TextSpan(text: AppLocalizations.of(context).legalConsentSuffix),
                                  ],
                                ),
                              ),
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
                        label: AppLocalizations.of(context).continueButton,
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
