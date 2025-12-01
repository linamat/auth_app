import 'package:auth_app/data/auth/dto/user_credentials_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({required String name, required String password, String? email}) = _UserModel;

  const UserModel._();

  factory UserModel.fromDto(UserCredentialsDto dto) =>
      UserModel(name: dto.username, password: dto.password, email: dto.email);

  UserCredentialsDto toDto() => UserCredentialsDto(username: name, password: password, email: email ?? '');
}
