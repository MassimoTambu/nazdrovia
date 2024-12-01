import 'package:nazdrovia_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

class AchievementCategoryEndpoint extends Endpoint {
  Future<List<AchievementCategory>> getAll(Session session) async {
    return AchievementCategory.db.find(
      session,
      orderBy: (t) => t.displayOrder,
    );
  }

  Future<List<AchievementCategory>> getAllWithAchievements(
    Session session,
  ) async {
    return AchievementCategory.db.find(
      session,
      include: AchievementCategory.include(
        achievements: Achievement.includeList(
          orderBy: (t) => t.displayOrder,
          include: Achievement.include(),
        ),
      ),
      orderBy: (t) => t.displayOrder,
    );
  }

  Future<void> insert(Session session, AchievementCategory category) async {
    await AchievementCategory.db.insertRow(session, category);
  }

  Future<void> update(Session session, AchievementCategory category) async {
    await AchievementCategory.db.updateRow(session, category);
  }

  Future<void> delete(Session session, AchievementCategory category) async {
    await AchievementCategory.db.deleteRow(session, category);
  }
}
