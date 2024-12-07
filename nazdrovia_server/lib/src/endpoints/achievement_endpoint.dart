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
    if (achievement.title == null) throw Exception('Title must be set');
    if (achievement.description == null) {
      throw Exception('Description must be set');
    }

    await session.db.transaction((transaction) async {
      var titleText = achievement.title!;
      titleText = await Texts.db
          .insertRow(session, titleText, transaction: transaction);
      var descriptionText = achievement.description!;
      descriptionText = await Texts.db
          .insertRow(session, descriptionText, transaction: transaction);

      achievement = achievement.copyWith(
        title: titleText,
        titleId: titleText.id,
        description: descriptionText,
        descriptionId: descriptionText.id,
      );

      await Achievement.db
          .insertRow(session, achievement, transaction: transaction);
    });
  }

  Future<void> update(Session session, Achievement achievement) async {
    await Achievement.db.updateRow(session, achievement);
  }

  Future<void> delete(Session session, Achievement achievement) async {
    await Achievement.db.deleteRow(session, achievement);
  }
}
