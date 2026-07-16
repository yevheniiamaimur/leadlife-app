import 'package:flutter_test/flutter_test.dart';
import 'package:leadlife_app/services/game_history_service.dart';

import '../test_helpers.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  setUpAll(initSqfliteFfiForTests);
  setUp(resetTestStorage);

  group('GameHistoryService.buildSuccessCode', () {
    test('sorts field numbers and zero-pads them into a dash-joined code', () {
      expect(GameHistoryService.buildSuccessCode([9, 1, 32, 7]), '01-07-09-32');
    });

    test('returns an empty string for an empty list', () {
      expect(GameHistoryService.buildSuccessCode([]), '');
    });
  });

  group('GameHistoryService storage', () {
    test('recordStart creates a new in-progress entry', () async {
      await GameHistoryService.recordStart('my wish');

      final entries = await GameHistoryService.load();
      expect(entries, hasLength(1));
      expect(entries.first.wish, 'my wish');
      expect(entries.first.isCompleted, isFalse);
      expect(entries.first.completedFieldsCount, 0);
    });

    test('recordStart does not duplicate the most recent in-progress wish', () async {
      await GameHistoryService.recordStart('same wish');
      await GameHistoryService.recordStart('same wish');

      final entries = await GameHistoryService.load();
      expect(entries, hasLength(1));
    });

    test('recordStart starts a new entry for a different wish', () async {
      await GameHistoryService.recordStart('first wish');
      await GameHistoryService.recordStart('second wish');

      final entries = await GameHistoryService.load();
      expect(entries, hasLength(2));
    });

    test('updateProgress updates the open entry for that wish', () async {
      await GameHistoryService.recordStart('my wish');
      await GameHistoryService.updateProgress('my wish', 5);

      final entries = await GameHistoryService.load();
      expect(entries.single.completedFieldsCount, 5);
      expect(entries.single.isCompleted, isFalse);
    });

    test('updateProgress is a no-op when there is no open entry for that wish', () async {
      await GameHistoryService.updateProgress('never started', 5);

      final entries = await GameHistoryService.load();
      expect(entries, isEmpty);
    });

    test('markCompleted finishes the open entry with a success code', () async {
      await GameHistoryService.recordStart('my wish');
      await GameHistoryService.markCompleted('my wish', completedFieldsCount: 32, successCode: '01-02');

      final entries = await GameHistoryService.load();
      expect(entries.single.isCompleted, isTrue);
      expect(entries.single.completedFieldsCount, 32);
      expect(entries.single.successCode, '01-02');
    });

    test('markCompleted with no prior recordStart still creates a completed entry', () async {
      await GameHistoryService.markCompleted('spontaneous wish', completedFieldsCount: 32, successCode: '01-02');

      final entries = await GameHistoryService.load();
      expect(entries.single.wish, 'spontaneous wish');
      expect(entries.single.isCompleted, isTrue);
    });

    test('recordStart after a completed wish starts a fresh entry, not a duplicate', () async {
      await GameHistoryService.recordStart('repeat wish');
      await GameHistoryService.markCompleted('repeat wish', completedFieldsCount: 32, successCode: '01');
      await GameHistoryService.recordStart('repeat wish');

      final entries = await GameHistoryService.load();
      expect(entries, hasLength(2));
      expect(entries.where((e) => e.isCompleted), hasLength(1));
      expect(entries.where((e) => !e.isCompleted), hasLength(1));
    });
  });
}
