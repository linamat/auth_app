import 'package:auth_app/presentation/theme/texts/app_text_theme_extension.dart';
import 'package:flutter/material.dart';

class AppTextButton extends StatelessWidget {
  const AppTextButton({
    required this.text,
    required this.onTap,
    this.color,
    super.key,
  });

  final String text;
  final VoidCallback onTap;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    final textTheme = AppTextThemeExtension.of(context);

    return TextButton(
      onPressed: onTap,
      child: Text(
        text,
        style: textTheme.button.copyWith(color: color),
      ),
    );
  }
}
