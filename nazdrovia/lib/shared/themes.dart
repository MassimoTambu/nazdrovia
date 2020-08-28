import 'package:flutter/material.dart';

class Themes {
  static String lsThemeKey = 'THEME';
  static String lightTheme = 'Light Theme';
  static String darkTheme = 'Dark Theme';

  static ThemeData buildLightThemeData() {
    return ThemeData(
      brightness: Brightness.light,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      primaryColor: Color.fromARGB(255, 56, 121, 240),
      accentColor: Color.fromARGB(255, 64, 144, 18),
      errorColor: Color.fromARGB(255, 244, 91, 3),
      indicatorColor: Color.fromARGB(255, 56, 121, 240),
      unselectedWidgetColor: Color.fromARGB(255, 129, 147, 174),
      backgroundColor: Color.fromARGB(255, 242, 241, 240),
      scaffoldBackgroundColor: Colors.white,
      textTheme: TextTheme(),
    );
  }

  static ThemeData buildDarkThemeData() {
    return ThemeData(
      brightness: Brightness.dark,
      primarySwatch: Colors.orange,
    );
  }
}
