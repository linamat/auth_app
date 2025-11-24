import 'package:hive/hive.dart';

part 'user_credentials_dto.g.dart';

@HiveType(typeId: 0)
class UserCredentialsDto {
  UserCredentialsDto({required this.email, required this.username, required this.password});

  @HiveField(0)
  final String email;

  @HiveField(1)
  final String username;

  @HiveField(2)
  final String password;
}
