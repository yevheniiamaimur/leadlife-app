import 'package:flutter/material.dart';
import '../app_theme.dart';
import '../models/game_history_entry.dart';
import '../services/game_history_service.dart';
import '../widgets/ll_widgets.dart';

class JournalTab extends StatefulWidget {
  const JournalTab({super.key});
  @override
  State<JournalTab> createState() => _JournalTabState();
}

class _JournalTabState extends State<JournalTab> {
  List<GameHistoryEntry> _entries = [];
  bool _loading = true;

  @override
  void initState() {
    super.initState();
    _load();
  }

  Future<void> _load() async {
    final entries = await GameHistoryService.load();
    if (mounted) {
      setState(() {
        _entries = entries.reversed.toList();
        _loading = false;
      });
    }
  }

  String _formatDate(DateTime d) =>
      '${d.day.toString().padLeft(2, '0')} / ${d.month.toString().padLeft(2, '0')} / ${d.year}';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: _loading
          ? const SizedBox.shrink()
          : SingleChildScrollView(
              padding: const EdgeInsets.fromLTRB(24, 28, 24, 40),
              child: Column(
                children: [
                  Text(
                    'Your Journeys',
                    textAlign: TextAlign.center,
                    style: llSerif(size: 26, weight: FontWeight.w600),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Every wish you have set, and how far it has carried you.',
                    textAlign: TextAlign.center,
                    style: llSerifItalic(size: 14, height: 1.5),
                  ),
                  const SizedBox(height: 28),
                  if (_entries.isEmpty)
                    Text(
                      'Your journeys will appear here.',
                      textAlign: TextAlign.center,
                      style: llSerifItalic(size: 14, color: llMutedSoft),
                    )
                  else
                    for (final e in _entries) _JourneyCard(entry: e, formatDate: _formatDate),
                ],
              ),
            ),
    );
  }
}

class _JourneyCard extends StatelessWidget {
  const _JourneyCard({required this.entry, required this.formatDate});
  final GameHistoryEntry entry;
  final String Function(DateTime) formatDate;

  @override
  Widget build(BuildContext context) {
    final completed = entry.isCompleted;
    return Padding(
      padding: const EdgeInsets.only(bottom: 14),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(18),
        decoration: llCardDecoration(),
        child: Column(
          children: [
            LLSmallCaps(
              completed ? 'Completed · ${formatDate(entry.completedAt!)}' : 'In Progress',
              color: completed ? llGold : llMutedSoft,
            ),
            const SizedBox(height: 10),
            Text(
              '"${entry.wish}"',
              textAlign: TextAlign.center,
              style: llSerifItalic(size: 15, color: llInk, height: 1.4),
            ),
            const SizedBox(height: 12),
            if (completed && entry.successCode != null)
              Text(
                entry.successCode!,
                textAlign: TextAlign.center,
                style: llUi(size: 13, color: llGold, weight: FontWeight.w600, letterSpacing: 2),
              )
            else
              Text(
                '${entry.completedFieldsCount} / ${GameHistoryService.totalFields} fields',
                textAlign: TextAlign.center,
                style: llUi(size: 12.5, color: llMuted),
              ),
          ],
        ),
      ),
    );
  }
}
