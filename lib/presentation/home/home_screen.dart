import 'package:auth_app/core/di/service_locator.dart';
import 'package:auth_app/presentation/auth/auth_screen.dart';
import 'package:auth_app/presentation/auth/controllers/auth_controller.dart';
import 'package:auth_app/presentation/constants/text_constants.dart';
import 'package:auth_app/presentation/theme/sizes/app_dimensions.dart';
import 'package:auth_app/presentation/theme/sizes/app_paddings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const routeName = '/home';

  @override
  Widget build(BuildContext context) {
    final controller = getIt<AuthController>();

    return Observer(
      builder: (_) {
        final user = controller.authenticatedUser;
        final navigateToAuth = user == null;

        if (navigateToAuth) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            if (!context.mounted) return;

            Navigator.of(context).pushReplacementNamed(AuthScreen.routeName);
          });

          return const SizedBox.shrink();
        }

        return Scaffold(
          body: Padding(
            padding: AppPaddings.contentHorizontal,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: AppDimensions.spacingMedium,
              children: [
                _UserField(label: AppTextConstants.userName, value: user.username, icon: Icons.person_outline),
                _UserField(label: AppTextConstants.email, value: user.email, icon: Icons.email_outlined),
                Padding(
                  padding: AppPaddings.buttonPadding,
                  child: SizedBox(
                    width: double.infinity,
                    child: FilledButton(
                      onPressed: () => _onLogout(context, controller),
                      child: Text(AppTextConstants.logout),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Future<void> _onLogout(BuildContext context, AuthController controller) async {
    await controller.logout();
    if (!context.mounted) return;
    Navigator.of(context).pushReplacementNamed(AuthScreen.routeName);
  }
}

class _UserField extends StatelessWidget {
  const _UserField({required this.label, required this.value, required this.icon});

  final String label;
  final String value;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Row(
      children: [
        Icon(icon, color: theme.colorScheme.primary),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 4.0,
            children: [
              Text(label, style: theme.textTheme.labelLarge?.copyWith(color: theme.colorScheme.primary)),
              Text(value, style: theme.textTheme.titleMedium),
            ],
          ),
        ),
      ],
    );
  }
}
