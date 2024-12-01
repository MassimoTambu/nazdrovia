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
import 'achievement_categories.dart' as _i2;
import 'achievements.dart' as _i3;
import 'achievements_obtained.dart' as _i4;
import 'players.dart' as _i5;
import 'rule_categories.dart' as _i6;
import 'rules.dart' as _i7;
import 'texts.dart' as _i8;
import 'translations.dart' as _i9;
import 'package:nazdrovia_client/src/protocol/achievement_categories.dart'
    as _i10;
import 'package:nazdrovia_client/src/protocol/achievements.dart' as _i11;
import 'package:nazdrovia_client/src/protocol/players.dart' as _i12;
import 'package:nazdrovia_client/src/protocol/rule_categories.dart' as _i13;
import 'package:nazdrovia_client/src/protocol/texts.dart' as _i14;
export 'achievement_categories.dart';
export 'achievements.dart';
export 'achievements_obtained.dart';
export 'players.dart';
export 'rule_categories.dart';
export 'rules.dart';
export 'texts.dart';
export 'translations.dart';
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
    if (t == _i8.Texts) {
      return _i8.Texts.fromJson(data) as T;
    }
    if (t == _i9.Translation) {
      return _i9.Translation.fromJson(data) as T;
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
    if (t == _i1.getType<_i8.Texts?>()) {
      return (data != null ? _i8.Texts.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i9.Translation?>()) {
      return (data != null ? _i9.Translation.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<List<_i3.Achievement>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i3.Achievement>(e)).toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<_i4.CompletedAchievements>?>()) {
      return (data != null
          ? (data as List)
              .map((e) => deserialize<_i4.CompletedAchievements>(e))
              .toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<_i4.CompletedAchievements>?>()) {
      return (data != null
          ? (data as List)
              .map((e) => deserialize<_i4.CompletedAchievements>(e))
              .toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<_i7.Rule>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i7.Rule>(e)).toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<_i9.Translation>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i9.Translation>(e)).toList()
          : null) as dynamic;
    }
    if (t == List<_i10.AchievementCategory>) {
      return (data as List)
          .map((e) => deserialize<_i10.AchievementCategory>(e))
          .toList() as dynamic;
    }
    if (t == List<_i11.Achievement>) {
      return (data as List)
          .map((e) => deserialize<_i11.Achievement>(e))
          .toList() as dynamic;
    }
    if (t == List<_i12.Player>) {
      return (data as List).map((e) => deserialize<_i12.Player>(e)).toList()
          as dynamic;
    }
    if (t == List<_i13.RuleCategory>) {
      return (data as List)
          .map((e) => deserialize<_i13.RuleCategory>(e))
          .toList() as dynamic;
    }
    if (t == List<_i14.Texts>) {
      return (data as List).map((e) => deserialize<_i14.Texts>(e)).toList()
          as dynamic;
    }
    if (t == List<String>) {
      return (data as List).map((e) => deserialize<String>(e)).toList()
          as dynamic;
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
    if (data is _i8.Texts) {
      return 'Texts';
    }
    if (data is _i9.Translation) {
      return 'Translation';
    }
    return null;
  }

  @override
  dynamic deserializeByClassName(Map<String, dynamic> data) {
    var dataClassName = data['className'];
    if (dataClassName is! String) {
      return super.deserializeByClassName(data);
    }
    if (dataClassName == 'AchievementCategory') {
      return deserialize<_i2.AchievementCategory>(data['data']);
    }
    if (dataClassName == 'Achievement') {
      return deserialize<_i3.Achievement>(data['data']);
    }
    if (dataClassName == 'CompletedAchievements') {
      return deserialize<_i4.CompletedAchievements>(data['data']);
    }
    if (dataClassName == 'Player') {
      return deserialize<_i5.Player>(data['data']);
    }
    if (dataClassName == 'RuleCategory') {
      return deserialize<_i6.RuleCategory>(data['data']);
    }
    if (dataClassName == 'Rule') {
      return deserialize<_i7.Rule>(data['data']);
    }
    if (dataClassName == 'Texts') {
      return deserialize<_i8.Texts>(data['data']);
    }
    if (dataClassName == 'Translation') {
      return deserialize<_i9.Translation>(data['data']);
    }
    return super.deserializeByClassName(data);
  }
}
