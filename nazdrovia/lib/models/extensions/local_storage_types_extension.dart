import 'package:nazdrovia/models/enums/local_storage_enum.dart';

extension ParseToString on LocalStorageEnum {
  /// Stampa in string il nome dell'enum
  String toShortString() {
    return this.toString().split('.').last;
  }
}
