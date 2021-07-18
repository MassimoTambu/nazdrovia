import 'package:flutter/material.dart';

class Themes {
  static String lsThemeKey = 'THEME';
  static String lightTheme = 'Light Theme';
  static String darkTheme = 'Dark Theme';
  static bool isLightTheme = false;
  TextTheme _textTheme = TextTheme();

  ThemeData buildLightThemeData() {
    return ThemeData(
      brightness: Brightness.light,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      primaryColor: Color.fromARGB(255, 56, 121, 240),
      accentColor: Color.fromARGB(255, 41, 182, 246),
      errorColor: Color.fromARGB(255, 255, 87, 34),
      indicatorColor: Color.fromARGB(255, 56, 121, 240),
      scaffoldBackgroundColor: Color.fromARGB(255, 233, 235, 238),
      backgroundColor: Colors.white,
      textTheme: _textTheme,
    );
  }

  ThemeData buildDarkThemeData() {
    return ThemeData(
      brightness: Brightness.dark,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      primaryColor: Color.fromARGB(255, 186, 104, 200),
      accentColor: Color.fromARGB(255, 253, 216, 53),
      errorColor: Color.fromARGB(255, 233, 30, 99),
      indicatorColor: Color.fromARGB(255, 56, 121, 240),
      scaffoldBackgroundColor: Color.fromARGB(255, 18, 18, 18),
      backgroundColor: Color.fromARGB(255, 66, 66, 66),
      textTheme: _textTheme,
    );
  }

  ThemeMode currentTheme(String? lsThemeKey) {
    if (lsThemeKey == lightTheme) {
      isLightTheme = true;
      return ThemeMode.light;
    }
    isLightTheme = false;
    return ThemeMode.dark;
  }
}
