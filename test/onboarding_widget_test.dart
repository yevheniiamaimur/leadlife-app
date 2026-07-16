import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:leadlife_app/main.dart';

import 'test_helpers.dart';

void main() {
  setUpAll(initSqfliteFfiForTests);

  setUp(() async {
    await resetTestStorage();
  });

  testWidgets('launches onboarding when it has not been completed', (tester) async {
    tester.view.physicalSize = const Size(1284, 3200);
    tester.view.devicePixelRatio = 3.0;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);

    await tester.pumpWidget(const LeadLifeApp(onboardingDone: false));
    for (var i = 0; i < 5; i++) {
      await tester.pump(const Duration(milliseconds: 50));
    }

    expect(find.text('Continue'), findsOneWidget);
  });
}
