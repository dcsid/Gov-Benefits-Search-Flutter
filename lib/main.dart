import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'app/app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  FlutterError.onError = (details) => FlutterError.presentError(details);
  PlatformDispatcher.instance.onError = (error, stack) {
    debugPrint('$error\n$stack');
    return true;
  };

  final prefs = await SharedPreferences.getInstance();

  runApp(
    ProviderScope(
      overrides: <Override>[
        sharedPreferencesProvider.overrideWithValue(prefs),
        initialThemeModeProvider.overrideWithValue(readStoredThemeMode(prefs)),
        initialLocaleProvider.overrideWithValue(readStoredLocale(prefs)),
      ],
      child: const BenefitsDiggerApp(),
    ),
  );
}
