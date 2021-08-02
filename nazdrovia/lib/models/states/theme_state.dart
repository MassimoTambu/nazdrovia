import 'package:flutter/material.dart';
import 'package:nazdrovia/config/themes/themes.dart';
import 'package:nazdrovia/models/enums/local_storage_enum.dart';
import 'package:nazdrovia/utils/services/local_storage_service.dart';

class ThemeState with ChangeNotifier {
  final _themes = Themes();
  final lsThemeKey = LocalStorageEnum.Theme;
  final lightTheme = 'Light Theme';
  final darkTheme = 'Dark Theme';
  var isDarkTheme = true;

  Themes get themes => _themes;

  void changeCurrentTheme(bool isDarkTheme) async {
    final currentTheme = isDarkTheme ? darkTheme : lightTheme;
    this.isDarkTheme = isDarkTheme;

    await LocalStorageService.set<String>(lsThemeKey, currentTheme);
    notifyListeners();
  }

  ThemeMode getCurrentTheme() {
    final theme = LocalStorageService.get<String>(lsThemeKey);
    if (theme == lightTheme) {
      return ThemeMode.light;
    }
    return ThemeMode.dark;
  }
}
