import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';
import '../app_theme.dart';
import '../l10n/app_localizations.dart';
import '../models/field.dart';
import '../services/ai_service.dart';
import '../services/analytics_service.dart';
import '../services/game_content_service.dart';
import '../services/game_history_service.dart';
import '../services/progress_service.dart';
import '../widgets/ll_widgets.dart';
import 'rules_screen.dart';

class SuccessCodeScreen extends StatefulWidget {
  const SuccessCodeScreen({
    super.key,
    required this.wish,
    required this.answers,
    required this.currentAreaField,
  });

  final String wish;
  final Map<int, String> answers;
  final GameField currentAreaField;

  @override
  State<SuccessCodeScreen> createState() => _SuccessCodeScreenState();
}

class _SuccessCodeScreenState extends State<SuccessCodeScreen> {
  bool _generatingPdf = false;
  bool _analysisStarted = false;
  bool _analysisLoading = false;
  FinalAnalysisResult? _analysis;

  List<MapEntry<int, String>> get _entries =>
      widget.answers.entries.toList()..sort((a, b) => a.key.compareTo(b.key));

  @override
  void initState() {
    super.initState();
    GameHistoryService.markCompleted(
      widget.wish,
      completedFieldsCount: widget.answers.length,
      successCode: GameHistoryService.buildSuccessCode(widget.answers.keys.toList()),
    ).ignore();
    AnalyticsService.instance.logJourneyCompleted().ignore();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // Needs GameContentService.fields(context), so this can't run until
    // context is fully ready — didChangeDependencies, guarded to fire once.
    if (_analysisStarted) return;
    _analysisStarted = true;
    _loadAnalysis();
  }

  static String _questionOf(GameField field) =>
      field.task.split('\n\n').where((p) => !p.contains('__________')).join('\n\n');

  Future<void> _loadAnalysis() async {
    setState(() => _analysisLoading = true);
    final fields = GameContentService.fields(context);
    final entries = _entries.map((e) {
      final field = fields.firstWhere((f) => f.n == e.key);
      return AnswerEntry(n: e.key, fieldName: field.name, question: _questionOf(field), answer: e.value);
    }).toList();
    try {
      final result = await AiService.finalAnalysis(wish: widget.wish, entries: entries);
      if (!mounted) return;
      setState(() {
        _analysis = result;
        _analysisLoading = false;
      });
    } on AiServiceException {
      if (!mounted) return;
      setState(() => _analysisLoading = false);
    }
  }

  Future<void> _savePdf() async {
    setState(() => _generatingPdf = true);
    try {
      final bytes = await _buildPdf();
      await Printing.sharePdf(bytes: bytes, filename: 'lead_life_journey.pdf');
    } finally {
      if (mounted) setState(() => _generatingPdf = false);
    }
  }

