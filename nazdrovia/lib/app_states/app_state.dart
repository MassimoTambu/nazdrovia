import 'package:flutter/material.dart';
import 'package:nazdrovia/shared/services/services.dart';
import 'package:nazdrovia/shared/utils/utilities.dart';

class AppState with ChangeNotifier {
  final Themes _themes = Themes();
  final LocalStorageService _localStorage = LocalStorageService();

  AppState() {
    _localStorage.getInstance();
  }

  Themes get themes => _themes;
  LocalStorageService get localStorage => _localStorage;

  void changeCurrentTheme(String newTheme) {
    localStorage.setItem(Themes.lsThemeKey, newTheme);
    notifyListeners();
  }
}
