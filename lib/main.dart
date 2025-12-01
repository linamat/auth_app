import 'package:auth_app/core/di/service_locator.dart';
import 'package:auth_app/presentation/auth/auth_screen.dart';
import 'package:auth_app/presentation/auth/bloc/auth_bloc.dart';
import 'package:auth_app/presentation/home/home_screen.dart';
import 'package:auth_app/presentation/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await setupServiceLocator();

  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  runApp(AuthApp());
}

class AuthApp extends StatelessWidget {
  const AuthApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.getTheme(mode: ThemeMode.light),
      darkTheme: AppTheme.getTheme(mode: ThemeMode.dark),
      initialRoute: _getInitialRoute(),
      routes: {AuthScreen.routeName: (context) => AuthScreen(), HomeScreen.routeName: (context) => const HomeScreen()},
    );
  }

  String _getInitialRoute() {
    final authBloc = getIt<AuthBloc>();
    final isAuthenticated = authBloc.state.authenticatedUser != null;

    return isAuthenticated ? HomeScreen.routeName : AuthScreen.routeName;
  }
}
