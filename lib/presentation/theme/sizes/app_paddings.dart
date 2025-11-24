import 'package:flutter/widgets.dart';

abstract class AppPaddings {
  const AppPaddings._();

  static final textFieldContent = EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0);
  static final buttonContent = EdgeInsets.symmetric(horizontal: 24.0, vertical: 10.0);
  static final contentHorizontal = EdgeInsets.symmetric(horizontal: 24.0);
  static final buttonPadding = EdgeInsets.all(24.0);
}
