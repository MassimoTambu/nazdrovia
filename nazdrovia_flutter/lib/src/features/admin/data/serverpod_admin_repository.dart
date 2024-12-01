import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nazdrovia_client/nazdrovia_client.dart';
import 'package:nazdrovia_flutter/src/core/logger_provider.dart';
import 'package:nazdrovia_flutter/src/core/serverpod_client_provider.dart';
import 'package:nazdrovia_flutter/src/features/admin/data/admin_repository.dart';

class ServerpodAdminRepository implements AdminRepository {
  const ServerpodAdminRepository(this.ref);

  final Ref ref;

  @override
  Future<List<RuleCategory>> getRuleCategoriesWithRules() async {
    ref.read(loggerProvider).d('getRulesWithCategories');
    try {
      return ref.read(serverpodProvider).ruleCategory.getAllWithRules();
    } catch (e, st) {
      ref
          .read(loggerProvider)
          .e('getRulesWithCategories failed', error: e, stackTrace: st);
      rethrow;
    }
  }

  @override
  Future<void> insertRule(Rule rule) async {
    ref.read(loggerProvider).d('insertRule');
    try {
      await ref.read(serverpodProvider).rule.insert(rule);
    } catch (e, st) {
      ref.read(loggerProvider).e('insertRule failed', error: e, stackTrace: st);
      rethrow;
    }
  }

  @override
  Future<void> updateRule(Rule rule) async {
    ref.read(loggerProvider).d('updateRule');
    try {
      await ref.read(serverpodProvider).rule.update(rule);
    } catch (e, st) {
      ref.read(loggerProvider).e('updateRule failed', error: e, stackTrace: st);
      rethrow;
    }
  }

  @override
  Future<void> insertRuleCategory(RuleCategory ruleCategory) async {
    ref.read(loggerProvider).d('insertRuleCategory');
    try {
      await ref.read(serverpodProvider).ruleCategory.insert(ruleCategory);
    } catch (e, st) {
      ref
          .read(loggerProvider)
          .e('insertRuleCategory failed', error: e, stackTrace: st);
      rethrow;
    }
  }

  @override
  Future<void> updateRuleCategory(RuleCategory ruleCategory) async {
    ref.read(loggerProvider).d('updateRuleCategory');
    try {
      await ref.read(serverpodProvider).ruleCategory.update(ruleCategory);
    } catch (e, st) {
      ref
          .read(loggerProvider)
          .e('updateRuleCategory failed', error: e, stackTrace: st);
      rethrow;
    }
  }

  @override
  Future<List<AchievementCategory>> getAchievementCategories() async {
    ref.read(loggerProvider).d('getAchievementCategories');
    try {
      return ref.read(serverpodProvider).achievementCategory.getAll();
    } catch (e, st) {
      ref
          .read(loggerProvider)
          .e('getAchievementCategories failed', error: e, stackTrace: st);
      rethrow;
    }
  }

  @override
  Future<List<AchievementCategory>>
      getAchievementCategoriesWithAchievements() async {
    ref.read(loggerProvider).d('getAchievementCategoriesWithAchievements');
    try {
      return ref
          .read(serverpodProvider)
          .achievementCategory
          .getAllWithAchievements();
    } catch (e, st) {
      ref.read(loggerProvider).e(
          'getAchievementCategoriesWithAchievements failed',
          error: e,
          stackTrace: st);
      rethrow;
    }
  }

  @override
  Future<void> insertAchievement(Achievement achievement) async {
    ref.read(loggerProvider).d('insertAchievement');
    try {
      await ref.read(serverpodProvider).achievement.insert(achievement);
    } catch (e, st) {
      ref
          .read(loggerProvider)
          .e('insertAchievement failed', error: e, stackTrace: st);
      rethrow;
    }
  }

  @override
  Future<void> updateAchievement(Achievement achievement) async {
    ref.read(loggerProvider).d('updateAchievement');
    try {
      await ref.read(serverpodProvider).achievement.update(achievement);
    } catch (e, st) {
      ref
          .read(loggerProvider)
          .e('updateAchievement failed', error: e, stackTrace: st);
      rethrow;
    }
  }

  @override
  Future<void> insertAchievementCategory(
      AchievementCategory achievementCategory) async {
    ref.read(loggerProvider).d('insertAchievementCategory');
    try {
      await ref
          .read(serverpodProvider)
          .achievementCategory
          .insert(achievementCategory);
    } catch (e, st) {
      ref
          .read(loggerProvider)
          .e('insertAchievementCategory failed', error: e, stackTrace: st);
      rethrow;
    }
  }

  @override
  Future<void> updateAchievementCategory(
      AchievementCategory achievementCategory) async {
    ref.read(loggerProvider).d('updateAchievementCategory');
    try {
      await ref
          .read(serverpodProvider)
          .achievementCategory
          .update(achievementCategory);
    } catch (e, st) {
      ref
          .read(loggerProvider)
          .e('updateAchievementCategory failed', error: e, stackTrace: st);
      rethrow;
    }
  }
}
