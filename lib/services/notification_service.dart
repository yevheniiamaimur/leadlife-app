import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_timezone/flutter_timezone.dart';
import 'package:timezone/data/latest.dart' as tz_data;
import 'package:timezone/timezone.dart' as tz;
import '../l10n/app_localizations.dart';
import 'locale_service.dart';

// leadlife sends two kinds of on-device notification: a gentle daily nudge
// to set today's intention, and a short "comeback" chain nudging a player
// back to a journey they left mid-way. No backend involved — both are
// purely scheduled on-device.
class NotificationService {
  NotificationService._();
  static final NotificationService instance = NotificationService._();

  // Bottom-nav index of the Diary tab in RulesScreen — where the daily
  // reminder should land the user.
  static const diaryTabIndex = 2;
  static const _dailyReminderId = 1;

  // 30 min, 1.5h, 21h, 47h after the player backgrounds the app with an
  // unfinished journey — tapping any of these just reopens the app, which
  // already resumes straight into the in-progress journey on its own (see
  // main.dart's resumeProgress handling), so no special tap-routing is
  // needed here the way the daily reminder needs.
  static const _comebackReminderIds = [10, 11, 12, 13];
  static const _comebackDelays = [
    Duration(minutes: 30),
    Duration(hours: 1, minutes: 30),
    Duration(hours: 21),
    Duration(hours: 47),
  ];

  final _plugin = FlutterLocalNotificationsPlugin();
  bool _initialized = false;

  // Set when a notification is tapped while the app is already running.
  // RulesScreen listens and consumes it (resets to null) once handled.
  final ValueNotifier<int?> pendingTabIndex = ValueNotifier<int?>(null);

  Future<void> _ensureInitialized() async {
    if (_initialized) return;
    tz_data.initializeTimeZones();
    try {
      tz.setLocalLocation(tz.getLocation(await FlutterTimezone.getLocalTimezone()));
    } catch (_) {
      // Fall back to the default (UTC) location if the platform's
      // timezone name isn't one the tz database recognizes.
    }

    await _plugin.initialize(
      const InitializationSettings(
        android: AndroidInitializationSettings('@mipmap/ic_launcher'),
        // Permission is requested explicitly during onboarding via
        // permission_handler, so this shouldn't prompt again.
        iOS: DarwinInitializationSettings(
          requestAlertPermission: false,
          requestBadgePermission: false,
          requestSoundPermission: false,
        ),
      ),
      onDidReceiveNotificationResponse: _handleTap,
    );
    _initialized = true;
  }

  void _handleTap(NotificationResponse response) {
    if (response.id == _dailyReminderId) {
      pendingTabIndex.value = diaryTabIndex;
    }
  }

  // Call once at app startup: reports which tab to open on if the app
  // was launched (cold start) by tapping the reminder, so the caller
  // can pass it straight into RulesScreen's initial tab.
  Future<int?> consumeLaunchTabIndex() async {
    await _ensureInitialized();
    final launch = await _plugin.getNotificationAppLaunchDetails();
    final tappedId = launch?.notificationResponse?.id;
    if (launch?.didNotificationLaunchApp == true && tappedId == _dailyReminderId) {
      return diaryTabIndex;
    }
    return null;
  }

  Future<void> scheduleDailyReminder() async {
    await _ensureInitialized();
    await _plugin.zonedSchedule(
      _dailyReminderId,
      "Time to set today's intention",
      'Take a moment for yourself — write what you want today to feel like.',
      _next9am(),
      const NotificationDetails(
        android: AndroidNotificationDetails(
          'daily_intention',
          'Daily intention reminder',
          channelDescription: 'A gentle daily nudge to set your intention.',
          importance: Importance.low,
          priority: Priority.low,
        ),
        iOS: DarwinNotificationDetails(),
      ),
      androidScheduleMode: AndroidScheduleMode.inexactAllowWhileIdle,
      matchDateTimeComponents: DateTimeComponents.time,
      uiLocalNotificationDateInterpretation: UILocalNotificationDateInterpretation.absoluteTime,
    );
  }

  Future<void> cancelDailyReminder() async {
    await _ensureInitialized();
    await _plugin.cancel(_dailyReminderId);
  }

  /// Schedules the 30min/1.5h/21h/47h comeback chain, counted from now.
  /// Call this when the player backgrounds the app with an unfinished
  /// journey. Cancels any previously-scheduled chain first, so leaving and
  /// returning repeatedly doesn't stack up duplicate notifications.
  Future<void> scheduleComebackReminders() async {
    await _ensureInitialized();
    await cancelComebackReminders();
    final l10n = lookupAppLocalizations(Locale(LocaleService.instance.effectiveLanguageCode));
    final now = tz.TZDateTime.now(tz.local);
    for (var i = 0; i < _comebackReminderIds.length; i++) {
      await _plugin.zonedSchedule(
        _comebackReminderIds[i],
        l10n.comebackReminderTitle,
        l10n.comebackReminderBody,
        now.add(_comebackDelays[i]),
        const NotificationDetails(
          android: AndroidNotificationDetails(
            'comeback_reminder',
            'Unfinished journey reminder',
            channelDescription: 'A gentle nudge back to a journey you left mid-way.',
            importance: Importance.low,
            priority: Priority.low,
          ),
          iOS: DarwinNotificationDetails(),
        ),
        androidScheduleMode: AndroidScheduleMode.inexactAllowWhileIdle,
        uiLocalNotificationDateInterpretation: UILocalNotificationDateInterpretation.absoluteTime,
      );
    }
  }

  /// Cancels any pending comeback reminders — call this when the player
  /// returns to the app or finishes/abandons the journey, so they aren't
  /// nudged back to something already resolved.
  Future<void> cancelComebackReminders() async {
    await _ensureInitialized();
    for (final id in _comebackReminderIds) {
      await _plugin.cancel(id);
    }
  }

  tz.TZDateTime _next9am() {
    final now = tz.TZDateTime.now(tz.local);
    var scheduled = tz.TZDateTime(tz.local, now.year, now.month, now.day, 9);
    if (scheduled.isBefore(now)) scheduled = scheduled.add(const Duration(days: 1));
    return scheduled;
  }
}
