import 'package:flutter/material.dart';

import '../theme/extensions/bd_colors.dart';

class AppColors {
  const AppColors._();

  // Light — surface
  static const Color lightBg = Color(0xFFFAF8F4);
  static const Color lightSurface = Color(0xFFFFFFFF);
  static const Color lightSurface2 = Color(0xFFF3EFE7);
  static const Color lightSurface3 = Color(0xFFE8E2D6);

  // Light — border
  static const Color lightBorder = Color(0xFFE2DCCE);
  static const Color lightBorderStrong = Color(0xFFC9C0AC);

  // Light — text
  static const Color lightFg = Color(0xFF14201A);
  static const Color lightFgMuted = Color(0xFF4A5651);
  static const Color lightFgSubtle = Color(0xFF6E7570);
  static const Color lightFgOnPrimary = Color(0xFFF5F2EA);
  static const Color lightFgOnAccent = Color(0xFFFFFFFF);

  // Light — brand
  static const Color lightPrimary = Color(0xFF1B3B2F);
  static const Color lightPrimaryHover = Color(0xFF25503F);
  static const Color lightPrimaryActive = Color(0xFF122A21);
  static const Color lightPrimarySoft = Color(0xFFE3ECE6);

  static const Color lightAccent = Color(0xFFB8632A);
  static const Color lightAccentHover = Color(0xFFA0541F);
  static const Color lightAccentActive = Color(0xFF884618);
  static const Color lightAccentSoft = Color(0xFFF4E4D6);

  // Light — status
  static const Color lightInfo = Color(0xFF2E5C7E);
  static const Color lightInfoSoft = Color(0xFFDCE7EE);
  static const Color lightWarn = Color(0xFF8A6A1F);
  static const Color lightWarnSoft = Color(0xFFF1E8D0);
  static const Color lightCaution = Color(0xFF7A3D2A);
  static const Color lightCautionSoft = Color(0xFFEFDDD3);
  static const Color lightSuccess = Color(0xFF2C5C45);
  static const Color lightSuccessSoft = Color(0xFFDDE8E1);

  static const Color lightFocusRing = Color(0xFFB8632A);

  // Dark — surface
  static const Color darkBg = Color(0xFF0E1411);
  static const Color darkSurface = Color(0xFF161E19);
  static const Color darkSurface2 = Color(0xFF1F2823);
  static const Color darkSurface3 = Color(0xFF283129);

  // Dark — border
  static const Color darkBorder = Color(0xFF2A332C);
  static const Color darkBorderStrong = Color(0xFF3E4A41);

  // Dark — text
  static const Color darkFg = Color(0xFFECE7DA);
  static const Color darkFgMuted = Color(0xFFB8B3A4);
  static const Color darkFgSubtle = Color(0xFF8A8678);
  static const Color darkFgOnPrimary = Color(0xFFF5F2EA);
  static const Color darkFgOnAccent = Color(0xFFFFFFFF);

  // Dark — brand
  static const Color darkPrimary = Color(0xFF6FAA8E);
  static const Color darkPrimaryHover = Color(0xFF84BFA2);
  static const Color darkPrimaryActive = Color(0xFF5C967B);
  static const Color darkPrimarySoft = Color(0xFF1F2D26);

  static const Color darkAccent = Color(0xFFE48750);
  static const Color darkAccentHover = Color(0xFFF19A66);
  static const Color darkAccentActive = Color(0xFFC77140);
  static const Color darkAccentSoft = Color(0xFF2E2018);

  // Dark — status
  static const Color darkInfo = Color(0xFF7FAFD0);
  static const Color darkInfoSoft = Color(0xFF1B2832);
  static const Color darkWarn = Color(0xFFD6B265);
  static const Color darkWarnSoft = Color(0xFF2D2516);
  static const Color darkCaution = Color(0xFFD49679);
  static const Color darkCautionSoft = Color(0xFF2D1F18);
  static const Color darkSuccess = Color(0xFF7FB29A);
  static const Color darkSuccessSoft = Color(0xFF1B2922);

  static const Color darkFocusRing = Color(0xFFE48750);
}

class AppRadius {
  const AppRadius._();

  // --radius: 0.625rem ≈ 10px
  static const double sm = 6;
  static const double md = 10;
  static const double lg = 12;
  static const double xl = 20;
  static const double full = 999;
}

class AppTheme {
  const AppTheme._();

  static ThemeData get light => _build(_lightScheme, Brightness.light);
  static ThemeData get dark => _build(_darkScheme, Brightness.dark);

