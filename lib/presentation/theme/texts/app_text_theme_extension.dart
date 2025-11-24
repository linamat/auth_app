import 'package:flutter/material.dart';

@immutable
class AppTextThemeExtension extends ThemeExtension<AppTextThemeExtension> {
  const AppTextThemeExtension({required this.button, required this.body, required this.caption});

  final TextStyle button;
  final TextStyle body;
  final TextStyle caption;

  @override
  int get hashCode => Object.hash(body, button, caption);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AppTextThemeExtension &&
          runtimeType == other.runtimeType &&
          body == other.body &&
          button == other.button;

  @override
  ThemeExtension<AppTextThemeExtension> copyWith({TextStyle? body, TextStyle? button, TextStyle? caption}) {
    return AppTextThemeExtension(
      body: body ?? this.body,
      button: button ?? this.button,
      caption: caption ?? this.caption,
    );
  }

  @override
  ThemeExtension<AppTextThemeExtension> lerp(covariant ThemeExtension<AppTextThemeExtension>? other, double t) {
    if (other is! AppTextThemeExtension) return this;

    return AppTextThemeExtension(
      body: TextStyle.lerp(body, other.body, t) ?? const TextStyle(),
      button: TextStyle.lerp(button, other.button, t) ?? const TextStyle(),
      caption: TextStyle.lerp(caption, other.caption, t) ?? const TextStyle(),
    );
  }

  static AppTextThemeExtension of(BuildContext context) {
    return Theme.of(context).extension<AppTextThemeExtension>() ??
        AppTextThemeExtension(body: const TextStyle(), button: const TextStyle(), caption: const TextStyle());
  }
}
