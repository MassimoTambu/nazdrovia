import 'package:nazdrovia_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

class AchievementEndpoint extends Endpoint {
  Future<List<Achievement>> getAll(Session session) async {
    return Achievement.db.find(session, orderBy: (t) => t.displayOrder);
  }

  Future<List<Achievement>> getAllWithCategories(Session session) async {
    return Achievement.db.find(
      session,
      include: Achievement.include(category: AchievementCategory.include()),
      orderByList: (t) => [
        Order(column: t.category.displayOrder),
        Order(column: t.displayOrder),
      ],
    );
  }
}
