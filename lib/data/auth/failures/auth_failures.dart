sealed class AuthFailure {
  const AuthFailure();

  String get toUserMessage;
  String get toDevMessage;
}

class LoginFailed extends AuthFailure {
  final String username;
  final String error;

  const LoginFailed({required this.username, required this.error});

  @override
  String get toUserMessage => 'Login failed. Please try again.';

  @override
  String get toDevMessage => 'Login failed → username: $username, error: $error';
}

class SignupFailed extends AuthFailure {
  final String username;
  final String error;

  const SignupFailed({required this.username, required this.error});

  @override
  String get toUserMessage => 'Signup failed. Please try again.';

  @override
  String get toDevMessage => 'Signup failed → username: $username, error: $error';
}

class UserNotFound extends AuthFailure {
  final String username;

  const UserNotFound({required this.username});

  @override
  String get toUserMessage => 'User not found.';

  @override
  String get toDevMessage => 'User not found → username: $username';
}

class InvalidCredentials extends AuthFailure {
  final String username;

  const InvalidCredentials({required this.username});

  @override
  String get toUserMessage => 'Invalid username or password.';

  @override
  String get toDevMessage => 'Invalid credentials → username: $username';
}

class LogoutFailed extends AuthFailure {
  final String error;

  const LogoutFailed({required this.error});

  @override
  String get toUserMessage => 'Logout failed. Please try again.';

  @override
  String get toDevMessage => 'Logout failed → error: $error';
}

class StorageFailed extends AuthFailure {
  final String error;

  const StorageFailed({required this.error});

  @override
  String get toUserMessage => 'A storage error occurred. Please try again.';

  @override
  String get toDevMessage => 'Storage failed → error: $error';
}

class DuplicateUser extends AuthFailure {
  final String username;

  const DuplicateUser({required this.username});

  @override
  String get toUserMessage => 'A user with this username already exists.';

  @override
  String get toDevMessage => 'Duplicate user → username: $username';
}

class UnknownAuthFailure extends AuthFailure {
  final String error;

  const UnknownAuthFailure(this.error);

  @override
  String get toUserMessage => 'An unexpected error occurred. Please try again later.';

  @override
  String get toDevMessage => 'Unknown failure → error: $error';
}
