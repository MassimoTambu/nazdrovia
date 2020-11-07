import 'package:flutter/material.dart';
import 'package:nazdrovia/shared/services/services.dart';
import 'package:nazdrovia/shared/utilities/utilities.dart';

class AppState with ChangeNotifier {
  final Themes _themes = Themes();
  final LocalStorage _localStorage = LocalStorage();

  AppState() {
    _localStorage.getInstance();
  }

  Themes get themes => _themes;
  LocalStorage get localStorage => _localStorage;

  void changeCurrentTheme(String newTheme) {
    localStorage.setItem(Themes.lsThemeKey, newTheme);
    notifyListeners();
  }
}
