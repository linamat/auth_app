import 'package:auth_app/presentation/theme/colors/app_color_theme_extension.dart';
import 'package:auth_app/presentation/theme/colors/app_colors_palette.dart';
import 'package:flutter/material.dart';

class AppColorTheme {
  static AppColorThemeExtension light() {
    return AppColorThemeExtension(
      brightness: Brightness.light,
      primary: AppColorsPalette.lightBlue700,
      secondary: AppColorsPalette.lightBlue200,
      backgroundPrimary: AppColorsPalette.lightGrey,
      foregroundPrimary: AppColorsPalette.midnightExpress,
      error: AppColorsPalette.red,
    );
  }

  static AppColorThemeExtension dark() {
    return AppColorThemeExtension(
      brightness: Brightness.dark,
      primary: AppColorsPalette.darkBlue700,
      secondary: AppColorsPalette.darkBlue200,
      backgroundPrimary: AppColorsPalette.nero,
      foregroundPrimary: AppColorsPalette.white,
      error: AppColorsPalette.red,
    );
  }
}
