import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../core/env.dart';
import '../features/help_bot/help_bot.dart';
import '../l10n/app_localizations.dart';
import 'router.dart';
import 'theme.dart';

const _kThemePrefKey = 'app.themeMode';
const _kLocalePrefKey = 'app.locale';

/// Provided synchronously from main() via override after hydration.
final sharedPreferencesProvider = Provider<SharedPreferences>((ref) {
  throw UnimplementedError('sharedPreferencesProvider must be overridden');
});

/// Initial values are written into these providers in main() so the very first
/// frame already reflects the stored preference.
final initialThemeModeProvider = Provider<ThemeMode>((ref) => ThemeMode.system);
final initialLocaleProvider = Provider<Locale?>((ref) => null);

ThemeMode readStoredThemeMode(SharedPreferences prefs) {
  final raw = prefs.getString(_kThemePrefKey);
  if (raw == null) return ThemeMode.system;
  return ThemeMode.values.firstWhere(
    (m) => m.name == raw,
    orElse: () => ThemeMode.system,
  );
}

Locale? readStoredLocale(SharedPreferences prefs) {
  final raw = prefs.getString(_kLocalePrefKey);
  if (raw == null || raw.isEmpty) return null;
  return Locale(raw);
}

class ThemeModeNotifier extends Notifier<ThemeMode> {
  @override
  ThemeMode build() => ref.read(initialThemeModeProvider);

  Future<void> set(ThemeMode mode) async {
    state = mode;
    final prefs = ref.read(sharedPreferencesProvider);
    await prefs.setString(_kThemePrefKey, mode.name);
  }
}

class LocaleNotifier extends Notifier<Locale?> {
  @override
  Locale? build() => ref.read(initialLocaleProvider);

  Future<void> set(Locale? locale) async {
    state = locale;
    final prefs = ref.read(sharedPreferencesProvider);
    if (locale == null) {
      await prefs.remove(_kLocalePrefKey);
    } else {
      await prefs.setString(_kLocalePrefKey, locale.languageCode);
    }
  }
}

final themeModeProvider = NotifierProvider<ThemeModeNotifier, ThemeMode>(
  ThemeModeNotifier.new,
);

final localeProvider = NotifierProvider<LocaleNotifier, Locale?>(
  LocaleNotifier.new,
);

/// Current route path. Updated by a router-delegate listener installed in
/// [_BenefitsDiggerAppState.initState] — going through a Riverpod provider
/// (instead of a ListenableBuilder watching the delegate directly) decouples
/// the listener fire from the widget build phase, which avoids a framework
/// assertion when go_router notifies during initial route resolution.
final currentRouteProvider = StateProvider<String>((ref) => '/');

const supportedLocales = <Locale>[
  Locale('en'),
  Locale('es'),
  Locale('zh'), // Chinese (Simplified)
  Locale('vi'), // Vietnamese
  Locale('ko'), // Korean
  Locale('ru'), // Russian
  Locale('ar'), // Arabic — RTL handled automatically by MaterialApp
];

class BenefitsDiggerApp extends ConsumerStatefulWidget {
  const BenefitsDiggerApp({super.key});

  @override
  ConsumerState<BenefitsDiggerApp> createState() => _BenefitsDiggerAppState();
}

class _BenefitsDiggerAppState extends ConsumerState<BenefitsDiggerApp> {
  late final AppRouterConfig _routerConfig = AppRouterConfig();

  @override
  void initState() {
    super.initState();
    _routerConfig.router.routerDelegate.addListener(_onRouteChanged);
    // Seed the initial value after the first frame so we never write to a
    // provider during the build phase.
    WidgetsBinding.instance.addPostFrameCallback((_) => _onRouteChanged());
  }

  @override
  void dispose() {
    _routerConfig.router.routerDelegate.removeListener(_onRouteChanged);
    super.dispose();
  }

  void _onRouteChanged() {
    if (!mounted) return;
    final path =
        _routerConfig.router.routerDelegate.currentConfiguration.uri.path;
    if (ref.read(currentRouteProvider) == path) return;
    ref.read(currentRouteProvider.notifier).state = path;
  }

  @override
  Widget build(BuildContext context) {
    final themeMode = ref.watch(themeModeProvider);
    final locale = ref.watch(localeProvider);

    final router = _routerConfig.router;
    return MaterialApp.router(
      title: Env.appName,
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      themeMode: themeMode,
      // No animations: Flutter's default theme cross-fade is 200ms; we make
      // theme switches instant. PageTransitionsTheme is overridden in
      // app/theme.dart so platform slide/fade is also disabled — see the
      // `NoTransitionsBuilder` there.
      themeAnimationDuration: Duration.zero,
      themeAnimationCurve: Curves.linear,
      locale: locale,
      supportedLocales: supportedLocales,
      localizationsDelegates: const <LocalizationsDelegate<Object>>[
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      routerConfig: router,
      // Wrap every route with a Stack that overlays the floating help bot.
      // Reading the route path through `currentRouteProvider` (kept in sync
      // by a router-delegate listener) keeps this build path off the
      // delegate's own notify chain and avoids "is not true" assertions
      // when the delegate emits during initial-route resolution.
      builder: (context, child) {
        final path = ref.watch(currentRouteProvider);
        return Stack(
          children: <Widget>[
            if (child != null) child,
            HelpBot(currentRoute: path),
          ],
        );
      },
    );
  }
}
