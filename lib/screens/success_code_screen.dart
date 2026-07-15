import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';
import '../app_theme.dart';
import '../models/field.dart';
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
    final gold   = PdfColor.fromHex('C8A96E');
    final ink    = PdfColor.fromHex('2C2C2C');
    final muted  = PdfColor.fromHex('8A7E70');
    final hair   = PdfColor.fromHex('E0D8CC');
    final cardBg = PdfColor.fromHex('FFFFF8');

    // Noto fonts — full Cyrillic + Latin support
    final fontSerif       = await PdfGoogleFonts.notoSerifRegular();
    final fontSerifItalic = await PdfGoogleFonts.notoSerifItalic();
    final fontSerifBold   = await PdfGoogleFonts.notoSerifBold();
    final fontSans        = await PdfGoogleFonts.notoSansRegular();
    final fontSansBold    = await PdfGoogleFonts.notoSansBold();

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
                  pw.Text('Your Journey Report', style: serifItalic(9, color: muted)),
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
          pw.Text('Your Journey\nIs Complete',
            style: pw.TextStyle(font: fontSerifBold, fontSize: 28, color: ink, lineSpacing: 8)),
          pw.SizedBox(height: 6),
          pw.Text('You have walked all 32 paths.', style: serifItalic(13, color: muted)),
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
                pw.Text('YOUR DESIRE', style: label(7.5, color: gold, letterSpacing: 2)),
                pw.SizedBox(height: 8),
                pw.Text('"${widget.wish}"', style: serifItalic(14, lineSpacing: 4)),
              ],
            ),
          ),
          pw.SizedBox(height: 20),

          // Area of action
          pw.Text('YOUR CURRENT AREA OF ACTION', style: label(7.5, letterSpacing: 2)),
          pw.SizedBox(height: 6),
          pw.Text(widget.currentAreaField.name, style: serif(22, letterSpacing: 2)),
          pw.SizedBox(height: 2),
          pw.Text(widget.currentAreaField.subtitle, style: serifItalic(11, color: muted)),
          pw.SizedBox(height: 28),

          pw.Container(height: 0.5, color: hair),
          pw.SizedBox(height: 22),
          pw.Text('WHAT YOU HAVE DISCOVERED', style: label(7.5, letterSpacing: 2)),
          pw.SizedBox(height: 16),

          if (entries.isEmpty)
            pw.Text('No answers recorded.', style: serifItalic(12, color: muted)),

          ...entries.map((e) {
            final field = kFields.firstWhere((f) => f.n == e.key);
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
                          'Your Journey\nis Complete',
                          textAlign: TextAlign.center,
                          style: llSerif(size: 28, height: 1.15),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          'You have walked all 32 paths.\nThis is your Success Code.',
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
                              const LLSmallCaps('Your Original Desire'),
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
                            LLSmallCaps('Your current area of action', size: 10, color: llMuted),
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
                        Text('What you have discovered',
                          style: llUi(size: 13, weight: FontWeight.w600)),
                        const SizedBox(height: 12),
                        if (entries.isEmpty)
                          Padding(
                            padding: const EdgeInsets.all(8),
                            child: Text('Your answers will appear here.',
                              style: llSerifItalic(size: 13, color: llMutedSoft)),
                          )
                        else
                          Column(
                            children: entries.map((e) {
                              final field = kFields.firstWhere((f) => f.n == e.key);
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
                        const SizedBox(height: 24),
                        const Center(child: LLHairline(width: 28)),
                        const SizedBox(height: 18),
                        Text(
                          'The golden fish is already on its way.\nYour work is to believe — and to act.',
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
                          label: _generatingPdf ? 'Preparing PDF…' : 'Save as PDF',
                          variant: 'outline',
                          enabled: !_generatingPdf,
                          onTap: _generatingPdf ? null : _savePdf,
                        ),
                        const SizedBox(height: 10),
                        LLCTA(
                          label: 'Start a New Journey',
                          onTap: () {
                            ProgressService.clear().ignore();
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
