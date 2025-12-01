part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    @Default(AuthTabType.login) AuthTabType selectedTab,
    @Default(false) bool initialized,
    @Default(false) bool isSubmitting,
    @Default(false) bool hasError,
    UserModel? authenticatedUser,
    String? message,
  }) = _AuthState;

  factory AuthState.initial() => const AuthState();
}
