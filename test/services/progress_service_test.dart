import 'package:flutter_test/flutter_test.dart';
import 'package:leadlife_app/services/progress_service.dart';
import 'package:leadlife_app/models/journey_entry.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  setUp(() => SharedPreferences.setMockInitialValues({}));

  test('load returns null when nothing has been saved', () async {
    expect(await ProgressService.load(), isNull);
  });

  test(
    'save then load round-trips the wish, field, completed list, and answers',
    () async {
      final saved = await ProgressService.save(
        wish: 'my wish',
        currentFieldNum: 5,
        completedFields: [1, 2, 3],
        answers: {1: 'answer one', 2: 'answer two'},
      );
      expect(saved, isTrue);

      final progress = await ProgressService.load();
      expect(progress, isNotNull);
      expect(progress!.wish, 'my wish');
      expect(progress.currentFieldNum, 5);
      expect(progress.completedFields, [1, 2, 3]);
      expect(progress.answers, {1: 'answer one', 2: 'answer two'});
    },
  );

  test('clear removes saved progress', () async {
    await ProgressService.save(
      wish: 'my wish',
      currentFieldNum: 1,
      completedFields: const [],
      answers: const {},
    );
    final cleared = await ProgressService.clear();

    expect(cleared, isTrue);
    expect(await ProgressService.load(), isNull);
  });

  test('journey keeps codes and the dice transition in visit order', () async {
    await ProgressService.save(
      wish: 'my wish',
      currentFieldNum: 3,
      completedFields: const [1, 3],
      answers: const {3: 'a concrete form'},
      journeyEntries: const [
        JourneyEntry(fieldNumber: 1, question: '', answer: '', codes: []),
        JourneyEntry(
          fieldNumber: 3,
          question: 'What exactly?',
          answer: 'a concrete form',
          codes: ['My form is a concrete form'],
        ),
      ],
    );

    await ProgressService.recordRoll(
      fieldNumber: 3,
      roll: 7,
      nextFieldNumber: 10,
    );

    final progress = await ProgressService.load();
    expect(progress!.journeyEntries.map((entry) => entry.fieldNumber), [1, 3]);
    expect(progress.journeyEntries.last.codes, ['My form is a concrete form']);
    expect(progress.journeyEntries.last.roll, 7);
    expect(progress.journeyEntries.last.nextFieldNumber, 10);
  });
}
