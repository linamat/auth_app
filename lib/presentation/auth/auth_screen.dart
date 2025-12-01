import 'package:auth_app/core/di/service_locator.dart';
import 'package:auth_app/presentation/auth/bloc/auth_bloc.dart';
import 'package:auth_app/presentation/auth/enums/auth_tab_type.dart';
import 'package:auth_app/presentation/auth/models/user_model.dart';
import 'package:auth_app/presentation/auth/widgets/auth_header_decoration.dart';
import 'package:auth_app/presentation/auth/widgets/auth_segmented_control.dart';
import 'package:auth_app/presentation/auth/widgets/login_content.dart';
import 'package:auth_app/presentation/auth/widgets/sign_up_content.dart';
import 'package:auth_app/presentation/constants/text_constants.dart';
import 'package:auth_app/presentation/home/home_screen.dart';
import 'package:auth_app/presentation/theme/colors/app_color_theme_extension.dart';
import 'package:auth_app/presentation/theme/sizes/app_dimensions.dart';
import 'package:auth_app/presentation/theme/sizes/app_durations.dart';
import 'package:auth_app/presentation/theme/sizes/app_paddings.dart';
import 'package:auth_app/presentation/theme/widgets/buttons/app_text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  static const routeName = '/auth';

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  late final AuthBloc _bloc;

  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _emailController = TextEditingController();

  final _pageController = PageController();

  final _loginFormKey = GlobalKey<FormState>();
  final _signupFormKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _bloc = getIt<AuthBloc>();
  }

  @override
  Widget build(BuildContext context) {
    final formHeight = MediaQuery.of(context).size.height * 0.3;

    return BlocProvider.value(
      value: _bloc,
      child: BlocListener<AuthBloc, AuthState>(
        listener: _onListener,
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              spacing: AppDimensions.spacingSmall,
              children: [
                const AuthHeaderDecoration(),
                Padding(
                  padding: AppPaddings.contentHorizontal,
                  child: Column(
                    children: [
                      SizedBox(
                        height: formHeight,
                        child: PageView(
                          controller: _pageController,
                          physics: const NeverScrollableScrollPhysics(),
                          children: [
                            Form(
                              key: _loginFormKey,
                              child: LoginContent(
                                usernameController: _usernameController,
                                passwordController: _passwordController,
                              ),
                            ),

                            Form(
                              key: _signupFormKey,
                              child: SignUpContent(
                                emailController: _emailController,
                                usernameController: _usernameController,
                                passwordController: _passwordController,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: AppDimensions.spacingMedium),
                      BlocBuilder<AuthBloc, AuthState>(
                        builder: (_, state) => AuthSegmentedControl(value: state.selectedTab, onChanged: _onTabChanged),
                      ),
                      SizedBox(height: AppDimensions.spacingLarge),
                      AppTextButton(
                        text: AppTextConstants.forgotPassword,
                        onTap: () => _bloc.add(const AuthEvent.forgotPassword()),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _navigateToHome() {
    Navigator.of(context).pushReplacementNamed(HomeScreen.routeName);
  }

  void _showMessage(String message, bool isError) {
    final colorTheme = AppColorThemeExtension.of(context);
    final snackBar = SnackBar(content: Text(message), backgroundColor: isError ? colorTheme.error : colorTheme.primary);

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  void _onListener(BuildContext context, AuthState state) {
    if (state.message != null) _showMessage(state.message!, state.hasError);

    if (state.authenticatedUser != null) _navigateToHome();
  }

  void _onTabChanged(AuthTabType tab) {
    final currentTab = _bloc.state.selectedTab;
    final canSubmit = currentTab == tab;

    if (canSubmit) {
      switch (tab) {
        case AuthTabType.login:
          if (!_isLoginFormValid) return;

          _bloc.add(
            AuthEvent.login(
              user: UserModel(name: _usernameController.text.trim(), password: _passwordController.text),
            ),
          );

        case AuthTabType.signup:
          if (!_isSignUpFormValid) return;

          _bloc.add(
            AuthEvent.signup(
              user: UserModel(
                name: _usernameController.text.trim(),
                password: _passwordController.text,
                email: _emailController.text.trim(),
              ),
            ),
          );
      }

      return;
    }

    _bloc.add(AuthEvent.tabChange(tab: tab));
    _clearTextFields();

    switch (tab) {
      case AuthTabType.login:
        _pageController.animateToPage(AuthTabType.login.index, duration: AppDurations.medium, curve: Curves.easeInOut);

      case AuthTabType.signup:
        _pageController.animateToPage(AuthTabType.signup.index, duration: AppDurations.medium, curve: Curves.easeInOut);
    }
  }

  bool get _isLoginFormValid {
    final formState = _loginFormKey.currentState;

    if (formState == null) return false;

    return formState.validate();
  }

  bool get _isSignUpFormValid {
    final formState = _signupFormKey.currentState;

    if (formState == null) return false;

    return formState.validate();
  }

  void _clearTextFields() {
    _signupFormKey.currentState?.reset();
    _loginFormKey.currentState?.reset();

    _usernameController.clear();
    _passwordController.clear();
    _emailController.clear();
  }

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    _emailController.dispose();
    _pageController.dispose();

    super.dispose();
  }
}
