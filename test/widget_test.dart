import 'package:flutter_test/flutter_test.dart';
import 'package:leadlife_app/main.dart';

void main() {
  testWidgets('App launches smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(const LeadLifeApp());
    expect(find.text('I\'m Ready'), findsOneWidget);
  });
}
