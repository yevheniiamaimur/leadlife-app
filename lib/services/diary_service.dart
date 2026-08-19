import '../models/diary_entry.dart';
import 'app_database.dart';
import 'safe_write.dart';
import 'cloud_sync_service.dart';

class DiaryService {
  static Future<List<DiaryEntry>> load() async {
    final db = await AppDatabase.instance.database;
    final rows = await db.query('diary_entries', orderBy: 'date DESC, id DESC');
    return rows.map(DiaryEntry.fromMap).toList();
  }

  static Future<bool> insert(DiaryEntry entry) =>
      safeWrite('DiaryService.insert', () async {
        final db = await AppDatabase.instance.database;
        await db.insert('diary_entries', entry.toMap());
        CloudSyncService.instance.notifyLocalChange();
      });
}
