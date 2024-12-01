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
import 'rules.dart' as _i3;

abstract class RuleCategory implements _i1.SerializableModel {
  RuleCategory._({
    this.id,
    required this.titleId,
    this.title,
    required this.prologueId,
    this.prologue,
    required this.epilogueId,
    this.epilogue,
    this.rules,
    int? displayOrder,
  }) : displayOrder = displayOrder ?? 0;

  factory RuleCategory({
    int? id,
    required int titleId,
    _i2.Texts? title,
    required int prologueId,
    _i2.Texts? prologue,
    required int epilogueId,
    _i2.Texts? epilogue,
    List<_i3.Rule>? rules,
    int? displayOrder,
  }) = _RuleCategoryImpl;

  factory RuleCategory.fromJson(Map<String, dynamic> jsonSerialization) {
    return RuleCategory(
      id: jsonSerialization['id'] as int?,
      titleId: jsonSerialization['titleId'] as int,
      title: jsonSerialization['title'] == null
          ? null
          : _i2.Texts.fromJson(
              (jsonSerialization['title'] as Map<String, dynamic>)),
      prologueId: jsonSerialization['prologueId'] as int,
      prologue: jsonSerialization['prologue'] == null
          ? null
          : _i2.Texts.fromJson(
              (jsonSerialization['prologue'] as Map<String, dynamic>)),
      epilogueId: jsonSerialization['epilogueId'] as int,
      epilogue: jsonSerialization['epilogue'] == null
          ? null
          : _i2.Texts.fromJson(
              (jsonSerialization['epilogue'] as Map<String, dynamic>)),
      rules: (jsonSerialization['rules'] as List?)
          ?.map((e) => _i3.Rule.fromJson((e as Map<String, dynamic>)))
          .toList(),
      displayOrder: jsonSerialization['displayOrder'] as int,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int titleId;

  _i2.Texts? title;

  int prologueId;

  _i2.Texts? prologue;

  int epilogueId;

  _i2.Texts? epilogue;

  List<_i3.Rule>? rules;

  int displayOrder;

  RuleCategory copyWith({
    int? id,
    int? titleId,
    _i2.Texts? title,
    int? prologueId,
    _i2.Texts? prologue,
    int? epilogueId,
    _i2.Texts? epilogue,
    List<_i3.Rule>? rules,
    int? displayOrder,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'titleId': titleId,
      if (title != null) 'title': title?.toJson(),
      'prologueId': prologueId,
      if (prologue != null) 'prologue': prologue?.toJson(),
      'epilogueId': epilogueId,
      if (epilogue != null) 'epilogue': epilogue?.toJson(),
      if (rules != null) 'rules': rules?.toJson(valueToJson: (v) => v.toJson()),
      'displayOrder': displayOrder,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _RuleCategoryImpl extends RuleCategory {
  _RuleCategoryImpl({
    int? id,
    required int titleId,
    _i2.Texts? title,
    required int prologueId,
    _i2.Texts? prologue,
    required int epilogueId,
    _i2.Texts? epilogue,
    List<_i3.Rule>? rules,
    int? displayOrder,
  }) : super._(
          id: id,
          titleId: titleId,
          title: title,
          prologueId: prologueId,
          prologue: prologue,
          epilogueId: epilogueId,
          epilogue: epilogue,
          rules: rules,
          displayOrder: displayOrder,
        );

  @override
  RuleCategory copyWith({
    Object? id = _Undefined,
    int? titleId,
    Object? title = _Undefined,
    int? prologueId,
    Object? prologue = _Undefined,
    int? epilogueId,
    Object? epilogue = _Undefined,
    Object? rules = _Undefined,
    int? displayOrder,
  }) {
    return RuleCategory(
      id: id is int? ? id : this.id,
      titleId: titleId ?? this.titleId,
      title: title is _i2.Texts? ? title : this.title?.copyWith(),
      prologueId: prologueId ?? this.prologueId,
      prologue: prologue is _i2.Texts? ? prologue : this.prologue?.copyWith(),
      epilogueId: epilogueId ?? this.epilogueId,
      epilogue: epilogue is _i2.Texts? ? epilogue : this.epilogue?.copyWith(),
      rules: rules is List<_i3.Rule>?
          ? rules
          : this.rules?.map((e0) => e0.copyWith()).toList(),
      displayOrder: displayOrder ?? this.displayOrder,
    );
  }
}
