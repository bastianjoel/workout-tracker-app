import 'package:flutter/material.dart';

abstract final class AppTheme {
  static ThemeData lightTheme = ThemeData(
    colorScheme: ColorScheme.light(
      primary: Colors.blue,
      onPrimary: Colors.white,
      secondary: Colors.green,
      onSecondary: Colors.white,
    ),
  );

  static ThemeData darkTheme = ThemeData(
    colorScheme: ColorScheme.dark(
      primary: Colors.blue,
      onPrimary: Colors.white,
      secondary: Colors.green,
      onSecondary: Colors.white,
    ),
  );
}