  Future<Uint8List> _buildPdf() async {
    // Captured before any awaits, so it's safe to use even if the widget
    // is unmounted by the time the PDF finishes building.
    final l10n = AppLocalizations.of(context);
    final fields = GameContentService.fields(context);
    final gold   = PdfColor.fromHex('C8A96E');
    final ink    = PdfColor.fromHex('2C2C2C');
    final muted  = PdfColor.fromHex('8A7E70');
    final hair   = PdfColor.fromHex('E0D8CC');
    final cardBg = PdfColor.fromHex('FFFFF8');

    // Noto fonts — full Cyrillic + Latin support, bundled locally so PDF
    // export doesn't depend on a network fetch at generation time.
    Future<pw.Font> loadFont(String asset) async =>
        pw.Font.ttf(await rootBundle.load(asset));
    final fontSerif       = await loadFont('assets/fonts/NotoSerif-Regular.ttf');
    final fontSerifItalic = await loadFont('assets/fonts/NotoSerif-Italic.ttf');
    final fontSerifBold   = await loadFont('assets/fonts/NotoSerif-Bold.ttf');
    final fontSans        = await loadFont('assets/fonts/NotoSans-Regular.ttf');
    final fontSansBold    = await loadFont('assets/fonts/NotoSans-Bold.ttf');

    pw.TextStyle serif(double size, {PdfColor? color, double lineSpacing = 0, double letterSpacing = 0}) =>
        pw.TextStyle(font: fontSerif, fontSize: size, color: color ?? ink,
            lineSpacing: lineSpacing, letterSpacing: letterSpacing);

    pw.TextStyle serifItalic(double size, {PdfColor? color, double lineSpacing = 0}) =>
        pw.TextStyle(font: fontSerifItalic, fontSize: size, color: color ?? ink, lineSpacing: lineSpacing);

    pw.TextStyle label(double size, {PdfColor? color, double letterSpacing = 0}) =>
        pw.TextStyle(font: fontSansBold, fontSize: size, color: color ?? muted, letterSpacing: letterSpacing);

    pw.TextStyle sans(double size, {PdfColor? color}) =>
        pw.TextStyle(font: fontSans, fontSize: size, color: color ?? muted);

    final entries = _entries;
    final doc = pw.Document();

    doc.addPage(
      pw.MultiPage(
        pageFormat: PdfPageFormat.a4,
        margin: const pw.EdgeInsets.fromLTRB(52, 56, 52, 52),
        header: (_) => pw.Padding(
          padding: const pw.EdgeInsets.only(bottom: 20),
          child: pw.Column(
            crossAxisAlignment: pw.CrossAxisAlignment.start,
            children: [
              pw.Row(
                mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                children: [
                  pw.Text('leadlife', style: label(8, color: gold, letterSpacing: 3)),
                  pw.Text(l10n.pdfJourneyReportLabel, style: serifItalic(9, color: muted)),
                ],
              ),
              pw.SizedBox(height: 6),
              pw.Container(height: 0.5, color: hair),
            ],
          ),
        ),
        footer: (ctx) => pw.Padding(
          padding: const pw.EdgeInsets.only(top: 10),
          child: pw.Row(
            mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
            children: [
              pw.Text('leadlife', style: serifItalic(8, color: muted)),
              pw.Text('${ctx.pageNumber} / ${ctx.pagesCount}', style: sans(8)),
            ],
          ),
        ),
        build: (_) => [
          pw.Text(l10n.pdfJourneyCompleteHeading,
            style: pw.TextStyle(font: fontSerifBold, fontSize: 28, color: ink, lineSpacing: 8)),
          pw.SizedBox(height: 6),
          pw.Text(l10n.pdfWalkedAllPathsLine, style: serifItalic(13, color: muted)),
          pw.SizedBox(height: 26),

          // Desire card
          pw.Container(
            width: double.infinity,
            padding: const pw.EdgeInsets.all(18),
            decoration: pw.BoxDecoration(
              color: cardBg,
              border: pw.Border.all(color: gold, width: 0.8),
              borderRadius: const pw.BorderRadius.all(pw.Radius.circular(6)),
            ),
            child: pw.Column(
              crossAxisAlignment: pw.CrossAxisAlignment.start,
              children: [
                pw.Text(l10n.pdfYourDesireLabel, style: label(7.5, color: gold, letterSpacing: 2)),
                pw.SizedBox(height: 8),
                pw.Text('"${widget.wish}"', style: serifItalic(14, lineSpacing: 4)),
              ],
            ),
          ),
          pw.SizedBox(height: 20),

          // Area of action
          pw.Text(l10n.pdfCurrentAreaOfActionLabel, style: label(7.5, letterSpacing: 2)),
          pw.SizedBox(height: 6),
          pw.Text(widget.currentAreaField.name, style: serif(22, letterSpacing: 2)),
          pw.SizedBox(height: 2),
          pw.Text(widget.currentAreaField.subtitle, style: serifItalic(11, color: muted)),
          pw.SizedBox(height: 28),

          pw.Container(height: 0.5, color: hair),
          pw.SizedBox(height: 22),
          pw.Text(l10n.pdfWhatYouHaveDiscoveredLabel, style: label(7.5, letterSpacing: 2)),
          pw.SizedBox(height: 16),

          if (entries.isEmpty)
            pw.Text(l10n.pdfNoAnswersRecorded, style: serifItalic(12, color: muted)),

          ...entries.map((e) {
            final field = fields.firstWhere((f) => f.n == e.key);
            return pw.Padding(
              padding: const pw.EdgeInsets.only(bottom: 14),
              child: pw.Container(
                decoration: pw.BoxDecoration(
                  border: pw.Border(left: pw.BorderSide(color: gold, width: 2)),
                ),
                padding: const pw.EdgeInsets.fromLTRB(12, 2, 0, 2),
                child: pw.Column(
                  crossAxisAlignment: pw.CrossAxisAlignment.start,
                  children: [
                    pw.Text('${field.paddedNumber} · ${field.name.toUpperCase()}',
                      style: label(7.5, letterSpacing: 1.5)),
                    pw.SizedBox(height: 3),
                    pw.Text('"${e.value}"', style: serifItalic(13, lineSpacing: 3)),
                  ],
                ),
              ),
            );
          }),

          if (_analysis != null) ...[
            pw.SizedBox(height: 18),
            pw.Container(height: 0.5, color: hair),
            pw.SizedBox(height: 22),
            pw.Text(l10n.yourAnalysisLabel, style: label(7.5, letterSpacing: 2)),
            pw.SizedBox(height: 10),
            pw.Text(_analysis!.analysis, style: serif(13, lineSpacing: 4)),
            pw.SizedBox(height: 16),
            pw.Text(l10n.yourNextDirectionLabel, style: label(7.5, color: gold, letterSpacing: 2)),
            pw.SizedBox(height: 8),
            pw.Text(_analysis!.finalDirection, style: serifItalic(14, color: gold, lineSpacing: 4)),
            pw.SizedBox(height: 16),
            pw.Text(l10n.recommendedStepsLabel, style: label(7.5, letterSpacing: 2)),
            pw.SizedBox(height: 10),
            ..._analysis!.recommendations.map((r) => pw.Padding(
              padding: const pw.EdgeInsets.only(bottom: 6),
              child: pw.Text('• $r', style: serif(12, lineSpacing: 2)),
            )),
          ],

          pw.SizedBox(height: 18),
          pw.Container(height: 0.5, color: hair),
          pw.SizedBox(height: 14),
          pw.Text(
            'The golden fish is already on its way.\nYour work is to believe — and to act.',
            style: serifItalic(13, color: gold, lineSpacing: 5),
            textAlign: pw.TextAlign.center,
          ),
        ],
      ),
    );

    return doc.save();
  }

