/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'translations.dart' as _i2;

abstract class Texts implements _i1.SerializableModel {
  Texts._({
    this.id,
    required this.originalText,
    this.translations,
  });

  factory Texts({
    int? id,
    required String originalText,
    List<_i2.Translation>? translations,
  }) = _TextsImpl;

  factory Texts.fromJson(Map<String, dynamic> jsonSerialization) {
    return Texts(
      id: jsonSerialization['id'] as int?,
      originalText: jsonSerialization['originalText'] as String,
      translations: (jsonSerialization['translations'] as List?)
          ?.map((e) => _i2.Translation.fromJson((e as Map<String, dynamic>)))
          .toList(),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String originalText;

  List<_i2.Translation>? translations;

  Texts copyWith({
    int? id,
    String? originalText,
    List<_i2.Translation>? translations,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'originalText': originalText,
      if (translations != null)
        'translations': translations?.toJson(valueToJson: (v) => v.toJson()),
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _TextsImpl extends Texts {
  _TextsImpl({
    int? id,
    required String originalText,
    List<_i2.Translation>? translations,
  }) : super._(
          id: id,
          originalText: originalText,
          translations: translations,
        );

  @override
  Texts copyWith({
    Object? id = _Undefined,
    String? originalText,
    Object? translations = _Undefined,
  }) {
    return Texts(
      id: id is int? ? id : this.id,
      originalText: originalText ?? this.originalText,
      translations: translations is List<_i2.Translation>?
          ? translations
          : this.translations?.map((e0) => e0.copyWith()).toList(),
    );
  }
}
