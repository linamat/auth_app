import 'package:auth_app/presentation/theme/colors/app_color_theme_extension.dart';
import 'package:auth_app/presentation/theme/sizes/app_border_radius.dart';
import 'package:auth_app/presentation/theme/sizes/app_paddings.dart';
import 'package:auth_app/presentation/theme/texts/app_text_theme_extension.dart';
import 'package:flutter/material.dart';

class AppTextFormField extends StatelessWidget {
  const AppTextFormField({
    this.hintText,
    this.controller,
    this.onChanged,
    this.validator,
    this.obscureText = false,
    super.key,
  });

  final String? hintText;
  final TextEditingController? controller;
  final ValueChanged<String>? onChanged;
  final String? Function(String?)? validator;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    final colorTheme = AppColorThemeExtension.of(context);
    final textTheme = AppTextThemeExtension.of(context);

    return TextFormField(
      controller: controller,
      onChanged: onChanged,
      validator: validator,
      obscureText: obscureText,
      style: textTheme.body,
      decoration: InputDecoration(
        hintText: hintText,
        contentPadding: AppPaddings.textFieldContent,
        hintStyle: textTheme.body.copyWith(color: colorTheme.primary.withValues(alpha: 0.5)),
        errorStyle: textTheme.caption.copyWith(color: colorTheme.error,),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(AppBorderRadius.large),
          borderSide: BorderSide(color: colorTheme.primary),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(AppBorderRadius.large),
          borderSide: BorderSide(color: colorTheme.primary),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(AppBorderRadius.large),
          borderSide: BorderSide(color: colorTheme.error),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(AppBorderRadius.large),
          borderSide: BorderSide(color: colorTheme.error),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(AppBorderRadius.large),
          borderSide: BorderSide(
            color: colorTheme.primary.withValues(alpha: 0.5),
          ),
        ),
      ),
    );
  }
}
