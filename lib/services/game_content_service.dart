import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../l10n/app_localizations.dart';
import '../models/field.dart';
import 'ai_service.dart';
import 'safe_write.dart';

/// Resolves the effective 32-field content for the current game: one AI
/// call (see [AiService.generateGame]) personalizes every field's
/// intro/question up front, and the game then reads from here for the rest
/// of the playthrough — no further AI calls. Falls back to the static
/// localized `kFields` content transparently whenever generation hasn't
/// completed, failed, or was never started — the game must always be
/// playable without AI.
class GameContentService {
  GameContentService._();

  static const _kFieldsJson = 'generatedFieldContent';
  static const _kWishKey = 'generatedFieldContentWish';
  static const _kLanguageKey = 'generatedFieldContentLanguage';

  static Map<int, GeneratedFieldContent>? _cached;
  static Future<void>? _inFlight;

  /// Kicks off game generation for [wish] in the background. Never throws —
  /// on failure the static fallback content is used instead. Call this
  /// once, right when the wish is confirmed; other screens should await
  /// [ensureReady] before they actually need [fields].
  static Future<void> generate({
    required String wish,
    required String languageCode,
    String? focus,
  }) {
    final future = _generate(
      wish: wish,
      languageCode: languageCode,
      focus: focus,
    );
    _inFlight = future;
    return future;
  }

  static Future<void> _generate({
    required String wish,
    required String languageCode,
    String? focus,
  }) async {
    try {
      final content = await AiService.generateGame(
        wish: wish,
        languageCode: languageCode,
        focus: focus,
      );
      _cached = {for (final c in content) c.n: c};
      await _persist(wish, languageCode);
    } catch (_) {
      // Network error, timeout, malformed response — any failure here
      // just means [fields] falls back to the static content.
      _cached = null;
    }
  }

  /// Waits for an in-flight [generate] call to finish, up to [timeout].
  /// Never throws — a timeout (or a failure already handled inside
  /// [_generate]) just means [fields] will return the static fallback.
  static Future<void> ensureReady({
    Duration timeout = const Duration(seconds: 12),
  }) async {
    final inFlight = _inFlight;
    if (inFlight == null) return;
    try {
      await inFlight.timeout(timeout);
    } catch (_) {}
  }

  /// The effective field list for the current game. Screens should read
  /// from here instead of `kFields` directly.
  static List<GameField> fields(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final cached = _cached;
    return kFields.map((raw) {
      final localized = localizeField(l10n, raw);
      final generated = cached?[raw.n];
      if (generated == null) return localized;
      return GameField(
        n: localized.n,
        name: localized.name,
        subtitle: localized.subtitle,
        superpower: localized.superpower,
        color: localized.color,
        intro: generated.intro,
        task: _mergeTask(generated.question, raw.task),
        arrivalNote: generated.arrivalNote,
      );
    }).toList();
  }

  /// AI only personalizes the field's *question*; any fill-in-the-blank
  /// template sentences from the original static task are preserved as-is
  /// (they're tied to FieldTaskScreen's blank-parsing/answer-saving logic).
  static String _mergeTask(String aiQuestion, String originalTask) {
    final blankParas = originalTask
        .split('\n\n')
        .where((p) => p.contains('__________'))
        .toList();
    if (blankParas.isEmpty) return aiQuestion;
    return [aiQuestion, ...blankParas].join('\n\n');
  }

  static Future<void> _persist(String wish, String languageCode) =>
      safeWrite('GameContentService.persist', () async {
        final cached = _cached;
        if (cached == null) return;
        final prefs = await SharedPreferences.getInstance();
        await Future.wait([
          prefs.setString(_kWishKey, wish),
          prefs.setString(_kLanguageKey, languageCode),
          prefs.setString(
            _kFieldsJson,
            jsonEncode(cached.values.map((c) => c.toJson()).toList()),
          ),
        ]);
      });

  /// Restores previously-generated content for [wish] from disk, e.g. on
  /// app relaunch mid-game. No-op (fallback stays engaged) if nothing was
  /// persisted, or it was generated for a different wish.
  static Future<void> restore(
    String wish, {
    required String languageCode,
  }) async {
    final prefs = await SharedPreferences.getInstance();
    final savedWish = prefs.getString(_kWishKey);
    final savedLanguage = prefs.getString(_kLanguageKey);
    final fieldsJson = prefs.getString(_kFieldsJson);
    if (savedWish != wish ||
        savedLanguage != languageCode ||
        fieldsJson == null) {
      return;
    }
    try {
      final decoded = jsonDecode(fieldsJson) as List<dynamic>;
      final content = decoded
          .map(
            (f) => GeneratedFieldContent.fromJson(
              Map<String, dynamic>.from(f as Map),
            ),
          )
          .toList();
      _cached = {for (final c in content) c.n: c};
    } catch (_) {
      _cached = null;
    }
  }

  static Future<void> clear() =>
      safeWrite('GameContentService.clear', () async {
        _cached = null;
        _inFlight = null;
        final prefs = await SharedPreferences.getInstance();
        await Future.wait([
          prefs.remove(_kWishKey),
          prefs.remove(_kLanguageKey),
          prefs.remove(_kFieldsJson),
        ]);
      });
}
