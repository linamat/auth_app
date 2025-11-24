import 'package:auth_app/presentation/theme/colors/app_color_theme.dart';
import 'package:flutter/material.dart';

const _halfT = 0.5;

@immutable
class AppColorThemeExtension extends ThemeExtension<AppColorThemeExtension> {
  const AppColorThemeExtension({
    required this.brightness,
    required this.primary,
    required this.secondary,
    required this.backgroundPrimary,
    required this.foregroundPrimary,
    required this.error,
  });

  final Brightness brightness;

  final Color primary;
  final Color secondary;
  final Color backgroundPrimary;
  final Color foregroundPrimary;
  final Color error;
  @override
  int get hashCode =>
      Object.hash(primary, secondary, backgroundPrimary, foregroundPrimary, error);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AppColorThemeExtension &&
          runtimeType == other.runtimeType &&
          primary == other.primary &&
          secondary == other.secondary &&
          backgroundPrimary == other.backgroundPrimary &&
          foregroundPrimary == other.foregroundPrimary &&
          error == other.error;

  @override
  AppColorThemeExtension copyWith({
    Color? primary,
    Color? secondary,
    Color? error,
    Color? backgroundPrimary,
    Color? foregroundPrimary,
  }) {
    return AppColorThemeExtension(
      brightness: brightness,
      primary: primary ?? this.primary,
      secondary: secondary ?? this.secondary,
      backgroundPrimary: backgroundPrimary ?? this.backgroundPrimary,
      foregroundPrimary: foregroundPrimary ?? this.foregroundPrimary,
      error: error ?? this.error,
    );
  }

  @override
  ThemeExtension<AppColorThemeExtension> lerp(
    covariant ThemeExtension<AppColorThemeExtension>? other,
    double t,
  ) {
    if (other is! AppColorThemeExtension) return this;

    return AppColorThemeExtension(
      brightness: t < _halfT ? brightness : other.brightness,
      primary: Color.lerp(primary, other.primary, t)!,
      secondary: Color.lerp(secondary, other.secondary, t)!,
      backgroundPrimary: Color.lerp(
        backgroundPrimary,
        other.backgroundPrimary,
        t,
      )!,
      foregroundPrimary: Color.lerp(
        foregroundPrimary,
        other.foregroundPrimary,
        t,
      )!,
      error: Color.lerp(error, other.error, t)!,
    );
  }

  static AppColorThemeExtension of(BuildContext context) {
    if (Theme.of(context).extension<AppColorThemeExtension>() == null) {
      return AppColorTheme.dark();
    }

    return Theme.of(context).extension<AppColorThemeExtension>()!;
  }
}
