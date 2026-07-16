import '../models/diary_entry.dart';
import 'app_database.dart';

class DiaryService {
  static Future<List<DiaryEntry>> load() async {
    final db = await AppDatabase.instance.database;
    final rows = await db.query('diary_entries', orderBy: 'date DESC, id DESC');
    return rows.map(DiaryEntry.fromMap).toList();
  }

  static Future<void> insert(DiaryEntry entry) async {
    final db = await AppDatabase.instance.database;
    await db.insert('diary_entries', entry.toMap());
  }
}
