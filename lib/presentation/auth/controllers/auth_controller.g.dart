// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$AuthController on _AuthController, Store {
  late final _$selectedTabAtom =
      Atom(name: '_AuthController.selectedTab', context: context);

  @override
  AuthTabType get selectedTab {
    _$selectedTabAtom.reportRead();
    return super.selectedTab;
  }

  @override
  set selectedTab(AuthTabType value) {
    _$selectedTabAtom.reportWrite(value, super.selectedTab, () {
      super.selectedTab = value;
    });
  }

  late final _$isSubmittingAtom =
      Atom(name: '_AuthController.isSubmitting', context: context);

  @override
  bool get isSubmitting {
    _$isSubmittingAtom.reportRead();
    return super.isSubmitting;
  }

  @override
  set isSubmitting(bool value) {
    _$isSubmittingAtom.reportWrite(value, super.isSubmitting, () {
      super.isSubmitting = value;
    });
  }

  late final _$authenticatedUserAtom =
      Atom(name: '_AuthController.authenticatedUser', context: context);

  @override
  UserCredentialsDto? get authenticatedUser {
    _$authenticatedUserAtom.reportRead();
    return super.authenticatedUser;
  }

  @override
  set authenticatedUser(UserCredentialsDto? value) {
    _$authenticatedUserAtom.reportWrite(value, super.authenticatedUser, () {
      super.authenticatedUser = value;
    });
  }

  late final _$authMessageAtom =
      Atom(name: '_AuthController.authMessage', context: context);

  @override
  String? get authMessage {
    _$authMessageAtom.reportRead();
    return super.authMessage;
  }

  @override
  set authMessage(String? value) {
    _$authMessageAtom.reportWrite(value, super.authMessage, () {
      super.authMessage = value;
    });
  }

  late final _$hasErrorAtom =
      Atom(name: '_AuthController.hasError', context: context);

  @override
  bool get hasError {
    _$hasErrorAtom.reportRead();
    return super.hasError;
  }

  @override
  set hasError(bool value) {
    _$hasErrorAtom.reportWrite(value, super.hasError, () {
      super.hasError = value;
    });
  }

  late final _$onSegmentChangedAsyncAction =
      AsyncAction('_AuthController.onSegmentChanged', context: context);

  @override
  Future<void> onSegmentChanged(AuthTabType tab,
      {GlobalKey<FormState>? loginFormKey,
      GlobalKey<FormState>? signupFormKey}) {
    return _$onSegmentChangedAsyncAction.run(() => super.onSegmentChanged(tab,
        loginFormKey: loginFormKey, signupFormKey: signupFormKey));
  }

  late final _$submitLoginAsyncAction =
      AsyncAction('_AuthController.submitLogin', context: context);

  @override
  Future<void> submitLogin({GlobalKey<FormState>? loginFormKey}) {
    return _$submitLoginAsyncAction
        .run(() => super.submitLogin(loginFormKey: loginFormKey));
  }

  late final _$submitSignupAsyncAction =
      AsyncAction('_AuthController.submitSignup', context: context);

  @override
  Future<void> submitSignup({GlobalKey<FormState>? signupFormKey}) {
    return _$submitSignupAsyncAction
        .run(() => super.submitSignup(signupFormKey: signupFormKey));
  }

  late final _$logoutAsyncAction =
      AsyncAction('_AuthController.logout', context: context);

  @override
  Future<void> logout() {
    return _$logoutAsyncAction.run(() => super.logout());
  }

  late final _$_AuthControllerActionController =
      ActionController(name: '_AuthController', context: context);

  @override
  void initialize() {
    final _$actionInfo = _$_AuthControllerActionController.startAction(
        name: '_AuthController.initialize');
    try {
      return super.initialize();
    } finally {
      _$_AuthControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void onForgotPasswordTapped() {
    final _$actionInfo = _$_AuthControllerActionController.startAction(
        name: '_AuthController.onForgotPasswordTapped');
    try {
      return super.onForgotPasswordTapped();
    } finally {
      _$_AuthControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void dispose() {
    final _$actionInfo = _$_AuthControllerActionController.startAction(
        name: '_AuthController.dispose');
    try {
      return super.dispose();
    } finally {
      _$_AuthControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
selectedTab: ${selectedTab},
isSubmitting: ${isSubmitting},
authenticatedUser: ${authenticatedUser},
authMessage: ${authMessage},
hasError: ${hasError}
    ''';
  }
}
