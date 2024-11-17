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

abstract class Achievement implements _i1.SerializableModel {
  Achievement._({
    this.id,
    required this.title,
    required this.description,
    required this.nasScore,
    required this.categoryId,
    this.category,
    this.image,
    this.playersWithAchievement,
    int? displayOrder,
  }) : displayOrder = displayOrder ?? 0;

  factory Achievement({
    int? id,
    required String title,
    required String description,
    required int nasScore,
    required int categoryId,
    _i2.AchievementCategory? category,
    String? image,
    List<_i2.CompletedAchievements>? playersWithAchievement,
    int? displayOrder,
  }) = _AchievementImpl;

  factory Achievement.fromJson(Map<String, dynamic> jsonSerialization) {
    return Achievement(
      id: jsonSerialization['id'] as int?,
      title: jsonSerialization['title'] as String,
      description: jsonSerialization['description'] as String,
      nasScore: jsonSerialization['nasScore'] as int,
      categoryId: jsonSerialization['categoryId'] as int,
      category: jsonSerialization['category'] == null
          ? null
          : _i2.AchievementCategory.fromJson(
              (jsonSerialization['category'] as Map<String, dynamic>)),
      image: jsonSerialization['image'] as String?,
      playersWithAchievement: (jsonSerialization['playersWithAchievement']
              as List?)
          ?.map((e) =>
              _i2.CompletedAchievements.fromJson((e as Map<String, dynamic>)))
          .toList(),
      displayOrder: jsonSerialization['displayOrder'] as int,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String title;

  String description;

  int nasScore;

  int categoryId;

  _i2.AchievementCategory? category;

  String? image;

  List<_i2.CompletedAchievements>? playersWithAchievement;

  int displayOrder;

  Achievement copyWith({
    int? id,
    String? title,
    String? description,
    int? nasScore,
    int? categoryId,
    _i2.AchievementCategory? category,
    String? image,
    List<_i2.CompletedAchievements>? playersWithAchievement,
    int? displayOrder,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'title': title,
      'description': description,
      'nasScore': nasScore,
      'categoryId': categoryId,
      if (category != null) 'category': category?.toJson(),
      if (image != null) 'image': image,
      if (playersWithAchievement != null)
        'playersWithAchievement':
            playersWithAchievement?.toJson(valueToJson: (v) => v.toJson()),
      'displayOrder': displayOrder,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _AchievementImpl extends Achievement {
  _AchievementImpl({
    int? id,
    required String title,
    required String description,
    required int nasScore,
    required int categoryId,
    _i2.AchievementCategory? category,
    String? image,
    List<_i2.CompletedAchievements>? playersWithAchievement,
    int? displayOrder,
  }) : super._(
          id: id,
          title: title,
          description: description,
          nasScore: nasScore,
          categoryId: categoryId,
          category: category,
          image: image,
          playersWithAchievement: playersWithAchievement,
          displayOrder: displayOrder,
        );

  @override
  Achievement copyWith({
    Object? id = _Undefined,
    String? title,
    String? description,
    int? nasScore,
    int? categoryId,
    Object? category = _Undefined,
    Object? image = _Undefined,
    Object? playersWithAchievement = _Undefined,
    int? displayOrder,
  }) {
    return Achievement(
      id: id is int? ? id : this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      nasScore: nasScore ?? this.nasScore,
      categoryId: categoryId ?? this.categoryId,
      category: category is _i2.AchievementCategory?
          ? category
          : this.category?.copyWith(),
      image: image is String? ? image : this.image,
      playersWithAchievement: playersWithAchievement
              is List<_i2.CompletedAchievements>?
          ? playersWithAchievement
          : this.playersWithAchievement?.map((e0) => e0.copyWith()).toList(),
      displayOrder: displayOrder ?? this.displayOrder,
    );
  }
}