  @override
  Widget build(BuildContext context) {
    final entries = _entries;
    final l10n = AppLocalizations.of(context);
    final fields = GameContentService.fields(context);

    return Scaffold(
      backgroundColor: llBg,
      body: Stack(
        children: [
          Positioned(
            top: 0, left: 0, right: 0,
            height: 220,
            child: DecoratedBox(
              decoration: BoxDecoration(
                gradient: RadialGradient(
                  center: Alignment.topCenter,
                  radius: 1.2,
                  colors: [llGold.withAlpha(40), Colors.transparent],
                ),
              ),
            ),
          ),
          SafeArea(
            child: Column(
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Column(
                      children: [
                        const SizedBox(height: 60),
                        const LLLogo(size: 56, color: llGold),
                        const SizedBox(height: 14),
                        Text(
                          'leadlife',
                          style: llSerif(size: 13, color: llGold).copyWith(
                            letterSpacing: 4,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(height: 28),
                        Text(
                          AppLocalizations.of(context).journeyCompleteHeading,
                          textAlign: TextAlign.center,
                          style: llSerif(size: 28, height: 1.15),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          AppLocalizations.of(context).journeyCompleteSubtext,
                          textAlign: TextAlign.center,
                          style: llSerifItalic(size: 14, color: llMuted, height: 1.6),
                        ),
                        const SizedBox(height: 24),
                        const Center(child: LLHairline(width: 48)),
                        const SizedBox(height: 24),
                        Container(
                          width: double.infinity,
                          padding: const EdgeInsets.all(22),
                          decoration: BoxDecoration(
                            color: llCardBg,
                            borderRadius: BorderRadius.circular(16),
                            border: Border.all(color: const Color(0x80C8A96E)),
                            boxShadow: const [BoxShadow(color: Color(0x0FB4A078), blurRadius: 20, offset: Offset(0, 4))],
                          ),
                          child: Column(
                            children: [
                              LLSmallCaps(AppLocalizations.of(context).yourOriginalDesireLabel),
                              const SizedBox(height: 8),
                              Text(
                                '"${widget.wish}"',
                                textAlign: TextAlign.center,
                                style: llSerifItalic(size: 16, color: llInk, height: 1.5),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 22),
                        Column(
                          children: [
                            LLSmallCaps(AppLocalizations.of(context).currentAreaOfActionLabel, size: 10, color: llMuted),
                            const SizedBox(height: 6),
                            Text(
                              widget.currentAreaField.name,
                              textAlign: TextAlign.center,
                              style: llSerif(size: 22, height: 1.2).copyWith(letterSpacing: 2),
                            ),
                            const SizedBox(height: 4),
                            Text(widget.currentAreaField.subtitle,
                              style: llSerifItalic(size: 13, color: llMuted)),
                          ],
                        ),
                        const SizedBox(height: 28),
                        Text(AppLocalizations.of(context).whatYouHaveDiscoveredLabel,
                          style: llUi(size: 13, weight: FontWeight.w600)),
                        const SizedBox(height: 12),
                        if (entries.isEmpty)
                          Padding(
                            padding: const EdgeInsets.all(8),
                            child: Text(AppLocalizations.of(context).answersEmptyState,
                              style: llSerifItalic(size: 13, color: llMutedSoft)),
                          )
                        else
                          Column(
                            children: entries.map((e) {
                              final field = fields.firstWhere((f) => f.n == e.key);
                              return Padding(
                                padding: const EdgeInsets.only(bottom: 14),
                                child: Container(
                                  width: double.infinity,
                                  padding: const EdgeInsets.fromLTRB(14, 10, 14, 10),
                                  decoration: const BoxDecoration(
                                    border: Border(left: BorderSide(color: Color(0x80C8A96E), width: 2)),
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      LLSmallCaps(field.name, size: 9, letterSpacing: 2.5),
                                      const SizedBox(height: 3),
                                      Text('"${e.value}"',
                                        style: llSerifItalic(size: 14, color: llInk, height: 1.5)),
                                    ],
                                  ),
                                ),
                              );
                            }).toList(),
                          ),
                        if (_analysisLoading || _analysis != null) ...[
                          const SizedBox(height: 24),
                          const Center(child: LLHairline(width: 28)),
                          const SizedBox(height: 24),
                          if (_analysisLoading)
                            const Padding(
                              padding: EdgeInsets.symmetric(vertical: 12),
                              child: SizedBox(
                                width: 22,
                                height: 22,
                                child: CircularProgressIndicator(strokeWidth: 2, color: llGold),
                              ),
                            )
                          else if (_analysis != null) ...[
                            LLSmallCaps(l10n.yourAnalysisLabel, color: llGold),
                            const SizedBox(height: 12),
                            Text(
                              _analysis!.analysis,
                              textAlign: TextAlign.center,
                              style: llSerifItalic(size: 14, color: llInk, height: 1.6),
                            ),
                            const SizedBox(height: 22),
                            Container(
                              width: double.infinity,
                              padding: const EdgeInsets.all(18),
                              decoration: BoxDecoration(
                                color: llCardBg,
                                borderRadius: BorderRadius.circular(14),
                                border: Border.all(color: const Color(0x80C8A96E)),
                              ),
                              child: Column(
                                children: [
                                  LLSmallCaps(l10n.yourNextDirectionLabel, size: 9, color: llMuted),
                                  const SizedBox(height: 8),
                                  Text(
                                    _analysis!.finalDirection,
                                    textAlign: TextAlign.center,
                                    style: llSerifItalic(size: 15, color: llGold, height: 1.5),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 22),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(l10n.recommendedStepsLabel,
                                style: llUi(size: 13, weight: FontWeight.w600)),
                            ),
                            const SizedBox(height: 10),
                            ..._analysis!.recommendations.map((r) => Padding(
                              padding: const EdgeInsets.only(bottom: 8),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('· ', style: llSerif(size: 15, color: llGold)),
                                  Expanded(
                                    child: Text(r, style: llUi(size: 14, color: llInk, weight: FontWeight.w400).copyWith(height: 1.4)),
                                  ),
                                ],
                              ),
                            )),
                          ],
                        ],
                        const SizedBox(height: 24),
                        const Center(child: LLHairline(width: 28)),
                        const SizedBox(height: 18),
                        Text(
                          AppLocalizations.of(context).goldenFishClosingLine,
                          textAlign: TextAlign.center,
                          style: llSerifItalic(size: 15, color: llGold, height: 1.6),
                        ),
                        const SizedBox(height: 32),
                      ],
                    ),
                  ),
                ),
                // Fixed bottom CTAs
                Container(
                  padding: const EdgeInsets.fromLTRB(24, 12, 24, 0),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [llBg, llBg.withAlpha(0)],
                      stops: const [0.7, 1.0],
                    ),
                  ),
                  child: SafeArea(
                    top: false,
                    child: Column(
                      children: [
                        LLCTA(
                          label: _generatingPdf
                              ? AppLocalizations.of(context).preparingPdfCta
                              : AppLocalizations.of(context).savePdfCta,
                          variant: 'outline',
                          enabled: !_generatingPdf,
                          onTap: _generatingPdf ? null : _savePdf,
                        ),
                        const SizedBox(height: 10),
                        LLCTA(
                          label: AppLocalizations.of(context).startNewJourneyCta,
                          onTap: () {
                            ProgressService.clear().ignore();
                            GameContentService.clear().ignore();
                            Navigator.of(context).pushAndRemoveUntil(
                              _fadeRoute(const RulesScreen()),
                              (_) => false,
                            );
                          },
                        ),
                        const SizedBox(height: 8),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
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
