import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'safe_write.dart';

class ProgressService {
  static const _kWish         = 'wish';
  static const _kCurrentField = 'currentField';
  static const _kCompleted    = 'completedFields';
  static const _kAnswers      = 'answers';

  static Future<bool> save({
    required String wish,
    required int currentFieldNum,
    required List<int> completedFields,
    required Map<int, String> answers,
  }) => safeWrite('ProgressService.save', () async {
    final prefs = await SharedPreferences.getInstance();
    await Future.wait([
      prefs.setString(_kWish, wish),
      prefs.setInt(_kCurrentField, currentFieldNum),
      prefs.setString(_kCompleted, jsonEncode(completedFields)),
      prefs.setString(_kAnswers, jsonEncode(
        answers.map((k, v) => MapEntry(k.toString(), v)),
      )),
    ]);
  });

  static Future<SavedProgress?> load() async {
    final prefs = await SharedPreferences.getInstance();
    final wish = prefs.getString(_kWish);
    if (wish == null || wish.isEmpty) return null;

    final currentFieldNum = prefs.getInt(_kCurrentField) ?? 1;
    final completedJson   = prefs.getString(_kCompleted);
    final answersJson     = prefs.getString(_kAnswers);

    final completed = completedJson != null
        ? List<int>.from(jsonDecode(completedJson) as List)
        : <int>[];
    final answers = answersJson != null
        ? (jsonDecode(answersJson) as Map<String, dynamic>)
            .map((k, v) => MapEntry(int.parse(k), v as String))
        : <int, String>{};

    return SavedProgress(
      wish: wish,
      currentFieldNum: currentFieldNum,
      completedFields: completed,
      answers: answers,
    );
  }

  static Future<bool> clear() => safeWrite('ProgressService.clear', () async {
    final prefs = await SharedPreferences.getInstance();
    await Future.wait([
      prefs.remove(_kWish),
      prefs.remove(_kCurrentField),
      prefs.remove(_kCompleted),
      prefs.remove(_kAnswers),
    ]);
  });
}

class SavedProgress {
  const SavedProgress({
    required this.wish,
    required this.currentFieldNum,
    required this.completedFields,
    required this.answers,
  });
  final String wish;
  final int currentFieldNum;
  final List<int> completedFields;
  final Map<int, String> answers;
}
