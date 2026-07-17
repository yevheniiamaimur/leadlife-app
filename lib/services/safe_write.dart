import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';

/// Runs [write], retrying on failure with a short backoff, so a single
/// transient disk error (e.g. device storage briefly full) doesn't
/// silently drop user data. Returns whether the write ultimately
/// succeeded; every failed attempt is logged either way, so nothing is
/// lost without a trace even when the caller doesn't check the result.
Future<bool> safeWrite(String label, Future<void> Function() write, {int retries = 2}) async {
  for (var attempt = 0; ; attempt++) {
    try {
      await write();
      return true;
    } catch (e, st) {
      final isLastAttempt = attempt >= retries;
      debugPrint('safeWrite [$label] attempt ${attempt + 1} failed: $e${isLastAttempt ? '\n$st' : ' — retrying'}');
      if (isLastAttempt) {
        // Best-effort — e.g. in tests Firebase isn't initialized at all,
        // and that shouldn't take down the write path itself.
        try {
          await FirebaseCrashlytics.instance.recordError(
            e, st,
            reason: 'safeWrite [$label] gave up after ${attempt + 1} attempts',
            fatal: false,
          );
        } catch (_) {}
        return false;
      }
      await Future.delayed(Duration(milliseconds: 200 * (attempt + 1)));
    }
  }
}
