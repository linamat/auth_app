import 'package:auth_app/data/auth/failures/auth_failures.dart';
import 'package:auth_app/data/auth/services/user_local_storage_service.dart';
import 'package:auth_app/data/auth/dto/user_credentials_dto.dart';
import 'package:auth_app/data/common/models/result.dart';

class AuthRepository {
  AuthRepository({required UserLocalStorageService storage}) : _storage = storage;

  final UserLocalStorageService _storage;

  Future<Result<void, AuthFailure>> saveUser(UserCredentialsDto credentials) async {
    try {
      final isUserAlreadyExists = _storage.getUser(credentials.username) != null;

      if (isUserAlreadyExists) {
        return Result.failure(DuplicateUser(username: credentials.username));
      }

      await _storage.saveUser(credentials);
      await _storage.saveCurrentUser(credentials);

      return Result.success(null);
    } catch (e) {
      return Result.failure(SignupFailed(username: credentials.username, error: e.toString()));
    }
  }

  Result<bool, AuthFailure> isUserExists(String username) {
    try {
      final isUserExists = _storage.getUser(username) != null;
      return Result.success(isUserExists);
    } catch (e) {
      return Result.failure(StorageFailed(error: e.toString()));
    }
  }

  Future<Result<UserCredentialsDto, AuthFailure>> login({required String username, required String password}) async {
    try {
      final storedUser = _storage.getUser(username);

      if (storedUser == null) {
        return Result.failure(UserNotFound(username: username));
      }

      if (storedUser.password != password) {
        return Result.failure(InvalidCredentials(username: username));
      }

      await _storage.saveCurrentUser(storedUser);

      return Result.success(storedUser);
    } catch (e) {
      return Result.failure(StorageFailed(error: e.toString()));
    }
  }

  Future<Result<void, AuthFailure>> saveCurrentUser(UserCredentialsDto credentials) async {
    try {
      await _storage.saveCurrentUser(credentials);
      return Result.success(null);
    } catch (e) {
      return Result.failure(StorageFailed(error: e.toString()));
    }
  }

  Result<UserCredentialsDto, AuthFailure> getCurrentUser() {
    try {
      final user = _storage.getCurrentUser();

      if (user == null) {
        return Result.failure(UserNotFound(username: 'current'));
      }

      return Result.success(user);
    } catch (e) {
      return Result.failure(StorageFailed(error: e.toString()));
    }
  }

  Future<Result<void, AuthFailure>> clearCurrentUser() async {
    try {
      await _storage.clearCurrentUser();
      return Result.success(null);
    } catch (e) {
      return Result.failure(StorageFailed(error: e.toString()));
    }
  }

  Future<Result<void, AuthFailure>> deleteUser(String username) async {
    try {
      await _storage.deleteUser(username);
      return Result.success(null);
    } catch (e) {
      return Result.failure(StorageFailed(error: e.toString()));
    }
  }
}
