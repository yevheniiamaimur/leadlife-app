import 'package:flutter_test/flutter_test.dart';
import 'package:leadlife_app/services/safe_write.dart';

void main() {
  group('safeWrite', () {
    test('returns true and runs once when the write succeeds immediately', () async {
      var callCount = 0;
      final result = await safeWrite('test', () async {
        callCount++;
      });

      expect(result, isTrue);
      expect(callCount, 1);
    });

    test('retries on failure and returns true once a retry succeeds', () async {
      var callCount = 0;
      final result = await safeWrite('test', () async {
        callCount++;
        if (callCount < 2) throw Exception('transient failure');
      });

      expect(result, isTrue);
      expect(callCount, 2);
    });

    test('returns false after exhausting all retries', () async {
      var callCount = 0;
      final result = await safeWrite(
        'test',
        () async {
          callCount++;
          throw Exception('persistent failure');
        },
        retries: 2,
      );

      expect(result, isFalse);
      expect(callCount, 3); // initial attempt + 2 retries
    });
  });
}
