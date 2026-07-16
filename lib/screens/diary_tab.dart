import 'package:flutter/material.dart';
import '../app_theme.dart';
import '../models/diary_entry.dart';
import '../services/diary_service.dart';
import '../widgets/ll_widgets.dart';
import 'wish_entry_screen.dart';

class DiaryTab extends StatefulWidget {
  const DiaryTab({super.key});
  @override
  State<DiaryTab> createState() => _DiaryTabState();
}

class _DiaryTabState extends State<DiaryTab> {
  final _ctrl = TextEditingController();
  List<DiaryEntry> _entries = [];

  @override
  void initState() {
    super.initState();
    _load();
  }

  @override
  void dispose() {
    _ctrl.dispose();
    super.dispose();
  }

  Future<void> _load() async {
    final entries = await DiaryService.load();
    if (mounted) setState(() => _entries = entries);
  }

  Future<void> _save() async {
    final text = _ctrl.text.trim();
    if (text.isEmpty) return;
    await DiaryService.insert(DiaryEntry(date: DateTime.now(), text: text));
    final entries = await DiaryService.load();
    if (!mounted) return;
    FocusScope.of(context).unfocus();
    setState(() {
      _entries = entries;
      _ctrl.clear();
    });
  }

  void _check() {
    final text = _ctrl.text.trim().isNotEmpty
        ? _ctrl.text.trim()
        : (_entries.isNotEmpty ? _entries.first.text : '');
    FocusScope.of(context).unfocus();
    Navigator.of(context).push(_fadeRoute(
      WishEntryScreen(initialText: text.isEmpty ? null : text),
    ));
  }

  String _formatDate(DateTime d) =>
      '${d.day.toString().padLeft(2, '0')} / ${d.month.toString().padLeft(2, '0')} / ${d.year}';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(24, 28, 24, 40),
        child: Column(
          children: [
            Text(
              "Today's Intention",
              textAlign: TextAlign.center,
              style: llSerif(size: 26, weight: FontWeight.w600),
            ),
            const SizedBox(height: 10),
            Text(
              'Your result follows your intention — write it down.',
              textAlign: TextAlign.center,
              style: llSerifItalic(size: 14, height: 1.5),
            ),
            const SizedBox(height: 24),
            Container(
              width: double.infinity,
              constraints: const BoxConstraints(minHeight: 110),
              decoration: llCardDecoration(),
              padding: const EdgeInsets.all(18),
              child: TextField(
                controller: _ctrl,
                maxLines: null,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Write your intention for today…',
                  hintStyle: llSerifItalic(size: 15, color: llMutedSoft, height: 1.4),
                ),
                style: llSerif(size: 16, height: 1.4),
                cursorColor: llGold,
              ),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Expanded(child: LLCTA(label: 'Save', onTap: _save)),
                const SizedBox(width: 12),
                Expanded(child: LLCTA(label: 'Check', variant: 'outline', onTap: _check)),
              ],
            ),
            const SizedBox(height: 36),
            const LLHairline(width: 48),
            const SizedBox(height: 18),
            const LLSmallCaps('History', color: llGold),
            const SizedBox(height: 18),
            if (_entries.isEmpty)
              Text(
                'Your intentions will appear here.',
                textAlign: TextAlign.center,
                style: llSerifItalic(size: 14, color: llMutedSoft),
              )
            else
              for (final e in _entries)
                Padding(
                  padding: const EdgeInsets.only(bottom: 14),
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(16),
                    decoration: llCardDecoration(),
                    child: Column(
                      children: [
                        Text(
                          _formatDate(e.date),
                          textAlign: TextAlign.center,
                          style: llUi(size: 11, color: llGold, weight: FontWeight.w600, letterSpacing: 1),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          '"${e.text}"',
                          textAlign: TextAlign.center,
                          style: llSerifItalic(size: 14, color: llInk, height: 1.4),
                        ),
                      ],
                    ),
                  ),
                ),
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
