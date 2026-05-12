import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:benefits_digger/app/theme.dart';

/// Wraps a widget in MaterialApp + theme + ProviderScope for tests.
/// Supplies a Scaffold so widgets that need overlays/messengers render.
Widget bdHarness(
  Widget child, {
  ThemeMode mode = ThemeMode.light,
  Size size = const Size(1200, 900),
}) {
  return ProviderScope(
    child: MaterialApp(
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      themeMode: mode,
      home: MediaQuery(
        data: MediaQueryData(size: size),
        child: Scaffold(
          body: Padding(padding: const EdgeInsets.all(16), child: child),
        ),
      ),
    ),
  );
}
