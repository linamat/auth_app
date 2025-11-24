import 'package:auth_app/presentation/auth/enums/auth_tab_type.dart';
import 'package:auth_app/presentation/theme/colors/app_color_theme_extension.dart';
import 'package:auth_app/presentation/theme/colors/app_colors_palette.dart';
import 'package:auth_app/presentation/theme/sizes/app_border_radius.dart';
import 'package:auth_app/presentation/theme/sizes/app_durations.dart';
import 'package:auth_app/presentation/theme/sizes/app_paddings.dart';
import 'package:auth_app/presentation/theme/texts/app_text_theme_extension.dart';
import 'package:flutter/material.dart';

class AuthSegmentedControl extends StatelessWidget {
  const AuthSegmentedControl({
    required this.value,
    required this.onChanged,
    super.key,
  });

  final AuthTabType value;
  final ValueChanged<AuthTabType> onChanged;

  @override
  Widget build(BuildContext context) {
    final colorTheme = AppColorThemeExtension.of(context);

    return Container(
      decoration: BoxDecoration(
        color: colorTheme.secondary,
        borderRadius: BorderRadius.all(AppBorderRadius.medium),
      ),
      child: Row(
        children: [
          _Segment(
            text: AuthTabType.login.name,
            isSelected: value == AuthTabType.login,
            onTap: () => onChanged(AuthTabType.login),
          ),
          _Segment(
            text: AuthTabType.signup.name,
            isSelected: value == AuthTabType.signup,
            onTap: () => onChanged(AuthTabType.signup),
          ),
        ],
      ),
    );
  }
}

class _Segment extends StatelessWidget {
  const _Segment({
    required this.onTap,
    required this.text,
    required this.isSelected,
  });

  final String text;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final colorTheme = AppColorThemeExtension.of(context);
    final textTheme = AppTextThemeExtension.of(context);

    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: AnimatedContainer(
          duration: AppDurations.medium,
          curve: Curves.easeOut,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(AppBorderRadius.medium),
            color: isSelected
                ? AppColorsPalette.royalBlue600
                : Colors.transparent,
          ),
          child: Padding(
            padding: AppPaddings.buttonContent,
            child: Text(
              text,
              style: textTheme.button.copyWith(
                color: isSelected
                    ? AppColorsPalette.white
                    : colorTheme.foregroundPrimary,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
