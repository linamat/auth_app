import 'package:auth_app/data/auth/repositories/auth_repository.dart';
import 'package:auth_app/presentation/auth/enums/auth_tab_type.dart';
import 'package:auth_app/presentation/auth/models/user_model.dart';
import 'package:auth_app/presentation/constants/text_constants.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository _authRepository;

  AuthBloc({required AuthRepository authRepository}) : _authRepository = authRepository, super(AuthState.initial()) {
    on<AuthEvent>(
      (event, emit) => switch (event) {
        _GetCurrentUser _ => _onGetCurrentUser(event, emit),
        _TabChange _ => _onTabChange(event, emit),
        _Login _ => _onLogin(event, emit),
        _Signup _ => _onSignup(event, emit),
        _ForgotPassword _ => _onForgotPassword(event, emit),
        _Logout _ => _onLogout(event, emit),
      },
    );
  }

  Future<void> _onGetCurrentUser(_GetCurrentUser event, Emitter<AuthState> emit) async {
    if (state.initialized) return;

    final getCurrentUserResponse = _authRepository.getCurrentUser();
    final currentUser = getCurrentUserResponse.isSuccess ? UserModel.fromDto(getCurrentUserResponse.success) : null;

    emit(state.copyWith(authenticatedUser: currentUser, initialized: true));
  }

  Future<void> _onTabChange(_TabChange event, Emitter<AuthState> emit) async {
    emit(state.copyWith(selectedTab: event.tab, message: null, hasError: false));
  }

  Future<void> _onLogin(_Login event, Emitter<AuthState> emit) async {
    if (state.isSubmitting) return;

    emit(state.copyWith(isSubmitting: true, message: null, hasError: false));

    final loginRequest = await _authRepository.login(username: event.user.name, password: event.user.password);

    if (loginRequest.isFailure) {
      emit(state.copyWith(message: loginRequest.failure.toUserMessage, hasError: true, isSubmitting: false));
      return;
    }

    final currentUser = UserModel.fromDto(loginRequest.success);
    await _authRepository.saveCurrentUser(currentUser.toDto());

    emit(
      state.copyWith(
        authenticatedUser: currentUser,
        message: AppTextConstants.loginSuccess,
        hasError: false,
        isSubmitting: false,
      ),
    );
  }

  Future<void> _onSignup(_Signup event, Emitter<AuthState> emit) async {
    if (state.isSubmitting) return;

    emit(state.copyWith(isSubmitting: true, message: null, hasError: false));

    final username = event.user.name;
    final isUserExistsResponse = _authRepository.isUserExists(username);

    if (isUserExistsResponse.isFailure) {
      emit(state.copyWith(message: isUserExistsResponse.failure.toUserMessage, hasError: true, isSubmitting: false));
      return;
    }

    await _authRepository.saveUser(event.user.toDto());
    await _authRepository.saveCurrentUser(event.user.toDto());

    emit(
      state.copyWith(
        authenticatedUser: event.user,
        message: AppTextConstants.signUpSuccess,
        isSubmitting: false,
        hasError: false,
      ),
    );
  }

  Future<void> _onForgotPassword(_ForgotPassword event, Emitter<AuthState> emit) async {
    emit(state.copyWith(message: AppTextConstants.forgotPasswordMessage, hasError: false));
  }

  Future<void> _onLogout(_Logout event, Emitter<AuthState> emit) async {
    await _authRepository.clearCurrentUser();

    emit(
      state.copyWith(
        authenticatedUser: null,
        selectedTab: AuthTabType.login,
        message: AppTextConstants.loggedOut,
        hasError: false,
      ),
    );
  }
}
