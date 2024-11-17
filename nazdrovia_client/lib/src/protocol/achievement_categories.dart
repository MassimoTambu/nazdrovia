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

abstract class AchievementCategory implements _i1.SerializableModel {
  AchievementCategory._({
    this.id,
    required this.category,
    int? displayOrder,
  }) : displayOrder = displayOrder ?? 0;

  factory AchievementCategory({
    int? id,
    required String category,
    int? displayOrder,
  }) = _AchievementCategoryImpl;

  factory AchievementCategory.fromJson(Map<String, dynamic> jsonSerialization) {
    return AchievementCategory(
      id: jsonSerialization['id'] as int?,
      category: jsonSerialization['category'] as String,
      displayOrder: jsonSerialization['displayOrder'] as int,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String category;

  int displayOrder;

  AchievementCategory copyWith({
    int? id,
    String? category,
    int? displayOrder,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'category': category,
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
    required String category,
    int? displayOrder,
  }) : super._(
          id: id,
          category: category,
          displayOrder: displayOrder,
        );

  @override
  AchievementCategory copyWith({
    Object? id = _Undefined,
    String? category,
    int? displayOrder,
  }) {
    return AchievementCategory(
      id: id is int? ? id : this.id,
      category: category ?? this.category,
      displayOrder: displayOrder ?? this.displayOrder,
    );
  }
}
