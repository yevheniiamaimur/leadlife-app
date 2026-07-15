import 'package:shared_preferences/shared_preferences.dart';

class ProfileService {
  static const _kName     = 'profileName';
  static const _kBirthday = 'profileBirthday';
  static const _kEmail    = 'profileEmail';
  static const _kFocus    = 'profileFocus';

  static Future<void> save({
    required String name,
    required DateTime birthday,
    required String email,
    required String focus,
  }) async {
    final prefs = await SharedPreferences.getInstance();
    await Future.wait([
      prefs.setString(_kName, name),
      prefs.setString(_kBirthday, birthday.toIso8601String()),
      prefs.setString(_kEmail, email),
      prefs.setString(_kFocus, focus),
    ]);
  }

  static Future<Profile?> load() async {
    final prefs = await SharedPreferences.getInstance();
    final name = prefs.getString(_kName);
    if (name == null || name.isEmpty) return null;

    final birthdayStr = prefs.getString(_kBirthday);
    return Profile(
      name: name,
      birthday: birthdayStr != null ? DateTime.parse(birthdayStr) : null,
      email: prefs.getString(_kEmail) ?? '',
      focus: prefs.getString(_kFocus) ?? '',
    );
  }
}

class Profile {
  const Profile({required this.name, required this.birthday, required this.email, required this.focus});
  final String name;
  final DateTime? birthday;
  final String email;
  final String focus;
}
