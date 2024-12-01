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

abstract class AchievementCategory implements _i1.SerializableModel {
  AchievementCategory._({
    this.id,
    required this.categoryId,
    this.category,
    int? displayOrder,
  }) : displayOrder = displayOrder ?? 0;

  factory AchievementCategory({
    int? id,
    required int categoryId,
    _i2.Texts? category,
    int? displayOrder,
  }) = _AchievementCategoryImpl;

  factory AchievementCategory.fromJson(Map<String, dynamic> jsonSerialization) {
    return AchievementCategory(
      id: jsonSerialization['id'] as int?,
      categoryId: jsonSerialization['categoryId'] as int,
      category: jsonSerialization['category'] == null
          ? null
          : _i2.Texts.fromJson(
              (jsonSerialization['category'] as Map<String, dynamic>)),
      displayOrder: jsonSerialization['displayOrder'] as int,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int categoryId;

  _i2.Texts? category;

  int displayOrder;

  AchievementCategory copyWith({
    int? id,
    int? categoryId,
    _i2.Texts? category,
    int? displayOrder,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'categoryId': categoryId,
      if (category != null) 'category': category?.toJson(),
      'displayOrder': displayOrder,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _AchievementCategoryImpl extends AchievementCategory {
  _AchievementCategoryImpl({
    int? id,
    required int categoryId,
    _i2.Texts? category,
    int? displayOrder,
  }) : super._(
          id: id,
          categoryId: categoryId,
          category: category,
          displayOrder: displayOrder,
        );

  @override
  AchievementCategory copyWith({
    Object? id = _Undefined,
    int? categoryId,
    Object? category = _Undefined,
    int? displayOrder,
  }) {
    return AchievementCategory(
      id: id is int? ? id : this.id,
      categoryId: categoryId ?? this.categoryId,
      category: category is _i2.Texts? ? category : this.category?.copyWith(),
      displayOrder: displayOrder ?? this.displayOrder,
    );
  }
}
