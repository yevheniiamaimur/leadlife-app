import 'package:flutter/material.dart';
import '../app_theme.dart';
import '../l10n/app_localizations.dart';
import '../widgets/ll_widgets.dart';

enum LegalDocumentType { privacyPolicy, termsOfUse, subscriptionTerms }

// Renders the Privacy Policy, Terms of Use, or Subscription Terms natively
// so they're readable offline and match the app's own design. The same copy
// is also published at a public URL (required by App Store Connect / Play
// Console listings) — keep both in sync when the text changes.
class LegalDocumentScreen extends StatelessWidget {
  const LegalDocumentScreen({super.key, required this.type});
  final LegalDocumentType type;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final String title;
    final List<(String, String)> sections;
    switch (type) {
      case LegalDocumentType.privacyPolicy:
        title = l10n.privacyPolicyLabel;
        sections = [
          (l10n.legalPrivacySection1Heading, l10n.legalPrivacySection1Body),
          (l10n.legalPrivacySection2Heading, l10n.legalPrivacySection2Body),
          (l10n.legalPrivacySection3Heading, l10n.legalPrivacySection3Body),
          (l10n.legalPrivacySection4Heading, l10n.legalPrivacySection4Body),
          (l10n.legalPrivacySection5Heading, l10n.legalPrivacySection5Body),
          (l10n.legalPrivacySection6Heading, l10n.legalPrivacySection6Body),
          (l10n.legalPrivacySection7Heading, l10n.legalPrivacySection7Body),
          (l10n.legalPrivacySection8Heading, l10n.legalPrivacySection8Body),
          (l10n.legalPrivacySection9Heading, l10n.legalPrivacySection9Body),
          (l10n.legalPrivacySection10Heading, l10n.legalPrivacySection10Body),
          (l10n.legalPrivacySection11Heading, l10n.legalPrivacySection11Body),
          (l10n.legalPrivacySection12Heading, l10n.legalPrivacySection12Body),
          (l10n.legalPrivacySection13Heading, l10n.legalPrivacySection13Body),
          (l10n.legalPrivacySection14Heading, l10n.legalPrivacySection14Body),
          (l10n.legalPrivacySection15Heading, l10n.legalPrivacySection15Body),
        ];
      case LegalDocumentType.termsOfUse:
        title = l10n.termsOfUseLabel;
        sections = [
          (l10n.legalTermsSection1Heading, l10n.legalTermsSection1Body),
          (l10n.legalTermsSection2Heading, l10n.legalTermsSection2Body),
          (l10n.legalTermsSection3Heading, l10n.legalTermsSection3Body),
          (l10n.legalTermsSection4Heading, l10n.legalTermsSection4Body),
          (l10n.legalTermsSection5Heading, l10n.legalTermsSection5Body),
          (l10n.legalTermsSection6Heading, l10n.legalTermsSection6Body),
          (l10n.legalTermsSection7Heading, l10n.legalTermsSection7Body),
          (l10n.legalTermsSection8Heading, l10n.legalTermsSection8Body),
          (l10n.legalTermsSection9Heading, l10n.legalTermsSection9Body),
          (l10n.legalTermsSection10Heading, l10n.legalTermsSection10Body),
          (l10n.legalTermsSection11Heading, l10n.legalTermsSection11Body),
          (l10n.legalTermsSection12Heading, l10n.legalTermsSection12Body),
          (l10n.legalTermsSection13Heading, l10n.legalTermsSection13Body),
          (l10n.legalTermsSection14Heading, l10n.legalTermsSection14Body),
          (l10n.legalTermsSection15Heading, l10n.legalTermsSection15Body),
        ];
      case LegalDocumentType.subscriptionTerms:
        title = l10n.subscriptionTermsLabel;
        sections = [
          (l10n.legalSubscriptionSection1Heading, l10n.legalSubscriptionSection1Body),
          (l10n.legalSubscriptionSection2Heading, l10n.legalSubscriptionSection2Body),
          (l10n.legalSubscriptionSection3Heading, l10n.legalSubscriptionSection3Body),
          (l10n.legalSubscriptionSection4Heading, l10n.legalSubscriptionSection4Body),
          (l10n.legalSubscriptionSection5Heading, l10n.legalSubscriptionSection5Body),
          (l10n.legalSubscriptionSection6Heading, l10n.legalSubscriptionSection6Body),
          (l10n.legalSubscriptionSection7Heading, l10n.legalSubscriptionSection7Body),
          (l10n.legalSubscriptionSection8Heading, l10n.legalSubscriptionSection8Body),
          (l10n.legalSubscriptionSection9Heading, l10n.legalSubscriptionSection9Body),
        ];
    }

    return Scaffold(
      backgroundColor: llBg,
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              padding: const EdgeInsets.fromLTRB(32, 130, 32, 48),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: llSerif(size: 28, height: 1.2)),
                  const SizedBox(height: 28),
                  for (final (heading, body) in sections) ...[
                    Text(heading, style: llUi(size: 13, weight: FontWeight.w600, color: llGold, letterSpacing: 0.3)),
                    const SizedBox(height: 8),
                    Text(body, style: llUi(size: 14, color: llMuted).copyWith(height: 1.6)),
                    const SizedBox(height: 24),
                  ],
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
