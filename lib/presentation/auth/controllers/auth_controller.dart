import 'dart:async';

import 'package:auth_app/data/auth/dto/user_credentials_dto.dart';
import 'package:auth_app/data/auth/repositories/auth_repository.dart';
import 'package:auth_app/presentation/auth/enums/auth_tab_type.dart';
import 'package:auth_app/presentation/constants/text_constants.dart';
import 'package:auth_app/presentation/theme/sizes/app_durations.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'auth_controller.g.dart';

// ignore: library_private_types_in_public_api
class AuthController = _AuthController with _$AuthController;

abstract class _AuthController with Store {
  _AuthController({required AuthRepository authRepository}) : _authRepository = authRepository;

  final AuthRepository _authRepository;

  final pageController = PageController(initialPage: AuthTabType.login.index);

  final emailController = TextEditingController();
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  bool _initialized = false;

  @observable
  AuthTabType selectedTab = AuthTabType.login;

  @observable
  bool isSubmitting = false;

  @observable
  UserCredentialsDto? authenticatedUser;

  @observable
  String? authMessage;

  @observable
  bool hasError = false;

  @action
  void initialize() {
    if (_initialized) return;

    final getCurrentUser = _authRepository.getCurrentUser();
    authenticatedUser = getCurrentUser.isSuccess ? getCurrentUser.success : null;

    _initialized = true;
  }

  @action
  Future<void> onSegmentChanged(
    AuthTabType tab, {
    GlobalKey<FormState>? loginFormKey,
    GlobalKey<FormState>? signupFormKey,
  }) async {
    if (selectedTab == tab) {
      switch (tab) {
        case AuthTabType.login:
          await submitLogin(loginFormKey: loginFormKey);
        case AuthTabType.signup:
          await submitSignup(signupFormKey: signupFormKey);
      }

      return;
    }

    selectedTab = tab;

    _clearControllers();
    _clearValidations(loginFormKey: loginFormKey, signupFormKey: signupFormKey);

    await pageController.animateToPage(tab.index, duration: AppDurations.medium, curve: Curves.easeOut);
  }

  @action
  Future<void> submitLogin({GlobalKey<FormState>? loginFormKey}) async {
    if (isSubmitting) return;

    if (!(loginFormKey?.currentState?.validate() ?? false)) return;

    isSubmitting = true;

    _setMessage(null);

    final loginRequest = await _authRepository.login(
      username: usernameController.text.trim(),
      password: passwordController.text,
    );

    if (loginRequest.isFailure) {
      _setMessage(loginRequest.failure.toUserMessage, isError: true);
    }

    if (loginRequest.isSuccess) {
      final user = loginRequest.success;
      authenticatedUser = user;

      await _authRepository.saveCurrentUser(user);
      _setMessage(AppTextConstants.loginSuccess);

      _clearControllers();
      _clearValidations(loginFormKey: loginFormKey);
    }

    isSubmitting = false;
  }

  @action
  Future<void> submitSignup({GlobalKey<FormState>? signupFormKey}) async {
    if (isSubmitting) return;

    if (!(signupFormKey?.currentState?.validate() ?? false)) return;

    isSubmitting = true;

    _setMessage(null);

    final username = usernameController.text.trim();
    final isUserExistsResponse = _authRepository.isUserExists(username);

    if (isUserExistsResponse.isFailure) {
      _setMessage(isUserExistsResponse.failure.toUserMessage, isError: true);
      isSubmitting = false;

      return;
    }

    final credentials = UserCredentialsDto(
      email: emailController.text.trim(),
      username: username,
      password: passwordController.text,
    );

    await _authRepository.saveUser(credentials);

    authenticatedUser = credentials;

    await _authRepository.saveCurrentUser(credentials);

    _setMessage(AppTextConstants.signUpSuccess);

    _clearControllers();
    _clearValidations(signupFormKey: signupFormKey);

    isSubmitting = false;
  }

  @action
  void onForgotPasswordTapped() => _setMessage(AppTextConstants.forgotPasswordMessage);

  @action
  Future<void> logout() async {
    await _authRepository.clearCurrentUser();

    authenticatedUser = null;
    selectedTab = AuthTabType.login;

    _setMessage(AppTextConstants.loggedOut);

    if (pageController.hasClients) {
      await pageController.animateToPage(AuthTabType.login.index, duration: AppDurations.medium, curve: Curves.easeOut);
    }
  }

  @action
  void dispose() {
    pageController.dispose();
    emailController.dispose();
    usernameController.dispose();
    passwordController.dispose();
  }

  void _clearControllers() {
    emailController.clear();
    usernameController.clear();
    passwordController.clear();
  }

  void _clearValidations({GlobalKey<FormState>? loginFormKey, GlobalKey<FormState>? signupFormKey}) {
    loginFormKey?.currentState?.reset();
    signupFormKey?.currentState?.reset();
  }

  void _setMessage(String? message, {bool isError = false}) {
    authMessage = message;
    hasError = message != null && isError;
  }
}