  static const ColorScheme _lightScheme = ColorScheme(
    brightness: Brightness.light,
    primary: AppColors.lightPrimary,
    onPrimary: AppColors.lightFgOnPrimary,
    primaryContainer: AppColors.lightPrimarySoft,
    onPrimaryContainer: AppColors.lightPrimary,
    secondary: AppColors.lightSurface2,
    onSecondary: AppColors.lightPrimary,
    secondaryContainer: AppColors.lightSurface2,
    onSecondaryContainer: AppColors.lightPrimary,
    tertiary: AppColors.lightAccent,
    onTertiary: AppColors.lightFgOnAccent,
    tertiaryContainer: AppColors.lightAccentSoft,
    onTertiaryContainer: AppColors.lightAccent,
    error: AppColors.lightCaution,
    onError: Color(0xFFFFFFFF),
    errorContainer: AppColors.lightCautionSoft,
    onErrorContainer: AppColors.lightCaution,
    surface: AppColors.lightSurface,
    onSurface: AppColors.lightFg,
    surfaceContainerHighest: AppColors.lightSurface3,
    surfaceContainerHigh: AppColors.lightSurface2,
    surfaceContainer: AppColors.lightSurface,
    surfaceContainerLow: AppColors.lightBg,
    surfaceContainerLowest: AppColors.lightBg,
    onSurfaceVariant: AppColors.lightFgMuted,
    outline: AppColors.lightBorderStrong,
    outlineVariant: AppColors.lightBorder,
    inverseSurface: AppColors.darkSurface,
    onInverseSurface: AppColors.darkFg,
    inversePrimary: AppColors.darkPrimary,
    shadow: Color(0xFF14201A),
    scrim: Color(0xFF14201A),
    surfaceTint: AppColors.lightPrimary,
  );

  static const ColorScheme _darkScheme = ColorScheme(
    brightness: Brightness.dark,
    primary: AppColors.darkPrimary,
    onPrimary: AppColors.darkFgOnPrimary,
    primaryContainer: AppColors.darkPrimarySoft,
    onPrimaryContainer: AppColors.darkPrimary,
    secondary: AppColors.darkSurface2,
    onSecondary: AppColors.darkFg,
    secondaryContainer: AppColors.darkSurface2,
    onSecondaryContainer: AppColors.darkFg,
    tertiary: AppColors.darkAccent,
    onTertiary: AppColors.darkFgOnAccent,
    tertiaryContainer: AppColors.darkAccentSoft,
    onTertiaryContainer: AppColors.darkAccent,
    error: AppColors.darkCaution,
    onError: AppColors.darkBg,
    errorContainer: AppColors.darkCautionSoft,
    onErrorContainer: AppColors.darkCaution,
    surface: AppColors.darkSurface,
    onSurface: AppColors.darkFg,
    surfaceContainerHighest: AppColors.darkSurface3,
    surfaceContainerHigh: AppColors.darkSurface2,
    surfaceContainer: AppColors.darkSurface,
    surfaceContainerLow: AppColors.darkBg,
    surfaceContainerLowest: AppColors.darkBg,
    onSurfaceVariant: AppColors.darkFgMuted,
    outline: AppColors.darkBorderStrong,
    outlineVariant: AppColors.darkBorder,
    inverseSurface: AppColors.lightSurface,
    onInverseSurface: AppColors.lightFg,
    inversePrimary: AppColors.lightPrimary,
    shadow: Color(0xFF000000),
    scrim: Color(0xFF000000),
    surfaceTint: AppColors.darkPrimary,
  );

  static TextTheme _textTheme(Color color) {
    // Inter is bundled in assets/fonts/Inter and declared in pubspec; this
    // avoids the runtime network fetch and the font-swap flash that
    // GoogleFonts.interTextTheme() introduces on first paint.
    final base = ThemeData.light().textTheme.apply(fontFamily: 'Inter');
    return base
        .copyWith(
          // 9 sizes from the Tailwind config — xs..5xl mapped to bodySmall..displayLarge.
          bodySmall: base.bodySmall?.copyWith(fontSize: 12, height: 16 / 12),
          bodyMedium: base.bodyMedium?.copyWith(fontSize: 14, height: 20 / 14),
          bodyLarge: base.bodyLarge?.copyWith(fontSize: 16, height: 26 / 16),
          titleMedium: base.titleMedium?.copyWith(
            fontSize: 18,
            height: 28 / 18,
          ),
          titleLarge: base.titleLarge?.copyWith(
            fontSize: 20,
            height: 29.6 / 20,
          ),
          headlineSmall: base.headlineSmall?.copyWith(
            fontSize: 24,
            height: 32 / 24,
          ),
          headlineMedium: base.headlineMedium?.copyWith(
            fontSize: 30,
            height: 36 / 30,
          ),
          headlineLarge: base.headlineLarge?.copyWith(
            fontSize: 36,
            height: 42 / 36,
          ),
          displayLarge: base.displayLarge?.copyWith(
            fontSize: 48,
            height: 52 / 48,
          ),
        )
        .apply(bodyColor: color, displayColor: color);
  }

