import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:leadlife_app/main.dart';

import 'test_helpers.dart';

// Deliberately one test per file (see onboarding_widget_test.dart) — each
// test file runs in its own isolate, which sidesteps a hang seen when two
// testWidgets shared this file: something about the previous test's
// still-in-flight sqflite ffi calls racing the next test's
// close()+deleteDatabase() in the same isolate. Splitting removes the
// shared state entirely instead of chasing that race further.
void main() {
  setUpAll(initSqfliteFfiForTests);

  setUp(() async {
    await resetTestStorage();
  });

  // Generously tall on purpose: the test environment's substitute fonts
  // (--use-test-fonts) render noticeably taller than the app's real bundled
  // fonts, so a real device's exact logical size isn't quite enough here.
  Future<void> setPhoneSizedSurface(WidgetTester tester) async {
    tester.view.physicalSize = const Size(1284, 3200);
    tester.view.devicePixelRatio = 3.0;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);
  }

  testWidgets('launches straight to Home when onboarding is already done', (tester) async {
    await setPhoneSizedSurface(tester);
    await tester.pumpWidget(const LeadLifeApp(onboardingDone: true));
    // RulesScreen's IndexedStack builds the Journal and Diary tabs eagerly
    // too, which each load from sqlite on init, and the Home tab runs a
    // perpetually-repeating marquee animation — so settle a bounded
    // number of frames instead of pumpAndSettle (which would never
    // return while that animation keeps scheduling new frames).
    for (var i = 0; i < 5; i++) {
      await tester.pump(const Duration(milliseconds: 50));
    }

    expect(find.text('Welcome'), findsOneWidget);
    expect(find.text("What's your wish?"), findsOneWidget);
  });
}
