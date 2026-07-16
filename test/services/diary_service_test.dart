import 'package:flutter_test/flutter_test.dart';
import 'package:leadlife_app/models/diary_entry.dart';
import 'package:leadlife_app/services/diary_service.dart';

import '../test_helpers.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  setUpAll(initSqfliteFfiForTests);
  setUp(resetTestStorage);

  test('load returns an empty list when nothing has been saved', () async {
    expect(await DiaryService.load(), isEmpty);
  });

  test('insert adds an entry that load then returns', () async {
    final saved = await DiaryService.insert(
      DiaryEntry(date: DateTime(2026, 1, 1), text: 'my intention'),
    );

    expect(saved, isTrue);
    final entries = await DiaryService.load();
    expect(entries, hasLength(1));
    expect(entries.single.text, 'my intention');
  });

  test('load returns entries newest-first', () async {
    await DiaryService.insert(DiaryEntry(date: DateTime(2026, 1, 1), text: 'older'));
    await DiaryService.insert(DiaryEntry(date: DateTime(2026, 1, 2), text: 'newer'));

    final entries = await DiaryService.load();
    expect(entries.map((e) => e.text), ['newer', 'older']);
  });
}
