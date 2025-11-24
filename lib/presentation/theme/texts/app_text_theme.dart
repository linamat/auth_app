import 'package:auth_app/presentation/theme/colors/app_color_theme_extension.dart';
import 'package:auth_app/presentation/theme/texts/app_text_theme_extension.dart';
import 'package:flutter/material.dart';

const _appFontFamily = 'TT Norms Pro';

class AppTextTheme {
  static AppTextThemeExtension basedColor(AppColorThemeExtension colorTheme) {
    return AppTextThemeExtension(
      body: TextStyle(
        height: 1.4,
        fontSize: 16.0,
        fontWeight: FontWeight.normal,
        color: colorTheme.foregroundPrimary,
        fontFamily: _appFontFamily,
      ),
      button: TextStyle(
        height: 1.4,
        fontSize: 14.0,
        fontWeight: FontWeight.w500,
        color: colorTheme.foregroundPrimary,
        fontFamily: _appFontFamily,
      ),
      caption: TextStyle(
        height: 1.4,
        fontSize: 12.0,
        fontWeight: FontWeight.normal,
        color: colorTheme.foregroundPrimary,
        fontFamily: _appFontFamily,
      ),
    );
  }
}
