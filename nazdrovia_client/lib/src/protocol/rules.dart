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

abstract class Rule implements _i1.SerializableModel {
  Rule._({
    this.id,
    this.number,
    this.title,
    required this.description,
    required this.ruleCategoryId,
    this.ruleCategory,
    int? displayOrder,
  }) : displayOrder = displayOrder ?? 0;

  factory Rule({
    int? id,
    String? number,
    String? title,
    required String description,
    required int ruleCategoryId,
    _i2.RuleCategory? ruleCategory,
    int? displayOrder,
  }) = _RuleImpl;

  factory Rule.fromJson(Map<String, dynamic> jsonSerialization) {
    return Rule(
      id: jsonSerialization['id'] as int?,
      number: jsonSerialization['number'] as String?,
      title: jsonSerialization['title'] as String?,
      description: jsonSerialization['description'] as String,
      ruleCategoryId: jsonSerialization['ruleCategoryId'] as int,
      ruleCategory: jsonSerialization['ruleCategory'] == null
          ? null
          : _i2.RuleCategory.fromJson(
              (jsonSerialization['ruleCategory'] as Map<String, dynamic>)),
      displayOrder: jsonSerialization['displayOrder'] as int,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String? number;

  String? title;

  String description;

  int ruleCategoryId;

  _i2.RuleCategory? ruleCategory;

  int displayOrder;

  Rule copyWith({
    int? id,
    String? number,
    String? title,
    String? description,
    int? ruleCategoryId,
    _i2.RuleCategory? ruleCategory,
    int? displayOrder,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      if (number != null) 'number': number,
      if (title != null) 'title': title,
      'description': description,
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
    String? title,
    required String description,
    required int ruleCategoryId,
    _i2.RuleCategory? ruleCategory,
    int? displayOrder,
  }) : super._(
          id: id,
          number: number,
          title: title,
          description: description,
          ruleCategoryId: ruleCategoryId,
          ruleCategory: ruleCategory,
          displayOrder: displayOrder,
        );

  @override
  Rule copyWith({
    Object? id = _Undefined,
    Object? number = _Undefined,
    Object? title = _Undefined,
    String? description,
    int? ruleCategoryId,
    Object? ruleCategory = _Undefined,
    int? displayOrder,
  }) {
    return Rule(
      id: id is int? ? id : this.id,
      number: number is String? ? number : this.number,
      title: title is String? ? title : this.title,
      description: description ?? this.description,
      ruleCategoryId: ruleCategoryId ?? this.ruleCategoryId,
      ruleCategory: ruleCategory is _i2.RuleCategory?
          ? ruleCategory
          : this.ruleCategory?.copyWith(),
      displayOrder: displayOrder ?? this.displayOrder,
    );
  }
}
