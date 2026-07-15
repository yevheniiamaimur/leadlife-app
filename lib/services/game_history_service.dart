import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import '../models/game_history_entry.dart';

class GameHistoryService {
  static const _kEntries = 'gameHistory';
  static const totalFields = 32;

  static Future<List<GameHistoryEntry>> load() async {
    final prefs = await SharedPreferences.getInstance();
    final json = prefs.getString(_kEntries);
    if (json == null) return [];
    return (jsonDecode(json) as List)
        .map((e) => GameHistoryEntry.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  static Future<void> _saveAll(List<GameHistoryEntry> entries) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(
      _kEntries,
      jsonEncode(entries.map((e) => e.toJson()).toList()),
    );
  }

  // Records the start of a new wish/journey — unless the most recent
  // entry is already an in-progress attempt at the same wish.
  static Future<void> recordStart(String wish) async {
    final entries = await load();
    if (entries.isNotEmpty && !entries.last.isCompleted && entries.last.wish == wish) {
      return;
    }
    entries.add(GameHistoryEntry(wish: wish, startedAt: DateTime.now(), completedFieldsCount: 0));
    await _saveAll(entries);
  }

  static Future<void> updateProgress(String wish, int completedFieldsCount) async {
    final entries = await load();
    final index = entries.lastIndexWhere((e) => !e.isCompleted && e.wish == wish);
    if (index == -1) return;
    entries[index] = entries[index].copyWith(completedFieldsCount: completedFieldsCount);
    await _saveAll(entries);
  }

  static Future<void> markCompleted(
    String wish, {
    required int completedFieldsCount,
    required String successCode,
  }) async {
    final entries = await load();
    final index = entries.lastIndexWhere((e) => !e.isCompleted && e.wish == wish);
    final now = DateTime.now();
    if (index == -1) {
      entries.add(GameHistoryEntry(
        wish: wish,
        startedAt: now,
        completedAt: now,
        completedFieldsCount: completedFieldsCount,
        successCode: successCode,
      ));
    } else {
      entries[index] = entries[index].copyWith(
        completedAt: now,
        completedFieldsCount: completedFieldsCount,
        successCode: successCode,
      );
    }
    await _saveAll(entries);
  }

  // A short, deterministic code built from the path of completed fields —
  // literally a map back to the fields that led to the desire.
  static String buildSuccessCode(List<int> fieldNumbers) {
    final sorted = List<int>.from(fieldNumbers)..sort();
    return sorted.map((n) => n.toString().padLeft(2, '0')).join('-');
  }
}