  static ThemeData _build(ColorScheme scheme, Brightness brightness) {
    final isDark = brightness == Brightness.dark;
    final fg = isDark ? AppColors.darkFg : AppColors.lightFg;
    final bg = isDark ? AppColors.darkBg : AppColors.lightBg;
    final border = isDark ? AppColors.darkBorder : AppColors.lightBorder;
    final ring = isDark ? AppColors.darkFocusRing : AppColors.lightFocusRing;

    final textTheme = _textTheme(fg);

    return ThemeData(
      useMaterial3: true,
      // Disable platform-default page transitions on all targets so route
      // pushes paint instantly. This complements GoRouter's `NoTransitionPage`
      // wrapper in app/router.dart and `themeAnimationDuration: Duration.zero`
      // in app/app.dart — combined, there is no remaining 16ms+ Material
      // motion in the navigation path.
      pageTransitionsTheme: const PageTransitionsTheme(
        builders: <TargetPlatform, PageTransitionsBuilder>{
          TargetPlatform.android: _NoTransitionsBuilder(),
          TargetPlatform.iOS: _NoTransitionsBuilder(),
          TargetPlatform.linux: _NoTransitionsBuilder(),
          TargetPlatform.macOS: _NoTransitionsBuilder(),
          TargetPlatform.windows: _NoTransitionsBuilder(),
          TargetPlatform.fuchsia: _NoTransitionsBuilder(),
        },
      ),
      brightness: brightness,
      colorScheme: scheme,
      scaffoldBackgroundColor: bg,
      canvasColor: bg,
      dividerColor: border,
      focusColor: ring.withValues(alpha: 0.25),
      textTheme: textTheme,
      cardTheme: CardThemeData(
        color: scheme.surface,
        surfaceTintColor: Colors.transparent,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppRadius.lg),
          side: BorderSide(color: border),
        ),
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: scheme.surface,
        foregroundColor: fg,
        elevation: 0,
        scrolledUnderElevation: 0,
        surfaceTintColor: Colors.transparent,
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: scheme.surface,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppRadius.sm),
          borderSide: BorderSide(
            color: isDark
                ? AppColors.darkBorderStrong
                : AppColors.lightBorderStrong,
            width: 1.5,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppRadius.sm),
          borderSide: BorderSide(color: scheme.primary, width: 2),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          minimumSize: const Size.fromHeight(44),
          backgroundColor: scheme.primary,
          foregroundColor: scheme.onPrimary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppRadius.md),
          ),
        ),
      ),
      filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
          minimumSize: const Size.fromHeight(44),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppRadius.md),
          ),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          minimumSize: const Size.fromHeight(44),
          foregroundColor: fg,
          side: BorderSide(
            color: isDark
                ? AppColors.darkBorderStrong
                : AppColors.lightBorderStrong,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppRadius.md),
          ),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(foregroundColor: scheme.primary),
      ),
      chipTheme: ChipThemeData(
        backgroundColor: scheme.surface,
        side: BorderSide(
          color: isDark
              ? AppColors.darkBorderStrong
              : AppColors.lightBorderStrong,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppRadius.full),
        ),
      ),
      dividerTheme: DividerThemeData(color: border, space: 1, thickness: 1),
      visualDensity: VisualDensity.adaptivePlatformDensity,
      extensions: <ThemeExtension<dynamic>>[
        isDark ? BdColors.dark() : BdColors.light(),
      ],
    );
  }
}

/// Page-transition builder that paints the child immediately with no animation.
/// Plugged into [ThemeData.pageTransitionsTheme] in [AppTheme._build].
class _NoTransitionsBuilder extends PageTransitionsBuilder {
  const _NoTransitionsBuilder();

  @override
  Widget buildTransitions<T>(
    PageRoute<T> route,
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) => child;
}
