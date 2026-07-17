import 'package:firebase_analytics/firebase_analytics.dart';

class AnalyticsService {
  AnalyticsService._();
  static final AnalyticsService instance = AnalyticsService._();

  final FirebaseAnalytics _analytics = FirebaseAnalytics.instance;

  FirebaseAnalyticsObserver get navigatorObserver =>
      FirebaseAnalyticsObserver(analytics: _analytics);

  Future<void> logWishConfirmed() => _analytics.logEvent(name: 'wish_confirmed');

  Future<void> logJourneyCompleted() => _analytics.logEvent(name: 'journey_completed');
}
