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
import 'rule_categories.dart' as _i3;

abstract class Rule implements _i1.SerializableModel {
  Rule._({
    this.id,
    this.number,
    required this.titleId,
    this.title,
    required this.descriptionId,
    this.description,
    required this.ruleCategoryId,
    this.ruleCategory,
    int? displayOrder,
  }) : displayOrder = displayOrder ?? 0;

  factory Rule({
    int? id,
    String? number,
    required int titleId,
    _i2.Texts? title,
    required int descriptionId,
    _i2.Texts? description,
    required int ruleCategoryId,
    _i3.RuleCategory? ruleCategory,
    int? displayOrder,
  }) = _RuleImpl;

  factory Rule.fromJson(Map<String, dynamic> jsonSerialization) {
    return Rule(
      id: jsonSerialization['id'] as int?,
      number: jsonSerialization['number'] as String?,
      titleId: jsonSerialization['titleId'] as int,
      title: jsonSerialization['title'] == null
          ? null
          : _i2.Texts.fromJson(
              (jsonSerialization['title'] as Map<String, dynamic>)),
      descriptionId: jsonSerialization['descriptionId'] as int,
      description: jsonSerialization['description'] == null
          ? null
          : _i2.Texts.fromJson(
              (jsonSerialization['description'] as Map<String, dynamic>)),
      ruleCategoryId: jsonSerialization['ruleCategoryId'] as int,
      ruleCategory: jsonSerialization['ruleCategory'] == null
          ? null
          : _i3.RuleCategory.fromJson(
              (jsonSerialization['ruleCategory'] as Map<String, dynamic>)),
      displayOrder: jsonSerialization['displayOrder'] as int,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String? number;

  int titleId;

  _i2.Texts? title;

  int descriptionId;

  _i2.Texts? description;

  int ruleCategoryId;

  _i3.RuleCategory? ruleCategory;

  int displayOrder;

  Rule copyWith({
    int? id,
    String? number,
    int? titleId,
    _i2.Texts? title,
    int? descriptionId,
    _i2.Texts? description,
    int? ruleCategoryId,
    _i3.RuleCategory? ruleCategory,
    int? displayOrder,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      if (number != null) 'number': number,
      'titleId': titleId,
      if (title != null) 'title': title?.toJson(),
      'descriptionId': descriptionId,
      if (description != null) 'description': description?.toJson(),
      'ruleCategoryId': ruleCategoryId,
      if (ruleCategory != null) 'ruleCategory': ruleCategory?.toJson(),
      'displayOrder': displayOrder,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _RuleImpl extends Rule {
  _RuleImpl({
    int? id,
    String? number,
    required int titleId,
    _i2.Texts? title,
    required int descriptionId,
    _i2.Texts? description,
    required int ruleCategoryId,
    _i3.RuleCategory? ruleCategory,
    int? displayOrder,
  }) : super._(
          id: id,
          number: number,
          titleId: titleId,
          title: title,
          descriptionId: descriptionId,
          description: description,
          ruleCategoryId: ruleCategoryId,
          ruleCategory: ruleCategory,
          displayOrder: displayOrder,
        );

  @override
  Rule copyWith({
    Object? id = _Undefined,
    Object? number = _Undefined,
    int? titleId,
    Object? title = _Undefined,
    int? descriptionId,
    Object? description = _Undefined,
    int? ruleCategoryId,
    Object? ruleCategory = _Undefined,
    int? displayOrder,
  }) {
    return Rule(
      id: id is int? ? id : this.id,
      number: number is String? ? number : this.number,
      titleId: titleId ?? this.titleId,
      title: title is _i2.Texts? ? title : this.title?.copyWith(),
      descriptionId: descriptionId ?? this.descriptionId,
      description: description is _i2.Texts?
          ? description
          : this.description?.copyWith(),
      ruleCategoryId: ruleCategoryId ?? this.ruleCategoryId,
      ruleCategory: ruleCategory is _i3.RuleCategory?
          ? ruleCategory
          : this.ruleCategory?.copyWith(),
      displayOrder: displayOrder ?? this.displayOrder,
    );
  }
}
