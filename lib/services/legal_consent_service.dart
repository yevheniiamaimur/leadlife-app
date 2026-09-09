import 'package:shared_preferences/shared_preferences.dart';

// Bump these whenever the corresponding legal text changes, so a stored
// acceptance always records exactly which version the user agreed to.
const kTermsPrivacyVersion = '2026-09-09';
const kAiDisclaimerVersion = '2026-09-09';

class LegalConsentService {
  static const _kTermsPrivacyAcceptedVersion = 'termsPrivacyAcceptedVersion';
  static const _kTermsPrivacyAcceptedAt = 'termsPrivacyAcceptedAt';
  static const _kAiDisclaimerAcceptedVersion = 'aiDisclaimerAcceptedVersion';
  static const _kAiDisclaimerAcceptedAt = 'aiDisclaimerAcceptedAt';
  static const _kSensitiveDataOptIn = 'sensitiveDataOptIn';

  static Future<void> recordTermsPrivacyAccepted() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_kTermsPrivacyAcceptedVersion, kTermsPrivacyVersion);
    await prefs.setString(_kTermsPrivacyAcceptedAt, DateTime.now().toIso8601String());
  }

  static Future<bool> isTermsPrivacyAccepted() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(_kTermsPrivacyAcceptedVersion) == kTermsPrivacyVersion;
  }

  static Future<void> recordDisclaimerAccepted() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_kAiDisclaimerAcceptedVersion, kAiDisclaimerVersion);
    await prefs.setString(_kAiDisclaimerAcceptedAt, DateTime.now().toIso8601String());
  }

  static Future<bool> isDisclaimerAccepted() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(_kAiDisclaimerAcceptedVersion) == kAiDisclaimerVersion;
  }

  static Future<void> setSensitiveDataOptIn(bool value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_kSensitiveDataOptIn, value);
  }

  static Future<bool> sensitiveDataOptIn() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(_kSensitiveDataOptIn) ?? false;
  }
}
