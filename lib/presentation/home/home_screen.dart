import 'package:auth_app/core/di/service_locator.dart';
import 'package:auth_app/presentation/auth/auth_screen.dart';
import 'package:auth_app/presentation/auth/bloc/auth_bloc.dart';
import 'package:auth_app/presentation/constants/text_constants.dart';
import 'package:auth_app/presentation/theme/colors/app_color_theme_extension.dart';
import 'package:auth_app/presentation/theme/sizes/app_dimensions.dart';
import 'package:auth_app/presentation/theme/sizes/app_paddings.dart';
import 'package:auth_app/presentation/theme/texts/app_text_theme_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const routeName = '/home';

  @override
  Widget build(BuildContext context) {
    final authBloc = getIt<AuthBloc>();

    return BlocProvider.value(
      value: authBloc,
      child: BlocBuilder<AuthBloc, AuthState>(
        builder: (context, state) {
          final user = state.authenticatedUser;

          if (user == null) {
            _navigateToAuthScreen(context);

            return const SizedBox.shrink();
          }

          return Scaffold(
            body: Padding(
              padding: AppPaddings.contentHorizontal,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: AppDimensions.spacingMedium,
                children: [
                  _UserField(label: AppTextConstants.userName, value: user.name, icon: Icons.person_outline),
                  _UserField(label: AppTextConstants.email, value: user.email ?? '---', icon: Icons.email_outlined),
                  Padding(
                    padding: AppPaddings.buttonPadding,
                    child: SizedBox(
                      width: double.infinity,
                      child: FilledButton(
                        onPressed: () => context.read<AuthBloc>().add(const AuthEvent.logout()),
                        child: const Text(AppTextConstants.logout),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  void _navigateToAuthScreen(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!context.mounted) return;
      Navigator.of(context).pushReplacementNamed(AuthScreen.routeName);
    });
  }
}

class _UserField extends StatelessWidget {
  const _UserField({required this.label, required this.value, required this.icon});

  final String label;
  final String value;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    final colorTheme = AppColorThemeExtension.of(context);
    final textTheme = AppTextThemeExtension.of(context);

    return Row(
      children: [
        Icon(icon, color: colorTheme.primary),
        const SizedBox(width: AppDimensions.spacingSmall),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: AppDimensions.spacingTiny,
            children: [
              Text(label, style: textTheme.body.copyWith(color: colorTheme.primary)),
              Text(value, style: textTheme.body),
            ],
          ),
        ),
      ],
    );
  }
}
