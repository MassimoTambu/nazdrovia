import 'package:nazdrovia_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

class PlayerEndpoint extends Endpoint {
  Future<List<Player>> getAll(Session session) async {
    return Player.db.find(session);
  }

  Future<List<Player>> getAllWithAchievements(Session session) async {
    return Player.db.find(
      session,
      include: Player.include(
          completedAchievements: CompletedAchievements.includeList(
              include: CompletedAchievements.include(
                  achievement: Achievement.include()))),
      orderByList: (t) => [
        Order(column: t.completedAchievements.count(), orderDescending: true),
        Order(column: t.name),
      ],
    );
  }
}
