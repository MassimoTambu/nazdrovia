import 'package:nazdrovia/models/enums/local_storage_enum.dart';
import 'package:nazdrovia/models/extensions/local_storage_types_extension.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocalStorageService {
  static final _singleton = LocalStorageService();
  static late final SharedPreferences _prefs;

  factory LocalStorageService() {
    return _singleton;
  }

  LocalStorageService.init(SharedPreferences prefs) {
    _prefs = prefs;
  }

  /// Ritorna un Set di tutte le keys
  static Set<String> getKeys() {
    return _prefs.getKeys();
  }

  /// Legge dal local-storage un dato in base alla [key] passata.
  /// Ritorna il valore trovato.
  static T? get<T>(LocalStorageEnum lsKey) {
    final key = lsKey.toShortString();

    var value;

    switch (T) {
      case bool:
        value = _prefs.getBool(key);
        break;
      case double:
        value = _prefs.getDouble(key);
        break;
      case int:
        value = _prefs.getInt(key);
        break;
      case String:
        value = _prefs.getString(key);
        break;
      case List:
        value = _prefs.getStringList(key);
        break;
      default:
        value = _prefs.get(key);
    }

    return value;
  }

  /// Inserisce nel local-storage un [value] referenziato alla [key] passata.
  /// Se [value] è null, equivale a chiamare [remove()] basandosi su [key].
  /// Ritorna un bool che determina se l'inserimento è avvenuto correttamente.
  static Future<bool> set<T>(LocalStorageEnum lsKey, T value) async {
    final key = lsKey.toShortString();

    bool result;

    switch (T) {
      case bool:
        result = await _prefs.setBool(key, value as bool);
        break;
      case double:
        result = await _prefs.setDouble(key, value as double);
        break;
      case int:
        result = await _prefs.setInt(key, value as int);
        break;
      case String:
        result = await _prefs.setString(key, value as String);
        break;
      case List:
        if (value is List<String>) {
          result = await _prefs.setStringList(key, value);
          break;
        }
        throw 'Type $value not managed. Only List with type String is acceptable';
      default:
        throw 'Type $value not managed.';
    }
    return result;
  }

  /// Verifica se [key] esiste nel local-storage.
  /// Ritorna un bool che determina se [key] esiste o meno.
  static bool containsKey(LocalStorageEnum lsKey) {
    final key = lsKey.toShortString();

    return _prefs.containsKey(key);
  }

  /// Rimuove dal local-storage il rapporto chiave-valore basandosi sulla [key] passata.
  /// Ritorna un bool che determina se la rimozione è avvenuta correttamente.
  static Future<bool> remove(LocalStorageEnum lsKey) async {
    final key = lsKey.toShortString();

    return _prefs.remove(key);
  }

  /// Rimuove tutti i dati salvati nel local-storage.
  /// Ritorna un bool che determina se la rimozione è avvenuta correttamente.
  static Future<bool> clear() async {
    return _prefs.clear();
  }
}
