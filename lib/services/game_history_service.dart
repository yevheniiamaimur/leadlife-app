import 'package:sqflite/sqflite.dart';
import '../models/game_history_entry.dart';
import 'app_database.dart';

class GameHistoryService {
  static const totalFields = 32;

  static Future<List<GameHistoryEntry>> load() async {
    final db = await AppDatabase.instance.database;
    final rows = await db.query('game_history', orderBy: 'id DESC');
    return rows.map(GameHistoryEntry.fromMap).toList();
  }

  // Records the start of a new wish/journey — unless the most recent
  // entry is already an in-progress attempt at the same wish.
  static Future<void> recordStart(String wish) async {
    final db = await AppDatabase.instance.database;
    final last = await db.query('game_history', orderBy: 'id DESC', limit: 1);
    if (last.isNotEmpty && last.first['completedAt'] == null && last.first['wish'] == wish) {
      return;
    }
    await db.insert('game_history', GameHistoryEntry(
      wish: wish,
      startedAt: DateTime.now(),
      completedFieldsCount: 0,
    ).toMap());
  }

  static Future<void> updateProgress(String wish, int completedFieldsCount) async {
    final db = await AppDatabase.instance.database;
    final id = await _openEntryId(db, wish);
    if (id == null) return;
    await db.update(
      'game_history',
      {'completedFieldsCount': completedFieldsCount},
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  static Future<void> markCompleted(
    String wish, {
    required int completedFieldsCount,
    required String successCode,
  }) async {
    final db = await AppDatabase.instance.database;
    final id = await _openEntryId(db, wish);
    final now = DateTime.now().toIso8601String();
    if (id == null) {
      await db.insert('game_history', GameHistoryEntry(
        wish: wish,
        startedAt: DateTime.now(),
        completedAt: DateTime.now(),
        completedFieldsCount: completedFieldsCount,
        successCode: successCode,
      ).toMap());
    } else {
      await db.update(
        'game_history',
        {
          'completedAt': now,
          'completedFieldsCount': completedFieldsCount,
          'successCode': successCode,
        },
        where: 'id = ?',
        whereArgs: [id],
      );
    }
  }

  // The most recent not-yet-completed entry for this wish, if any.
  static Future<int?> _openEntryId(Database db, String wish) async {
    final rows = await db.query(
      'game_history',
      columns: ['id'],
      where: 'wish = ? AND completedAt IS NULL',
      whereArgs: [wish],
      orderBy: 'id DESC',
      limit: 1,
    );
    return rows.isEmpty ? null : rows.first['id'] as int;
  }

  // A short, deterministic code built from the path of completed fields —
  // literally a map back to the fields that led to the desire.
  static String buildSuccessCode(List<int> fieldNumbers) {
    final sorted = List<int>.from(fieldNumbers)..sort();
    return sorted.map((n) => n.toString().padLeft(2, '0')).join('-');
  }
}
