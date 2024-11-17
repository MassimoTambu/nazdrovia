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
import 'protocol.dart' as _i2;

abstract class RuleCategory implements _i1.SerializableModel {
  RuleCategory._({
    this.id,
    required this.title,
    this.prologue,
    this.epilogue,
    this.rules,
    int? displayOrder,
  }) : displayOrder = displayOrder ?? 0;

  factory RuleCategory({
    int? id,
    required String title,
    String? prologue,
    String? epilogue,
    List<_i2.Rule>? rules,
    int? displayOrder,
  }) = _RuleCategoryImpl;

  factory RuleCategory.fromJson(Map<String, dynamic> jsonSerialization) {
    return RuleCategory(
      id: jsonSerialization['id'] as int?,
      title: jsonSerialization['title'] as String,
      prologue: jsonSerialization['prologue'] as String?,
      epilogue: jsonSerialization['epilogue'] as String?,
      rules: (jsonSerialization['rules'] as List?)
          ?.map((e) => _i2.Rule.fromJson((e as Map<String, dynamic>)))
          .toList(),
      displayOrder: jsonSerialization['displayOrder'] as int,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String title;

  String? prologue;

  String? epilogue;

  List<_i2.Rule>? rules;

  int displayOrder;

  RuleCategory copyWith({
    int? id,
    String? title,
    String? prologue,
    String? epilogue,
    List<_i2.Rule>? rules,
    int? displayOrder,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'title': title,
      if (prologue != null) 'prologue': prologue,
      if (epilogue != null) 'epilogue': epilogue,
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
    required String title,
    String? prologue,
    String? epilogue,
    List<_i2.Rule>? rules,
    int? displayOrder,
  }) : super._(
          id: id,
          title: title,
          prologue: prologue,
          epilogue: epilogue,
          rules: rules,
          displayOrder: displayOrder,
        );

  @override
  RuleCategory copyWith({
    Object? id = _Undefined,
    String? title,
    Object? prologue = _Undefined,
    Object? epilogue = _Undefined,
    Object? rules = _Undefined,
    int? displayOrder,
  }) {
    return RuleCategory(
      id: id is int? ? id : this.id,
      title: title ?? this.title,
      prologue: prologue is String? ? prologue : this.prologue,
      epilogue: epilogue is String? ? epilogue : this.epilogue,
      rules: rules is List<_i2.Rule>?
          ? rules
          : this.rules?.map((e0) => e0.copyWith()).toList(),
      displayOrder: displayOrder ?? this.displayOrder,
    );
  }
}
