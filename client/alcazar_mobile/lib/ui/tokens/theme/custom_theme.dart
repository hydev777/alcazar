import 'package:flutter/material.dart';

class CustomTheme {
  static ThemeData lightThemeData(BuildContext context) {
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: Colors.blue,
    );
  }

  static ThemeData darkThemeData() {
    return ThemeData(
      useMaterial3: true,
    );
  }
}
