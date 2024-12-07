import 'package:nazdrovia_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

class RuleEndpoint extends Endpoint {
  Future<void> insert(Session session, Rule rule) async {
    if (rule.title == null) throw Exception('Title must be set');
    if (rule.description == null) {
      throw Exception('Description must be set');
    }

    await session.db.transaction((transaction) async {
      var titleText = rule.title!;
      titleText = await Texts.db
          .insertRow(session, titleText, transaction: transaction);
      var descriptionText = rule.description!;
      descriptionText = await Texts.db
          .insertRow(session, descriptionText, transaction: transaction);

      rule = rule.copyWith(
        title: titleText,
        titleId: titleText.id,
        description: descriptionText,
        descriptionId: descriptionText.id,
      );

      await Rule.db.insertRow(session, rule, transaction: transaction);
    });
  }

  Future<void> update(Session session, Rule rule) async {
    await Rule.db.updateRow(session, rule);
  }

  Future<void> delete(Session session, Rule rule) async {
    await Rule.db.deleteRow(session, rule);
  }
}
