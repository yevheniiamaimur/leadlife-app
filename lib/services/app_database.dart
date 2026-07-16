import 'dart:convert';
import 'package:path/path.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sqflite/sqflite.dart';

// Legacy SharedPreferences keys — pre-sqlite storage for diary/journal.
// Kept here only so a fresh sqlite database can absorb any data that
// still lives under them on an upgrading device.
const _kLegacyDiaryEntries = 'diaryEntries';
const _kLegacyGameHistory = 'gameHistory';

class AppDatabase {
  AppDatabase._();
  static final AppDatabase instance = AppDatabase._();

  Database? _db;

  Future<Database> get database async => _db ??= await _open();

  // Closes and forgets the cached connection — used by tests to get a
  // fresh database between cases; not needed in normal app operation.
  Future<void> close() async {
    final db = _db;
    _db = null;
    await db?.close();
  }

  Future<Database> _open() async {
    final path = join(await getDatabasesPath(), 'leadlife.db');
    return openDatabase(
      path,
      version: 1,
      onCreate: (db, version) async {
        await db.execute('''
          CREATE TABLE diary_entries (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            date TEXT NOT NULL,
            text TEXT NOT NULL
          )
        ''');
        await db.execute('''
          CREATE TABLE game_history (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            wish TEXT NOT NULL,
            startedAt TEXT NOT NULL,
            completedAt TEXT,
            completedFieldsCount INTEGER NOT NULL,
            successCode TEXT
          )
        ''');
        await _migrateLegacyData(db);
      },
    );
  }

  // One-time absorption of data saved under the old SharedPreferences
  // JSON-blob scheme, so upgrading users don't lose their diary/journal.
  Future<void> _migrateLegacyData(Database db) async {
    final prefs = await SharedPreferences.getInstance();

    final diaryJson = prefs.getString(_kLegacyDiaryEntries);
    if (diaryJson != null) {
      final batch = db.batch();
      for (final e in jsonDecode(diaryJson) as List) {
        final m = e as Map<String, dynamic>;
        batch.insert('diary_entries', {'date': m['date'], 'text': m['text']});
      }
      await batch.commit(noResult: true);
      await prefs.remove(_kLegacyDiaryEntries);
    }

    final historyJson = prefs.getString(_kLegacyGameHistory);
    if (historyJson != null) {
      final batch = db.batch();
      for (final e in jsonDecode(historyJson) as List) {
        final m = e as Map<String, dynamic>;
        batch.insert('game_history', {
          'wish': m['wish'],
          'startedAt': m['startedAt'],
          'completedAt': m['completedAt'],
          'completedFieldsCount': m['completedFieldsCount'],
          'successCode': m['successCode'],
        });
      }
      await batch.commit(noResult: true);
      await prefs.remove(_kLegacyGameHistory);
    }
  }
}
