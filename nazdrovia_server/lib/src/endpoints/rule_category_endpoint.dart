import 'package:nazdrovia_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

class RuleCategoryEndpoint extends Endpoint {
  Future<List<RuleCategory>> getAllWithRules(Session session) async {
    return RuleCategory.db.find(
      session,
      include: RuleCategory.include(
        rules: Rule.includeList(
          orderBy: (t) => t.displayOrder,
          include: Rule.include(),
        ),
      ),
      orderBy: (t) => t.displayOrder,
    );
  }

  Future<void> insert(Session session, RuleCategory category) async {
    await RuleCategory.db.insertRow(session, category);
  }

  Future<void> update(Session session, RuleCategory category) async {
    await RuleCategory.db.updateRow(session, category);
  }

  Future<void> delete(Session session, RuleCategory category) async {
    await RuleCategory.db.deleteRow(session, category);
  }
}
