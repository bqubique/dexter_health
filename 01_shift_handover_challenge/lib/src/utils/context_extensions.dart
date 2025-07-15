import 'package:flutter/material.dart';

enum SuccessTypeEnum { success, neutral, error }

extension ContextExtensions on BuildContext {
  void showSnackbar({required String content, Color? backgroundColor}) {
    ScaffoldMessenger.of(this).showSnackBar(SnackBar(
      content: Text(content),
      backgroundColor: backgroundColor,
    ));
  }

  ThemeData get theme => Theme.of(this);
  ColorScheme get colorScheme => Theme.of(this).colorScheme;
  TextTheme get textTheme => Theme.of(this).textTheme;
  MediaQueryData get mediaQuery => MediaQuery.of(this);
  bool get isDark => Theme.of(this).colorScheme.brightness == Brightness.dark;
  Size get size => MediaQuery.of(this).size;
}
