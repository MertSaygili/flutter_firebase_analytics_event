import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/widgets.dart';

@immutable
final class FirebaseEventNames {
  const FirebaseEventNames._();
  static const String homeScreenTapped = 'home_screen_tapped';
}

class FirebaseEvents {
  static FirebaseAnalytics? _analytics = FirebaseAnalytics.instance;

  FirebaseEvents() {
    _analytics ??= FirebaseAnalytics.instance;

    if (_analytics != null) {
      _analytics!.setAnalyticsCollectionEnabled(true);
    }
  }

  static Future<void> logEvent({
    required String name,
    Map<String, dynamic>? parameters,
  }) async {
    if (_analytics != null) {
      await _analytics!.logEvent(
        name: name,
        parameters: parameters,
      );
    }
  }
}
