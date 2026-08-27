import 'package:firebase_analytics/firebase_analytics.dart';

class AnalyticsService {
  AnalyticsService._();
  static final AnalyticsService instance = AnalyticsService._();

  bool _available = false;
  FirebaseAnalytics? _analytics;

  void configure({required bool firebaseAvailable}) {
    _available = firebaseAvailable;
    _analytics = firebaseAvailable ? FirebaseAnalytics.instance : null;
  }

  FirebaseAnalyticsObserver? get navigatorObserver {
    final analytics = _analytics;
    return analytics == null
        ? null
        : FirebaseAnalyticsObserver(analytics: analytics);
  }

  Future<void> logWishConfirmed() => _log('wish_confirmed');

  Future<void> logJourneyCompleted() => _log('journey_completed');

  Future<void> _log(String name) async {
    if (!_available) return;
    try {
      await _analytics?.logEvent(name: name);
    } catch (_) {
      // Analytics must never interrupt the game.
    }
  }
}
