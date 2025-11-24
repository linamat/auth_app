import 'package:auth_app/data/auth/services/user_local_storage_service.dart';
import 'package:auth_app/data/auth/dto/user_credentials_dto.dart';
import 'package:auth_app/data/auth/repositories/auth_repository.dart';
import 'package:auth_app/presentation/auth/controllers/auth_controller.dart';
import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';

final getIt = GetIt.instance;

Future<void> setupServiceLocator() async {
  await Hive.initFlutter();
  _registerHiveAdapters();

  final userBox = await Hive.openBox<UserCredentialsDto>(UserLocalStorageService.boxName);

  getIt
    ..registerSingleton<UserLocalStorageService>(
      UserLocalStorageService(userBox),
      dispose: (storage) => storage.dispose(),
    )
    ..registerLazySingleton<AuthRepository>(() => AuthRepository(storage: getIt<UserLocalStorageService>()))
    ..registerLazySingleton<AuthController>(
      () => AuthController(authRepository: getIt<AuthRepository>())..initialize(),
      dispose: (controller) => controller.dispose(),
    );
}

void _registerHiveAdapters() {
  Hive.registerAdapter(UserCredentialsDtoAdapter());
}
