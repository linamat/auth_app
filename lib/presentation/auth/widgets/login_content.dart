import 'package:auth_app/presentation/constants/text_constants.dart';
import 'package:auth_app/presentation/theme/sizes/app_dimensions.dart';
import 'package:auth_app/presentation/theme/widgets/inputs/app_text_form_field.dart';
import 'package:auth_app/presentation/utils/auth_form_validators.dart';
import 'package:flutter/material.dart';

class LoginContent extends StatelessWidget {
  const LoginContent({
    required this.usernameController,
    required this.passwordController,
    super.key,
  });

  final TextEditingController usernameController;
  final TextEditingController passwordController;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      spacing: AppDimensions.spacingSmall,
      children: [
        AppTextFormField(
          hintText: AppTextConstants.userName,
          controller: usernameController,
          validator: AuthFormValidators.validateName,
        ),
        AppTextFormField(
          hintText: AppTextConstants.password,
          controller: passwordController,
          validator: AuthFormValidators.validatePassword,
          obscureText: true,
        ),
      ],
    );
  }
}
