import 'dart:async';

import 'package:auth_app/data/auth/dto/user_credentials_dto.dart';
import 'package:hive/hive.dart';

class UserLocalStorageService {
  UserLocalStorageService(this._box);

  final Box<UserCredentialsDto> _box;

  static const boxName = 'user_credentials_box';
  static const _currentUserKey = 'current_user_key';

  Future<void> saveUser(UserCredentialsDto credentials) async =>
      await _box.put(_normalize(credentials.username), credentials);

  UserCredentialsDto? getUser(String username) => _box.get(_normalize(username));

  Future<void> deleteUser(String username) async => await _box.delete(_normalize(username));

  Future<void> saveCurrentUser(UserCredentialsDto credentials) async => await _box.put(_currentUserKey, credentials);

  UserCredentialsDto? getCurrentUser() => _box.get(_currentUserKey);

  Future<void> clearCurrentUser() async => await _box.delete(_currentUserKey);

  void dispose() => unawaited(_box.close());

  String _normalize(String value) => value.trim().toLowerCase();
}
