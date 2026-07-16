import 'package:flutter_test/flutter_test.dart';
import 'package:leadlife_app/services/app_database.dart';
import 'package:path/path.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

/// Call once from a test file's `setUpAll` to let sqflite run against an
/// in-memory-ish FFI database instead of a real device/simulator.
void initSqfliteFfiForTests() {
  sqfliteFfiInit();
  databaseFactory = databaseFactoryFfi;
}

/// Call from `setUp` for a clean slate: empty SharedPreferences and a
/// genuinely fresh sqlite database. Closing alone isn't enough — it just
/// reconnects to the same on-disk file next time, leaving old rows in
/// place — so the file itself is deleted too, forcing onCreate to run
/// again on next use.
Future<void> resetTestStorage() async {
  SharedPreferences.setMockInitialValues({});
  await AppDatabase.instance.close();
  final path = join(await databaseFactory.getDatabasesPath(), 'leadlife.db');
  await databaseFactory.deleteDatabase(path);
}
