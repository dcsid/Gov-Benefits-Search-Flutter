import 'package:flutter/material.dart';

import '../../app/theme.dart';

/// Tokens that don't have a clean home in [ColorScheme]: success/warning/info,
/// muted surfaces, focus rings, and pip colors used in landing illustrations.
@immutable
class BdColors extends ThemeExtension<BdColors> {
  const BdColors({
    required this.success,
    required this.onSuccess,
    required this.successSoft,
    required this.warning,
    required this.onWarning,
    required this.warningSoft,
    required this.info,
    required this.onInfo,
    required this.infoSoft,
    required this.muted,
    required this.onMuted,
    required this.accent,
    required this.onAccent,
    required this.accentSoft,
    required this.focusRing,
    required this.border,
    required this.borderStrong,
    required this.pipStrong,
    required this.pipPartial,
    required this.pipCheck,
  });

  factory BdColors.light() => const BdColors(
        success: AppColors.lightSuccess,
        onSuccess: Color(0xFFFFFFFF),
        successSoft: AppColors.lightSuccessSoft,
        warning: AppColors.lightWarn,
        onWarning: Color(0xFFFFFFFF),
        warningSoft: AppColors.lightWarnSoft,
        info: AppColors.lightInfo,
        onInfo: Color(0xFFFFFFFF),
        infoSoft: AppColors.lightInfoSoft,
        muted: AppColors.lightSurface2,
        onMuted: AppColors.lightFgMuted,
        accent: AppColors.lightAccent,
        onAccent: AppColors.lightFgOnAccent,
        accentSoft: AppColors.lightAccentSoft,
        focusRing: AppColors.lightFocusRing,
        border: AppColors.lightBorder,
        borderStrong: AppColors.lightBorderStrong,
        pipStrong: AppColors.lightSuccess,
        pipPartial: AppColors.lightWarn,
        pipCheck: AppColors.lightInfo,
      );

  factory BdColors.dark() => const BdColors(
        success: AppColors.darkSuccess,
        onSuccess: AppColors.darkBg,
        successSoft: AppColors.darkSuccessSoft,
        warning: AppColors.darkWarn,
        onWarning: AppColors.darkBg,
        warningSoft: AppColors.darkWarnSoft,
        info: AppColors.darkInfo,
        onInfo: AppColors.darkBg,
        infoSoft: AppColors.darkInfoSoft,
        muted: AppColors.darkSurface2,
        onMuted: AppColors.darkFgMuted,
        accent: AppColors.darkAccent,
        onAccent: AppColors.darkFgOnAccent,
        accentSoft: AppColors.darkAccentSoft,
        focusRing: AppColors.darkFocusRing,
        border: AppColors.darkBorder,
        borderStrong: AppColors.darkBorderStrong,
        pipStrong: AppColors.darkSuccess,
        pipPartial: AppColors.darkWarn,
        pipCheck: AppColors.darkInfo,
      );

  final Color success;
  final Color onSuccess;
  final Color successSoft;
  final Color warning;
  final Color onWarning;
  final Color warningSoft;
  final Color info;
  final Color onInfo;
  final Color infoSoft;
  final Color muted;
  final Color onMuted;
  final Color accent;
  final Color onAccent;
  final Color accentSoft;
  final Color focusRing;
  final Color border;
  final Color borderStrong;
  final Color pipStrong;
  final Color pipPartial;
  final Color pipCheck;

  static BdColors of(BuildContext context) {
    final ext = Theme.of(context).extension<BdColors>();
    return ext ?? BdColors.light();
  }

  @override
  BdColors copyWith({
    Color? success,
    Color? onSuccess,
    Color? successSoft,
    Color? warning,
    Color? onWarning,
    Color? warningSoft,
    Color? info,
    Color? onInfo,
    Color? infoSoft,
    Color? muted,
    Color? onMuted,
    Color? accent,
    Color? onAccent,
    Color? accentSoft,
    Color? focusRing,
    Color? border,
    Color? borderStrong,
    Color? pipStrong,
    Color? pipPartial,
    Color? pipCheck,
  }) {
    return BdColors(
      success: success ?? this.success,
      onSuccess: onSuccess ?? this.onSuccess,
      successSoft: successSoft ?? this.successSoft,
      warning: warning ?? this.warning,
      onWarning: onWarning ?? this.onWarning,
      warningSoft: warningSoft ?? this.warningSoft,
      info: info ?? this.info,
      onInfo: onInfo ?? this.onInfo,
      infoSoft: infoSoft ?? this.infoSoft,
      muted: muted ?? this.muted,
      onMuted: onMuted ?? this.onMuted,
      accent: accent ?? this.accent,
      onAccent: onAccent ?? this.onAccent,
      accentSoft: accentSoft ?? this.accentSoft,
      focusRing: focusRing ?? this.focusRing,
      border: border ?? this.border,
      borderStrong: borderStrong ?? this.borderStrong,
      pipStrong: pipStrong ?? this.pipStrong,
      pipPartial: pipPartial ?? this.pipPartial,
      pipCheck: pipCheck ?? this.pipCheck,
    );
  }

  @override
  BdColors lerp(ThemeExtension<BdColors>? other, double t) {
    if (other is! BdColors) return this;
    Color l(Color a, Color b) => Color.lerp(a, b, t) ?? a;
    return BdColors(
      success: l(success, other.success),
      onSuccess: l(onSuccess, other.onSuccess),
      successSoft: l(successSoft, other.successSoft),
      warning: l(warning, other.warning),
      onWarning: l(onWarning, other.onWarning),
      warningSoft: l(warningSoft, other.warningSoft),
      info: l(info, other.info),
      onInfo: l(onInfo, other.onInfo),
      infoSoft: l(infoSoft, other.infoSoft),
      muted: l(muted, other.muted),
      onMuted: l(onMuted, other.onMuted),
      accent: l(accent, other.accent),
      onAccent: l(onAccent, other.onAccent),
      accentSoft: l(accentSoft, other.accentSoft),
      focusRing: l(focusRing, other.focusRing),
      border: l(border, other.border),
      borderStrong: l(borderStrong, other.borderStrong),
      pipStrong: l(pipStrong, other.pipStrong),
      pipPartial: l(pipPartial, other.pipPartial),
      pipCheck: l(pipCheck, other.pipCheck),
    );
  }
}
