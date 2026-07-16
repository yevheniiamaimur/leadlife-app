import 'package:flutter/material.dart';
import '../app_theme.dart';
import '../l10n/app_localizations.dart';
import '../widgets/ll_widgets.dart';
import 'awakened_screen.dart';

class PaywallTariff {
  const PaywallTariff({
    required this.title,
    required this.tagline,
    required this.price,
    this.period,
    required this.features,
  });
  final String title;
  final String tagline;
  final String price;
  // e.g. '/month' for recurring plans — null for one-time purchases.
  final String? period;
  final List<String> features;
}

PaywallTariff personalizedPass(BuildContext context) {
  final l10n = AppLocalizations.of(context);
  return PaywallTariff(
    title: l10n.paywallTariffOneJourneyTitle,
    tagline: l10n.paywallTariffOneJourneyTagline,
    price: '€2.50',
    features: [
      l10n.paywallFeatureQuestionnairesToEndPractices,
      l10n.paywallFeatureFinalDirection,
      l10n.paywallFeaturePersonalJournal,
    ],
  );
}

PaywallTariff leadLifePass(BuildContext context) {
  final l10n = AppLocalizations.of(context);
  return PaywallTariff(
    title: l10n.paywallTariffLeadlifePassTitle,
    tagline: l10n.paywallTariffLeadlifePassTagline,
    price: '€14.90',
    period: '/month',
    features: [
      l10n.paywallFeatureUnlimitedJourneys,
      l10n.paywallFeatureFullJourneyHistory,
      l10n.paywallFeaturePersonalJournal,
      l10n.paywallFeatureNewPractices,
    ],
  );
}

class PaywallScreen extends StatelessWidget {
  const PaywallScreen({super.key, required this.wish});
  final String wish;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final personalized = personalizedPass(context);
    final leadLife = leadLifePass(context);
    return Scaffold(
      backgroundColor: llBg,
      body: Stack(
        children: [
          SafeArea(
            child: Column(
              children: [
                const SizedBox(height: 28),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  child: Column(
                    children: [
                      Text(
                        l10n.paywallHeadlineLine1,
                        textAlign: TextAlign.center,
                        style: llSerif(size: 26, height: 1.15),
                      ),
                      const SizedBox(height: 6),
                      Text(
                        l10n.paywallHeadlineLine2,
                        textAlign: TextAlign.center,
                        style: llSerif(size: 26, height: 1.15),
                      ),
                      const SizedBox(height: 14),
                      Text(
                        l10n.paywallSubheading,
                        textAlign: TextAlign.center,
                        style: llSerifItalic(size: 14, height: 1.5),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 32),
                Expanded(
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Column(
                      children: [
                        PaywallTariffCard(
                          tariff: personalized,
                          onTap: () => Navigator.of(context).push(_fadeRoute(
                            TariffDetailScreen(wish: wish, tariff: personalized),
                          )),
                        ),
                        const SizedBox(height: 16),
                        PaywallTariffCard(
                          tariff: leadLife,
                          onTap: () => Navigator.of(context).push(_fadeRoute(
                            TariffDetailScreen(wish: wish, tariff: leadLife),
                          )),
                        ),
                        const SizedBox(height: 24),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          LLBackArrow(onTap: () => Navigator.of(context).maybePop()),
        ],
      ),
    );
  }
}

class PaywallTariffCard extends StatelessWidget {
  const PaywallTariffCard({super.key, required this.tariff, required this.onTap});
  final PaywallTariff tariff;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(22),
        decoration: llCardDecoration(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(tariff.title, style: llSerif(size: 20, weight: FontWeight.w600)),
            const SizedBox(height: 4),
            Text(tariff.tagline, style: llSerifItalic(size: 13)),
            const SizedBox(height: 14),
            Row(
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Text(tariff.price, style: llUi(size: 22, weight: FontWeight.w600, color: llGold)),
                if (tariff.period != null) ...[
                  const SizedBox(width: 3),
                  Text(tariff.period!, style: llUi(size: 13, color: llMuted)),
                ],
              ],
            ),
            const SizedBox(height: 14),
            for (final f in tariff.features.take(2)) ...[
              Padding(
                padding: const EdgeInsets.only(bottom: 4),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(Icons.check, size: 15, color: llGold),
                    const SizedBox(width: 8),
                    Expanded(child: Text(f, style: llUi(size: 13, color: llMuted))),
                  ],
                ),
              ),
            ],
            const SizedBox(height: 6),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(AppLocalizations.of(context).paywallSeeDetails, style: llUi(size: 12, color: llGold, weight: FontWeight.w500)),
                const SizedBox(width: 4),
                const Icon(Icons.chevron_right_rounded, size: 16, color: llGold),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class TariffDetailScreen extends StatelessWidget {
  const TariffDetailScreen({super.key, required this.wish, required this.tariff});
  final String wish;
  final PaywallTariff tariff;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: llBg,
      body: Stack(
        children: [
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 84),
                  Text(tariff.title, style: llSerif(size: 30, height: 1.1)),
                  const SizedBox(height: 8),
                  Text(tariff.tagline, style: llSerifItalic(size: 15, height: 1.4)),
                  const SizedBox(height: 20),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(tariff.price, style: llUi(size: 32, weight: FontWeight.w600, color: llGold)),
                      if (tariff.period != null) ...[
                        const SizedBox(width: 4),
                        Text(tariff.period!, style: llUi(size: 15, color: llMuted)),
                      ],
                    ],
                  ),
                  const SizedBox(height: 28),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          for (final f in tariff.features)
                            Padding(
                              padding: const EdgeInsets.only(bottom: 14),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Icon(Icons.check_circle, size: 20, color: llGold),
                                  const SizedBox(width: 12),
                                  Expanded(
                                    child: Text(f, style: llUi(size: 15, color: llInk)),
                                  ),
                                ],
                              ),
                            ),
                        ],
                      ),
                    ),
                  ),
                  LLCTA(
                    label: AppLocalizations.of(context).paywallChooseThisPathCta,
                    onTap: () => Navigator.of(context).push(_fadeRoute(
                      AwakenedScreen(wish: wish),
                    )),
                  ),
                  const SizedBox(height: 40),
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

PageRouteBuilder<T> _fadeRoute<T>(Widget page) => PageRouteBuilder(
  pageBuilder: (_, _, _) => page,
  transitionsBuilder: (_, a, _, child) => FadeTransition(opacity: a, child: child),
  transitionDuration: const Duration(milliseconds: 350),
);
