import 'package:nazdrovia_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

class RuleEndpoint extends Endpoint {
  Future<List<RuleCategory>> getAllWithCategories(Session session) async {
    return RuleCategory.db.find(
      session,
      include: RuleCategory.include(
          rules: Rule.includeList(orderBy: (t) => t.displayOrder)),
      orderBy: (t) => t.displayOrder,
    );
  }
}
