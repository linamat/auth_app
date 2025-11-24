import 'package:auth_app/presentation/theme/colors/app_color_theme_extension.dart';
import 'package:auth_app/presentation/theme/sizes/app_dimensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

final _appLogo = 'assets/icons/app_logo.svg';

class AuthHeaderDecoration extends StatelessWidget {
  const AuthHeaderDecoration({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        _AuthHeaderShape(),
        Positioned(
          top: MediaQuery.of(context).padding.top,
          left: AppDimensions.topPaddingMedium,
          child: SvgPicture.asset(_appLogo),
        ),
      ],
    );
  }
}

class _AuthHeaderShape extends StatelessWidget {
  const _AuthHeaderShape();

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 0.39;
    final colorTheme = AppColorThemeExtension.of(context);

    return ClipPath(
      clipper: _AuthHeaderClipper(),
      child: Container(height: height, color: colorTheme.secondary),
    );
  }
}

class _AuthHeaderClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();

    path.lineTo(0, size.height);

    path.quadraticBezierTo(
      size.width,
      size.height * 0.60,
      size.width,
      size.height,
    );

    path.lineTo(size.width, 0);

    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
