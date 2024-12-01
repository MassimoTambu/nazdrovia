import 'dart:async';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:nazdrovia_client/nazdrovia_client.dart';
import 'package:nazdrovia_flutter/src/features/admin/data/serverpod_admin_repository.dart';

part 'admin_repository.g.dart';

abstract class AdminRepository {
  Future<List<RuleCategory>> getRuleCategoriesWithRules();
  Future<void> insertRule(Rule rule);
  Future<void> updateRule(Rule rule);
  Future<void> insertRuleCategory(RuleCategory ruleCategory);
  Future<void> updateRuleCategory(RuleCategory ruleCategory);
  Future<List<AchievementCategory>> getAchievementCategories();
  Future<List<AchievementCategory>> getAchievementCategoriesWithAchievements();
  Future<void> insertAchievement(Achievement achievement);
  Future<void> updateAchievement(Achievement achievement);
  Future<void> insertAchievementCategory(
      AchievementCategory achievementCategory);
  Future<void> updateAchievementCategory(
      AchievementCategory achievementCategory);
}

@riverpod
AdminRepository adminRepository(Ref ref) {
  return ServerpodAdminRepository(ref);
}

@riverpod
Future<List<RuleCategory>> ruleCategoriesWithRulesFuture(Ref ref) {
  return ref.watch(adminRepositoryProvider).getRuleCategoriesWithRules();
}

@riverpod
Future<void> insertRuleFuture(Ref ref, Rule rule) {
  return ref.read(adminRepositoryProvider).insertRule(rule);
}

@riverpod
Future<void> updateRuleFuture(Ref ref, Rule rule) {
  return ref.read(adminRepositoryProvider).updateRule(rule);
}

@riverpod
Future<void> insertRuleCategoryFuture(Ref ref, RuleCategory ruleCategory) {
  return ref.read(adminRepositoryProvider).insertRuleCategory(ruleCategory);
}

@riverpod
Future<void> updateRuleCategoryFuture(Ref ref, RuleCategory ruleCategory) {
  return ref.read(adminRepositoryProvider).updateRuleCategory(ruleCategory);
}

@riverpod
Future<List<AchievementCategory>> achievementCategoriesFuture(Ref ref) {
  return ref.watch(adminRepositoryProvider).getAchievementCategories();
}

@riverpod
Future<List<AchievementCategory>> achievementCategoriesWithAchievementsFuture(
    Ref ref) {
  return ref
      .watch(adminRepositoryProvider)
      .getAchievementCategoriesWithAchievements();
}

@riverpod
Future<void> insertAchievementFuture(Ref ref, Achievement achievement) {
  return ref.read(adminRepositoryProvider).insertAchievement(achievement);
}

@riverpod
Future<void> updateAchievementFuture(Ref ref, Achievement achievement) {
  return ref.read(adminRepositoryProvider).updateAchievement(achievement);
}

@riverpod
Future<void> insertAchievementCategoryFuture(
    Ref ref, AchievementCategory achievementCategory) {
  return ref
      .read(adminRepositoryProvider)
      .insertAchievementCategory(achievementCategory);
}

@riverpod
Future<void> updateAchievementCategoryFuture(
    Ref ref, AchievementCategory achievementCategory) {
  return ref
      .read(adminRepositoryProvider)
      .updateAchievementCategory(achievementCategory);
}
