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
import 'texts.dart' as _i2;

abstract class Translation implements _i1.SerializableModel {
  Translation._({
    this.id,
    required this.textId,
    this.text,
    required this.languageCode,
    required this.translatedText,
  });

  factory Translation({
    int? id,
    required int textId,
    _i2.Texts? text,
    required String languageCode,
    required String translatedText,
  }) = _TranslationImpl;

  factory Translation.fromJson(Map<String, dynamic> jsonSerialization) {
    return Translation(
      id: jsonSerialization['id'] as int?,
      textId: jsonSerialization['textId'] as int,
      text: jsonSerialization['text'] == null
          ? null
          : _i2.Texts.fromJson(
              (jsonSerialization['text'] as Map<String, dynamic>)),
      languageCode: jsonSerialization['languageCode'] as String,
      translatedText: jsonSerialization['translatedText'] as String,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int textId;

  _i2.Texts? text;

  String languageCode;

  String translatedText;

  Translation copyWith({
    int? id,
    int? textId,
    _i2.Texts? text,
    String? languageCode,
    String? translatedText,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'textId': textId,
      if (text != null) 'text': text?.toJson(),
      'languageCode': languageCode,
      'translatedText': translatedText,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _TranslationImpl extends Translation {
  _TranslationImpl({
    int? id,
    required int textId,
    _i2.Texts? text,
    required String languageCode,
    required String translatedText,
  }) : super._(
          id: id,
          textId: textId,
          text: text,
          languageCode: languageCode,
          translatedText: translatedText,
        );

  @override
  Translation copyWith({
    Object? id = _Undefined,
    int? textId,
    Object? text = _Undefined,
    String? languageCode,
    String? translatedText,
  }) {
    return Translation(
      id: id is int? ? id : this.id,
      textId: textId ?? this.textId,
      text: text is _i2.Texts? ? text : this.text?.copyWith(),
      languageCode: languageCode ?? this.languageCode,
      translatedText: translatedText ?? this.translatedText,
    );
  }
}
