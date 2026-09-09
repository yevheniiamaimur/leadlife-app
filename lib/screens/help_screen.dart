import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';
import '../app_theme.dart';
import '../l10n/app_localizations.dart';
import '../widgets/ll_widgets.dart';

class HelpScreen extends StatelessWidget {
  const HelpScreen({super.key});

  static const _authorEmail = 'leadlife.app@gmail.com';
  // Add the real Instagram URL here when it is confirmed.
  static const _authorInstagramUrl = '';

  Future<void> _openEmail(BuildContext context) async {
    final l10n = AppLocalizations.of(context);
    final uri = Uri(
      scheme: 'mailto',
      path: _authorEmail,
      queryParameters: {'subject': 'Hatchpot'},
    );
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
      return;
    }
    await Clipboard.setData(const ClipboardData(text: _authorEmail));
    if (!context.mounted) return;
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(l10n.contactAuthorEmailCopied)),
    );
  }

  Future<void> _openInstagram(BuildContext context) async {
    if (_authorInstagramUrl.isEmpty) return;
    final uri = Uri.parse(_authorInstagramUrl);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final items = [
      (q: l10n.helpFaqWhatIsLeadlifeQ, a: l10n.helpFaqWhatIsLeadlifeA),
      (q: l10n.helpFaqDiceQ, a: l10n.helpFaqDiceA),
      (q: l10n.helpFaqStuckFieldQ, a: l10n.helpFaqStuckFieldA),
      (q: l10n.helpFaqSavedIntentionsQ, a: l10n.helpFaqSavedIntentionsA),
      (q: l10n.helpFaqChangeIntentionQ, a: l10n.helpFaqChangeIntentionA),
    ];
    return Scaffold(
      backgroundColor: llBg,
      body: Stack(
        children: [
          SafeArea(
            child: SingleChildScrollView(
              padding: const EdgeInsets.fromLTRB(24, 96, 24, 40),
              child: Column(
                children: [
                  const LLLogo(size: 48, color: llGold),
                  const SizedBox(height: 16),
                  Text(l10n.drawerHelp, textAlign: TextAlign.center, style: llSerif(size: 28, weight: FontWeight.w600)),
                  const SizedBox(height: 8),
                  Text(
                    l10n.helpSubtitle,
                    textAlign: TextAlign.center,
                    style: llSerifItalic(size: 14, height: 1.5),
                  ),
                  const SizedBox(height: 28),
                  for (final item in items)
                    Padding(
                      padding: const EdgeInsets.only(bottom: 16),
                      child: Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(18),
                        decoration: llCardDecoration(),
                        child: Column(
                          children: [
                            Text(item.q, textAlign: TextAlign.center, style: llSerif(size: 17, weight: FontWeight.w600)),
                            const SizedBox(height: 8),
                            Text(item.a, textAlign: TextAlign.center, style: llUi(size: 14, color: llMuted, letterSpacing: 0.1)),
                          ],
                        ),
                      ),
                    ),
                  const SizedBox(height: 12),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(18),
                    decoration: llCardDecoration(),
                    child: Column(
                      children: [
                        Text(
                          l10n.contactAuthorTitle,
                          textAlign: TextAlign.center,
                          style: llSerif(size: 18, weight: FontWeight.w600),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          l10n.contactAuthorSubtitle,
                          textAlign: TextAlign.center,
                          style: llUi(size: 14, color: llMuted, letterSpacing: 0.1),
                        ),
                        const SizedBox(height: 16),
                        LLCTA(
                          label: l10n.contactAuthorEmailCta,
                          variant: 'secondary',
                          onTap: () => _openEmail(context),
                        ),
                        if (_authorInstagramUrl.isNotEmpty) ...[
                          const SizedBox(height: 12),
                          LLCTA(
                            label: l10n.contactAuthorInstagramCta,
                            variant: 'secondary',
                            onTap: () => _openInstagram(context),
                          ),
                        ],
                      ],
                    ),
                  ),
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
