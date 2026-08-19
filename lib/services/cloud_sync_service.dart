import 'dart:async';
import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'app_database.dart';

class CloudSyncService {
  CloudSyncService._();
  static final CloudSyncService instance = CloudSyncService._();

  Timer? _pendingUpload;
  bool _busy = false;

  DocumentReference<Map<String, dynamic>>? get _document {
    try {
      final user = FirebaseAuth.instance.currentUser;
      if (user == null || user.isAnonymous) return null;
      return FirebaseFirestore.instance.collection('users').doc(user.uid);
    } catch (_) {
      return null;
    }
  }

  void notifyLocalChange() {
    if (_document == null) return;
    _pendingUpload?.cancel();
    _pendingUpload = Timer(
      const Duration(milliseconds: 700),
      () => upload().ignore(),
    );
  }

  Future<void> upload() async {
    final document = _document;
    if (document == null || _busy) return;
    _busy = true;
    try {
      await document.set({
        ...await _localSnapshot(),
        'updatedAt': FieldValue.serverTimestamp(),
        'schemaVersion': 1,
      });
    } finally {
      _busy = false;
    }
  }

  Future<void> restoreOrUpload() async {
    try {
      final document = _document;
      if (document == null) return;
      final snapshot = await document.get();
      if (!snapshot.exists || snapshot.data() == null) {
        await upload();
        return;
      }
      await _restore(snapshot.data()!);
    } catch (error, stack) {
      debugPrint('Cloud restore failed: $error\n$stack');
    }
  }

  Future<Map<String, dynamic>> _localSnapshot() async {
    final prefs = await SharedPreferences.getInstance();
    final db = await AppDatabase.instance.database;
    return {
      'profile': {
        'name': prefs.getString('profileName'),
        'birthday': prefs.getString('profileBirthday'),
        'email': prefs.getString('profileEmail'),
        'focus': prefs.getString('profileFocus'),
      },
      'progress': {
        'wish': prefs.getString('wish'),
        'currentField': prefs.getInt('currentField'),
        'completedFields': _decode(prefs.getString('completedFields')),
        'answers': _decode(prefs.getString('answers')),
      },
      'diary': await db.query('diary_entries', orderBy: 'date ASC, id ASC'),
      'history': await db.query('game_history', orderBy: 'id ASC'),
    };
  }

  dynamic _decode(String? value) {
    if (value == null) return null;
    try {
      return jsonDecode(value);
    } catch (_) {
      return null;
    }
  }

  Future<void> _restore(Map<String, dynamic> data) async {
    _busy = true;
    try {
      final prefs = await SharedPreferences.getInstance();
      final profile = Map<String, dynamic>.from(data['profile'] as Map? ?? {});
      final progress = Map<String, dynamic>.from(
        data['progress'] as Map? ?? {},
      );
      await _setOrRemove(prefs, 'profileName', profile['name']);
      await _setOrRemove(prefs, 'profileBirthday', profile['birthday']);
      await _setOrRemove(prefs, 'profileEmail', profile['email']);
      await _setOrRemove(prefs, 'profileFocus', profile['focus']);
      await _setOrRemove(prefs, 'wish', progress['wish']);
      final currentField = progress['currentField'];
      if (currentField is int) {
        await prefs.setInt('currentField', currentField);
      } else {
        await prefs.remove('currentField');
      }
      await _setJsonOrRemove(
        prefs,
        'completedFields',
        progress['completedFields'],
      );
      await _setJsonOrRemove(prefs, 'answers', progress['answers']);

      final db = await AppDatabase.instance.database;
      await db.transaction((txn) async {
        await txn.delete('diary_entries');
        await txn.delete('game_history');
        for (final raw in (data['diary'] as List? ?? const [])) {
          final row = Map<String, dynamic>.from(raw as Map)..remove('id');
          await txn.insert('diary_entries', row);
        }
        for (final raw in (data['history'] as List? ?? const [])) {
          final row = Map<String, dynamic>.from(raw as Map)..remove('id');
          await txn.insert('game_history', row);
        }
      });
    } finally {
      _busy = false;
    }
  }

  Future<void> clearLocalData() async {
    _pendingUpload?.cancel();
    final prefs = await SharedPreferences.getInstance();
    const keys = [
      'profileName',
      'profileBirthday',
      'profileEmail',
      'profileFocus',
      'wish',
      'currentField',
      'completedFields',
      'answers',
      'generatedFieldContent',
      'generatedFieldContentWish',
      'onboardingDone',
    ];
    for (final key in keys) {
      await prefs.remove(key);
    }
    final db = await AppDatabase.instance.database;
    await db.transaction((txn) async {
      await txn.delete('diary_entries');
      await txn.delete('game_history');
    });
  }

  Future<void> _setOrRemove(
    SharedPreferences prefs,
    String key,
    dynamic value,
  ) async {
    if (value is String && value.isNotEmpty) {
      await prefs.setString(key, value);
    } else {
      await prefs.remove(key);
    }
  }

  Future<void> _setJsonOrRemove(
    SharedPreferences prefs,
    String key,
    dynamic value,
  ) async {
    if (value != null) {
      await prefs.setString(key, jsonEncode(value));
    } else {
      await prefs.remove(key);
    }
  }
}
