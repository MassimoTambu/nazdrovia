import 'package:shared_preferences/shared_preferences.dart';

class LocalStorageService {
  static LocalStorageService manager;
  static SharedPreferences _prefs;

  Future<LocalStorageService> getInstance() async {
    if (manager == null || _prefs == null) {
      manager = LocalStorageService();
      _prefs = await SharedPreferences.getInstance();
    }
    return manager;
  }

  String getItem(String key) {
    return _prefs?.getString(key) ?? null;
  }

  void setItem(String key, String value) {
    _prefs.setString(key, value);
  }
}
