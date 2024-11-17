/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters

library protocol; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'achievement_categories.dart' as _i2;
import 'achievements.dart' as _i3;
import 'achievements_obtained.dart' as _i4;
import 'players.dart' as _i5;
import 'rule_categories.dart' as _i6;
import 'rules.dart' as _i7;
import 'protocol.dart' as _i8;
import 'package:nazdrovia_client/src/protocol/achievements.dart' as _i9;
import 'package:nazdrovia_client/src/protocol/players.dart' as _i10;
import 'package:nazdrovia_client/src/protocol/rule_categories.dart' as _i11;
export 'achievement_categories.dart';
export 'achievements.dart';
export 'achievements_obtained.dart';
export 'players.dart';
export 'rule_categories.dart';
export 'rules.dart';
export 'client.dart';

class Protocol extends _i1.SerializationManager {
  Protocol._();

  factory Protocol() => _instance;

  static final Protocol _instance = Protocol._();

  @override
  T deserialize<T>(
    dynamic data, [
    Type? t,
  ]) {
    t ??= T;
    if (t == _i2.AchievementCategory) {
      return _i2.AchievementCategory.fromJson(data) as T;
    }
    if (t == _i3.Achievement) {
      return _i3.Achievement.fromJson(data) as T;
    }
    if (t == _i4.CompletedAchievements) {
      return _i4.CompletedAchievements.fromJson(data) as T;
    }
    if (t == _i5.Player) {
      return _i5.Player.fromJson(data) as T;
    }
    if (t == _i6.RuleCategory) {
      return _i6.RuleCategory.fromJson(data) as T;
    }
    if (t == _i7.Rule) {
      return _i7.Rule.fromJson(data) as T;
    }
    if (t == _i1.getType<_i2.AchievementCategory?>()) {
      return (data != null ? _i2.AchievementCategory.fromJson(data) : null)
          as T;
    }
    if (t == _i1.getType<_i3.Achievement?>()) {
      return (data != null ? _i3.Achievement.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i4.CompletedAchievements?>()) {
      return (data != null ? _i4.CompletedAchievements.fromJson(data) : null)
          as T;
    }
    if (t == _i1.getType<_i5.Player?>()) {
      return (data != null ? _i5.Player.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i6.RuleCategory?>()) {
      return (data != null ? _i6.RuleCategory.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i7.Rule?>()) {
      return (data != null ? _i7.Rule.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<List<_i8.CompletedAchievements>?>()) {
      return (data != null
          ? (data as List)
              .map((e) => deserialize<_i8.CompletedAchievements>(e))
              .toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<_i8.CompletedAchievements>?>()) {
      return (data != null
          ? (data as List)
              .map((e) => deserialize<_i8.CompletedAchievements>(e))
              .toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<_i8.Rule>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i8.Rule>(e)).toList()
          : null) as dynamic;
    }
    if (t == List<_i9.Achievement>) {
      return (data as List).map((e) => deserialize<_i9.Achievement>(e)).toList()
          as dynamic;
    }
    if (t == List<_i10.Player>) {
      return (data as List).map((e) => deserialize<_i10.Player>(e)).toList()
          as dynamic;
    }
    if (t == List<_i11.RuleCategory>) {
      return (data as List)
          .map((e) => deserialize<_i11.RuleCategory>(e))
          .toList() as dynamic;
    }
    return super.deserialize<T>(data, t);
  }

  @override
  String? getClassNameForObject(Object? data) {
    String? className = super.getClassNameForObject(data);
    if (className != null) return className;
    if (data is _i2.AchievementCategory) {
      return 'AchievementCategory';
    }
    if (data is _i3.Achievement) {
      return 'Achievement';
    }
    if (data is _i4.CompletedAchievements) {
      return 'CompletedAchievements';
    }
    if (data is _i5.Player) {
      return 'Player';
    }
    if (data is _i6.RuleCategory) {
      return 'RuleCategory';
    }
    if (data is _i7.Rule) {
      return 'Rule';
    }
    return null;
  }

  @override
  dynamic deserializeByClassName(Map<String, dynamic> data) {
    if (data['className'] == 'AchievementCategory') {
      return deserialize<_i2.AchievementCategory>(data['data']);
    }
    if (data['className'] == 'Achievement') {
      return deserialize<_i3.Achievement>(data['data']);
    }
    if (data['className'] == 'CompletedAchievements') {
      return deserialize<_i4.CompletedAchievements>(data['data']);
    }
    if (data['className'] == 'Player') {
      return deserialize<_i5.Player>(data['data']);
    }
    if (data['className'] == 'RuleCategory') {
      return deserialize<_i6.RuleCategory>(data['data']);
    }
    if (data['className'] == 'Rule') {
      return deserialize<_i7.Rule>(data['data']);
    }
    return super.deserializeByClassName(data);
  }
}
