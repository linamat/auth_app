import 'package:auth_app/presentation/constants/text_constants.dart';

abstract class AuthFormValidators {
  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) return AppTextConstants.enterEmail;

    if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) return AppTextConstants.validEmail;

    return null;
  }

  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) return AppTextConstants.enterPassword;

    return null;
  }

  static String? validateName(String? value) {
    if (value == null || value.isEmpty) return AppTextConstants.enterName;

    if (value.trim().length < 2) return AppTextConstants.validName;

    return null;
  }
}
