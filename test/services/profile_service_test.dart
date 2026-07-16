import 'package:flutter_test/flutter_test.dart';
import 'package:leadlife_app/services/profile_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  setUp(() => SharedPreferences.setMockInitialValues({}));

  test('load returns null when no profile has been saved', () async {
    expect(await ProfileService.load(), isNull);
  });

  test('save then load round-trips the profile fields', () async {
    final saved = await ProfileService.save(
      name: 'Alex',
      birthday: DateTime(1990, 5, 20),
      email: 'alex@example.com',
      focus: 'Career, Health',
    );
    expect(saved, isTrue);

    final profile = await ProfileService.load();
    expect(profile, isNotNull);
    expect(profile!.name, 'Alex');
    expect(profile.birthday, DateTime(1990, 5, 20));
    expect(profile.email, 'alex@example.com');
    expect(profile.focus, 'Career, Health');
  });
}
