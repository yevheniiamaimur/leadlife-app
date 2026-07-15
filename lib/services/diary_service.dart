import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import '../models/diary_entry.dart';

class DiaryService {
  static const _kEntries = 'diaryEntries';

  static Future<List<DiaryEntry>> load() async {
    final prefs = await SharedPreferences.getInstance();
    final json = prefs.getString(_kEntries);
    if (json == null) return [];
    return (jsonDecode(json) as List)
        .map((e) => DiaryEntry.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  static Future<void> save(List<DiaryEntry> entries) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(
      _kEntries,
      jsonEncode(entries.map((e) => e.toJson()).toList()),
    );
  }
}
