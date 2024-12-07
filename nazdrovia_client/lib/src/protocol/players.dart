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
import 'completed_achievements.dart' as _i2;

abstract class Player implements _i1.SerializableModel {
  Player._({
    this.id,
    required this.name,
    required this.lastName,
    required this.catchPhrase,
    required this.penalities,
    required this.isOut,
    this.image,
    this.completedAchievements,
  });

  factory Player({
    int? id,
    required String name,
    required String lastName,
    required String catchPhrase,
    required int penalities,
    required bool isOut,
    String? image,
    List<_i2.CompletedAchievements>? completedAchievements,
  }) = _PlayerImpl;

  factory Player.fromJson(Map<String, dynamic> jsonSerialization) {
    return Player(
      id: jsonSerialization['id'] as int?,
      name: jsonSerialization['name'] as String,
      lastName: jsonSerialization['lastName'] as String,
      catchPhrase: jsonSerialization['catchPhrase'] as String,
      penalities: jsonSerialization['penalities'] as int,
      isOut: jsonSerialization['isOut'] as bool,
      image: jsonSerialization['image'] as String?,
      completedAchievements: (jsonSerialization['completedAchievements']
              as List?)
          ?.map((e) =>
              _i2.CompletedAchievements.fromJson((e as Map<String, dynamic>)))
          .toList(),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String name;

  String lastName;

  String catchPhrase;

  int penalities;

  bool isOut;

  String? image;

  List<_i2.CompletedAchievements>? completedAchievements;

  Player copyWith({
    int? id,
    String? name,
    String? lastName,
    String? catchPhrase,
    int? penalities,
    bool? isOut,
    String? image,
    List<_i2.CompletedAchievements>? completedAchievements,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'name': name,
      'lastName': lastName,
      'catchPhrase': catchPhrase,
      'penalities': penalities,
      'isOut': isOut,
      if (image != null) 'image': image,
      if (completedAchievements != null)
        'completedAchievements':
            completedAchievements?.toJson(valueToJson: (v) => v.toJson()),
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _PlayerImpl extends Player {
  _PlayerImpl({
    int? id,
    required String name,
    required String lastName,
    required String catchPhrase,
    required int penalities,
    required bool isOut,
    String? image,
    List<_i2.CompletedAchievements>? completedAchievements,
  }) : super._(
          id: id,
          name: name,
          lastName: lastName,
          catchPhrase: catchPhrase,
          penalities: penalities,
          isOut: isOut,
          image: image,
          completedAchievements: completedAchievements,
        );

  @override
  Player copyWith({
    Object? id = _Undefined,
    String? name,
    String? lastName,
    String? catchPhrase,
    int? penalities,
    bool? isOut,
    Object? image = _Undefined,
    Object? completedAchievements = _Undefined,
  }) {
    return Player(
      id: id is int? ? id : this.id,
      name: name ?? this.name,
      lastName: lastName ?? this.lastName,
      catchPhrase: catchPhrase ?? this.catchPhrase,
      penalities: penalities ?? this.penalities,
      isOut: isOut ?? this.isOut,
      image: image is String? ? image : this.image,
      completedAchievements:
          completedAchievements is List<_i2.CompletedAchievements>?
              ? completedAchievements
              : this.completedAchievements?.map((e0) => e0.copyWith()).toList(),
    );
  }
}
