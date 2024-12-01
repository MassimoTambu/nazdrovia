import 'package:nazdrovia_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

class AchievementEndpoint extends Endpoint {
  Future<List<Achievement>> getAll(Session session) async {
    return Achievement.db.find(session, orderBy: (t) => t.displayOrder);
  }

  Future<List<Achievement>> getAllWithCategories(Session session) async {
    return Achievement.db.find(
      session,
      include: Achievement.include(
        category: AchievementCategory.include(),
      ),
      orderByList: (t) => [
        Order(column: t.category.displayOrder),
        Order(column: t.displayOrder),
      ],
    );
  }

  Future<void> insert(Session session, Achievement achievement) async {
    await Achievement.db.insertRow(session, achievement);
  }

  Future<void> update(Session session, Achievement achievement) async {
    await Achievement.db.updateRow(session, achievement);
  }

  Future<void> delete(Session session, Achievement achievement) async {
    await Achievement.db.deleteRow(session, achievement);
  }
}
