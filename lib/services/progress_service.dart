import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'safe_write.dart';
import 'cloud_sync_service.dart';
import '../models/journey_entry.dart';

class ProgressService {
  static const _kWish = 'wish';
  static const _kCurrentField = 'currentField';
  static const _kCompleted = 'completedFields';
  static const _kAnswers = 'answers';
  static const _kJourney = 'journeyEntries';

  static Future<bool> save({
    required String wish,
    required int currentFieldNum,
    required List<int> completedFields,
    required Map<int, String> answers,
    List<JourneyEntry>? journeyEntries,
  }) => safeWrite('ProgressService.save', () async {
    final prefs = await SharedPreferences.getInstance();
    await Future.wait([
      prefs.setString(_kWish, wish),
      prefs.setInt(_kCurrentField, currentFieldNum),
      prefs.setString(_kCompleted, jsonEncode(completedFields)),
      prefs.setString(
        _kAnswers,
        jsonEncode(answers.map((k, v) => MapEntry(k.toString(), v))),
      ),
      if (journeyEntries != null)
        prefs.setString(
          _kJourney,
          jsonEncode(journeyEntries.map((entry) => entry.toJson()).toList()),
        ),
    ]);
    CloudSyncService.instance.notifyLocalChange();
  });

  static Future<SavedProgress?> load() async {
    final prefs = await SharedPreferences.getInstance();
    final wish = prefs.getString(_kWish);
    if (wish == null || wish.isEmpty) return null;

    final currentFieldNum = prefs.getInt(_kCurrentField) ?? 1;
    final completedJson = prefs.getString(_kCompleted);
    final answersJson = prefs.getString(_kAnswers);
    final journeyJson = prefs.getString(_kJourney);

    final completed = completedJson != null
        ? List<int>.from(jsonDecode(completedJson) as List)
        : <int>[];
    final answers = answersJson != null
        ? (jsonDecode(answersJson) as Map<String, dynamic>).map(
            (k, v) => MapEntry(int.parse(k), v as String),
          )
        : <int, String>{};
    final journeyEntries = journeyJson != null
        ? (jsonDecode(journeyJson) as List)
              .map(
                (value) => JourneyEntry.fromJson(
                  Map<String, dynamic>.from(value as Map),
                ),
              )
              .toList()
        : <JourneyEntry>[];

    return SavedProgress(
      wish: wish,
      currentFieldNum: currentFieldNum,
      completedFields: completed,
      answers: answers,
      journeyEntries: journeyEntries,
    );
  }

  static Future<bool> recordRoll({
    required int fieldNumber,
    required int roll,
    required int nextFieldNumber,
  }) => safeWrite('ProgressService.recordRoll', () async {
    final prefs = await SharedPreferences.getInstance();
    final raw = prefs.getString(_kJourney);
    final entries = raw == null
        ? <JourneyEntry>[]
        : (jsonDecode(raw) as List)
              .map(
                (value) => JourneyEntry.fromJson(
                  Map<String, dynamic>.from(value as Map),
                ),
              )
              .toList();
    final index = entries.lastIndexWhere(
      (entry) => entry.fieldNumber == fieldNumber,
    );
    if (index >= 0) {
      entries[index] = entries[index].copyWith(
        roll: roll,
        nextFieldNumber: nextFieldNumber,
      );
    }
    await prefs.setString(
      _kJourney,
      jsonEncode(entries.map((entry) => entry.toJson()).toList()),
    );
    CloudSyncService.instance.notifyLocalChange();
  });

  static Future<bool> clear() => safeWrite('ProgressService.clear', () async {
    final prefs = await SharedPreferences.getInstance();
    await Future.wait([
      prefs.remove(_kWish),
      prefs.remove(_kCurrentField),
      prefs.remove(_kCompleted),
      prefs.remove(_kAnswers),
      prefs.remove(_kJourney),
    ]);
    CloudSyncService.instance.notifyLocalChange();
  });
}

class SavedProgress {
  const SavedProgress({
    required this.wish,
    required this.currentFieldNum,
    required this.completedFields,
    required this.answers,
    required this.journeyEntries,
  });
  final String wish;
  final int currentFieldNum;
  final List<int> completedFields;
  final Map<int, String> answers;
  final List<JourneyEntry> journeyEntries;
}
