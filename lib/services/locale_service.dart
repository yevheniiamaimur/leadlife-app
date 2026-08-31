import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocaleService extends ValueNotifier<Locale?> {
  LocaleService._() : super(null);

  static final LocaleService instance = LocaleService._();
  static const _key = 'app_locale';
  static const _enabledCodes = {'en', 'es', 'de', 'uk', 'ru'};

  String get effectiveLanguageCode {
    final code =
        value?.languageCode ?? PlatformDispatcher.instance.locale.languageCode;
    return _enabledCodes.contains(code) ? code : 'en';
  }

  Future<void> load() async {
    final prefs = await SharedPreferences.getInstance();
    final code = prefs.getString(_key);
    value = code == null || code.isEmpty ? null : Locale(code);
  }

  Future<void> setLocale(String? code) async {
    final prefs = await SharedPreferences.getInstance();
    if (code == null) {
      await prefs.remove(_key);
      value = null;
    } else {
      await prefs.setString(_key, code);
      value = Locale(code);
    }
  }
}
