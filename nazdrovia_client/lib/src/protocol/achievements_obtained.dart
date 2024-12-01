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
import 'players.dart' as _i2;
import 'achievements.dart' as _i3;

abstract class CompletedAchievements implements _i1.SerializableModel {
  CompletedAchievements._({
    this.id,
    required this.playerId,
    this.player,
    required this.achievementId,
    this.achievement,
  });

  factory CompletedAchievements({
    int? id,
    required int playerId,
    _i2.Player? player,
    required int achievementId,
    _i3.Achievement? achievement,
  }) = _CompletedAchievementsImpl;

  factory CompletedAchievements.fromJson(
      Map<String, dynamic> jsonSerialization) {
    return CompletedAchievements(
      id: jsonSerialization['id'] as int?,
      playerId: jsonSerialization['playerId'] as int,
      player: jsonSerialization['player'] == null
          ? null
          : _i2.Player.fromJson(
              (jsonSerialization['player'] as Map<String, dynamic>)),
      achievementId: jsonSerialization['achievementId'] as int,
      achievement: jsonSerialization['achievement'] == null
          ? null
          : _i3.Achievement.fromJson(
              (jsonSerialization['achievement'] as Map<String, dynamic>)),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int playerId;

  _i2.Player? player;

  int achievementId;

  _i3.Achievement? achievement;

  CompletedAchievements copyWith({
    int? id,
    int? playerId,
    _i2.Player? player,
    int? achievementId,
    _i3.Achievement? achievement,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'playerId': playerId,
      if (player != null) 'player': player?.toJson(),
      'achievementId': achievementId,
      if (achievement != null) 'achievement': achievement?.toJson(),
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CompletedAchievementsImpl extends CompletedAchievements {
  _CompletedAchievementsImpl({
    int? id,
    required int playerId,
    _i2.Player? player,
    required int achievementId,
    _i3.Achievement? achievement,
  }) : super._(
          id: id,
          playerId: playerId,
          player: player,
          achievementId: achievementId,
          achievement: achievement,
        );

  @override
  CompletedAchievements copyWith({
    Object? id = _Undefined,
    int? playerId,
    Object? player = _Undefined,
    int? achievementId,
    Object? achievement = _Undefined,
  }) {
    return CompletedAchievements(
      id: id is int? ? id : this.id,
      playerId: playerId ?? this.playerId,
      player: player is _i2.Player? ? player : this.player?.copyWith(),
      achievementId: achievementId ?? this.achievementId,
      achievement: achievement is _i3.Achievement?
          ? achievement
          : this.achievement?.copyWith(),
    );
  }
}
