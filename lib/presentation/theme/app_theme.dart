import 'package:auth_app/presentation/theme/colors/app_color_theme.dart';
import 'package:auth_app/presentation/theme/colors/app_colors_palette.dart';
import 'package:auth_app/presentation/theme/texts/app_text_theme.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData getTheme({required ThemeMode mode}) {
    final colorTheme = mode == ThemeMode.light ? AppColorTheme.light() : AppColorTheme.dark();
    final textTheme = AppTextTheme.basedColor(colorTheme);

    return ThemeData(
      useMaterial3: true,
      primaryColor: colorTheme.primary,
      scaffoldBackgroundColor: colorTheme.backgroundPrimary,
      colorScheme: ColorScheme.fromSeed(
        seedColor: colorTheme.foregroundPrimary,
        surface: colorTheme.backgroundPrimary,
        primary: colorTheme.primary,
        onPrimary: AppColorsPalette.white,
        onSurface: colorTheme.foregroundPrimary,
      ),
      extensions: <ThemeExtension<dynamic>>[colorTheme, textTheme],
    );
  }
}
