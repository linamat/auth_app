part of 'auth_bloc.dart';

@freezed
sealed class AuthEvent with _$AuthEvent {
  const factory AuthEvent.getCurrentUser() = _GetCurrentUser;

  const factory AuthEvent.tabChange({required AuthTabType tab}) = _TabChange;

  const factory AuthEvent.login({required UserModel user}) = _Login;

  const factory AuthEvent.signup({required UserModel user}) = _Signup;

  const factory AuthEvent.forgotPassword() = _ForgotPassword;

  const factory AuthEvent.logout() = _Logout;
}
