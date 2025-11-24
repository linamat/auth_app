import 'package:auth_app/core/di/service_locator.dart';
import 'package:auth_app/data/auth/dto/user_credentials_dto.dart';
import 'package:auth_app/presentation/auth/controllers/auth_controller.dart';
import 'package:auth_app/presentation/home/home_screen.dart';
import 'package:auth_app/presentation/auth/widgets/auth_segmented_control.dart';
import 'package:auth_app/presentation/auth/widgets/auth_header_decoration.dart';
import 'package:auth_app/presentation/auth/widgets/login_content.dart';
import 'package:auth_app/presentation/auth/widgets/sign_up_content.dart';
import 'package:auth_app/presentation/constants/text_constants.dart';
import 'package:auth_app/presentation/theme/colors/app_color_theme_extension.dart';
import 'package:auth_app/presentation/theme/sizes/app_dimensions.dart';
import 'package:auth_app/presentation/theme/sizes/app_paddings.dart';
import 'package:auth_app/presentation/theme/widgets/buttons/app_text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key, AuthController? controller})
      : _controller = controller;

  static const routeName = '/auth';

  final AuthController? _controller;

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  late final AuthController _controller;
  final _loginFormKey = GlobalKey<FormState>();
  final _signupFormKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _controller = widget._controller ?? getIt<AuthController>();
  }

  @override
  Widget build(BuildContext context) {
    final formHeight = MediaQuery.of(context).size.height * 0.3;

    return ReactionBuilder(
      builder: (context) {
        reaction<String?>((_) => _controller.authMessage, (message) {
          final showMessage = message != null && message.isNotEmpty;

          if (showMessage) {
            final colorTheme = AppColorThemeExtension.of(context);

            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(message),
                backgroundColor: _controller.hasError ? colorTheme.error : colorTheme.primary,
              ),
            );
          }
        });

        return reaction<UserCredentialsDto?>((_) => _controller.authenticatedUser, (user) {
          final navigateToHome = user != null;

          if (navigateToHome) {
            Navigator.of(context).pushReplacementNamed(HomeScreen.routeName);
          }
        });
      },
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
                        controller: _controller.pageController,
                        physics: const NeverScrollableScrollPhysics(),
                        children: [
                          Form(
                            key: _loginFormKey,
                            child: LoginContent(
                              usernameController: _controller.usernameController,
                              passwordController: _controller.passwordController,
                            ),
                          ),
                          Form(
                            key: _signupFormKey,
                            child: SignUpContent(
                              emailController: _controller.emailController,
                              usernameController: _controller.usernameController,
                              passwordController: _controller.passwordController,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: AppDimensions.spacingMedium),
                    Observer(
                      builder: (_) => AuthSegmentedControl(
                        value: _controller.selectedTab,
                        onChanged: (tab) => _controller.onSegmentChanged(
                          tab,
                          loginFormKey: _loginFormKey,
                          signupFormKey: _signupFormKey,
                        ),
                      ),
                    ),
                    SizedBox(height: AppDimensions.spacingLarge),
                    AppTextButton(text: AppTextConstants.forgotPassword, onTap: _controller.onForgotPasswordTapped),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
