import 'package:flutter/material.dart';
import 'package:purchases_flutter/purchases_flutter.dart';
import '../app_theme.dart';
import '../l10n/app_localizations.dart';
import '../services/purchase_service.dart';
import '../widgets/ll_widgets.dart';
import 'account_link_screen.dart';
import 'legal_document_screen.dart';

class PaywallTariff {
  const PaywallTariff({
    required this.title,
    required this.tagline,
    required this.price,
    this.period,
    required this.features,
    this.package,
  });
  final String title;
  final String tagline;
  final String price;
  // e.g. '/month' for recurring plans — null for one-time purchases.
  final String? period;
  final List<String> features;
  // The RevenueCat package to purchase when this tariff is chosen. Null
  // means this tariff isn't wired to a real purchase yet (see the single AI
  // Journey consumable, not yet implemented) — TariffDetailScreen falls
  // back to its old skip-straight-through behavior in that case.
  final Package? package;
}

PaywallTariff personalizedPass(BuildContext context) {
  final l10n = AppLocalizations.of(context);
  return PaywallTariff(
    title: l10n.paywallTariffOneJourneyTitle,
    tagline: l10n.paywallTariffOneJourneyTagline,
    price: '€2.99',
    features: [
      l10n.paywallFeatureQuestionnairesToEndPractices,
      l10n.paywallFeatureFinalDirection,
      l10n.paywallFeaturePersonalJournal,
    ],
  );
}

// [monthlyPackage] is null while the offering is still loading or if it
// couldn't be fetched — the price/period fall back to the last-known real
// price as a brief placeholder, not a permanent stand-in.
PaywallTariff leadLifePass(BuildContext context, {Package? monthlyPackage}) {
  final l10n = AppLocalizations.of(context);
  final product = monthlyPackage?.storeProduct;
  return PaywallTariff(
    title: l10n.paywallTariffLeadlifePassTitle,
    tagline: l10n.paywallTariffLeadlifePassTagline,
    price: product?.priceString ?? '€14.99',
    period: '/month',
    features: [
      l10n.paywallFeatureUnlimitedJourneys,
      l10n.paywallFeatureFullJourneyHistory,
      l10n.paywallFeaturePersonalJournal,
      l10n.paywallFeatureNewPractices,
    ],
    package: monthlyPackage,
  );
}

class PaywallScreen extends StatefulWidget {
  const PaywallScreen({super.key, required this.wish});
  final String wish;

  @override
  State<PaywallScreen> createState() => _PaywallScreenState();
}

class _PaywallScreenState extends State<PaywallScreen> {
  Package? _monthlyPackage;

  @override
  void initState() {
    super.initState();
    PurchaseService.instance.getMonthlyPlusPackage().then((package) {
      if (mounted) setState(() => _monthlyPackage = package);
    });
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final wish = widget.wish;
    final leadLife = leadLifePass(context, monthlyPackage: _monthlyPackage);
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
                        // The single AI Journey consumable (€2.99) is
                        // deliberately not shown yet — its purchase flow
                        // isn't implemented (Phase 2.2/3), and showing it
                        // here would let someone tap through as if a
                        // purchase had happened when none did. Re-add its
                        // PaywallTariffCard once purchasePlus's consumable
                        // counterpart exists in PurchaseService.
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

class TariffDetailScreen extends StatefulWidget {
  const TariffDetailScreen({super.key, required this.wish, required this.tariff});
  final String wish;
  final PaywallTariff tariff;

  @override
  State<TariffDetailScreen> createState() => _TariffDetailScreenState();
}

class _TariffDetailScreenState extends State<TariffDetailScreen> {
  bool _busy = false;
  String? _error;
  String? _pendingMessage;

  Future<void> _choose() async {
    final package = widget.tariff.package;
    if (package == null) {
      // Not wired to a real purchase yet (the single AI Journey consumable)
      // — preserve today's exact skip-through behavior.
      _continue();
      return;
    }
    setState(() {
      _busy = true;
      _error = null;
      _pendingMessage = null;
    });
    final outcome = await PurchaseService.instance.purchasePlus(package);
    if (!mounted) return;
    switch (outcome) {
      case PurchaseOutcome.success:
        setState(() => _busy = false);
        _continue();
      case PurchaseOutcome.cancelled:
        // User backed out deliberately — no error, just let them try again.
        setState(() => _busy = false);
      case PurchaseOutcome.pending:
        setState(() {
          _busy = false;
          _pendingMessage = AppLocalizations.of(context).purchasePendingMessage;
        });
      case PurchaseOutcome.error:
        setState(() {
          _busy = false;
          _error = AppLocalizations.of(context).purchaseErrorGeneric;
        });
    }
  }

  void _continue() {
    Navigator.of(context).push(_fadeRoute(AccountLinkScreen(wish: widget.wish)));
  }

  @override
  Widget build(BuildContext context) {
    final tariff = widget.tariff;
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
                  Center(
                    child: GestureDetector(
                      onTap: () => Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (_) => const LegalDocumentScreen(type: LegalDocumentType.subscriptionTerms),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Text(
                          AppLocalizations.of(context).subscriptionTermsLabel,
                          style: llUi(size: 12, color: llGold, weight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ),
                  if (_pendingMessage != null) ...[
                    Text(
                      _pendingMessage!,
                      style: llUi(size: 12.5, color: llMuted),
                    ),
                    const SizedBox(height: 10),
                  ],
                  if (_error != null) ...[
                    Text(
                      _error!,
                      style: llUi(size: 12.5, color: Colors.redAccent),
                    ),
                    const SizedBox(height: 10),
                  ],
                  LLCTA(
                    label: AppLocalizations.of(context).paywallChooseThisPathCta,
                    enabled: !_busy,
                    onTap: _busy ? null : _choose,
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
