import 'package:nazdrovia_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

class RuleEndpoint extends Endpoint {
  Future<void> insert(Session session, Rule rule) async {
    await Rule.db.insertRow(session, rule);
  }

  Future<void> update(Session session, Rule rule) async {
    await Rule.db.updateRow(session, rule);
  }

  Future<void> delete(Session session, Rule rule) async {
    await Rule.db.deleteRow(session, rule);
  }
}
