import 'package:auth_app/presentation/constants/text_constants.dart';

enum AuthTabType {
  login(AppTextConstants.login),
  signup(AppTextConstants.signUp);

  const AuthTabType(this.name);

  final String name;
}
