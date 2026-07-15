import 'package:shared_preferences/shared_preferences.dart';

class OnboardingService {
  static const _kDone = 'onboardingDone';

  static Future<bool> isDone() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(_kDone) ?? false;
  }

  static Future<void> markDone() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_kDone, true);
  }
}
