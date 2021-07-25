import 'package:flutter/material.dart';
import 'package:nazdrovia/shared/services/local_storage_service.dart';
import 'package:nazdrovia/shared/utils/utilities.dart';

class ThemeState with ChangeNotifier {
  final _themes = Themes();
  final _localStorage = LocalStorageService();
  final lsThemeKey = 'THEME';
  final lightTheme = 'Light Theme';
  final darkTheme = 'Dark Theme';
  var isDarkTheme = true;

  ThemeState() {
    _localStorage.getInstance();
  }

  Themes get themes => _themes;

  void changeCurrentTheme(bool isDarkTheme) {
    final currentTheme = isDarkTheme ? darkTheme : lightTheme;
    this.isDarkTheme = isDarkTheme;

    _localStorage.setItem(lsThemeKey, currentTheme);
    notifyListeners();
  }

  ThemeMode getCurrentTheme() {
    final theme = _localStorage.getItem(lsThemeKey);
    if (theme == lightTheme) {
      return ThemeMode.light;
    }
    return ThemeMode.dark;
  }
}
