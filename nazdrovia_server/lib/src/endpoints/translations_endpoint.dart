import 'package:nazdrovia_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

class TranslationEndpoint extends Endpoint {
  Future<List<String>> getLanguageCodes(Session session) async {
    return (await session.db
            .unsafeQuery('SELECT DISTINCT language_code FROM translations'))
        .map((d) => d.first)
        .cast<String>()
        .toList();
  }

  Future<void> insert(Session session, Translation translation) async {
    await Translation.db.insertRow(session, translation);
  }

  Future<void> update(Session session, Translation translation) async {
    await Translation.db.updateRow(session, translation);
  }

  Future<void> delete(Session session, Translation translation) async {
    await Translation.db.deleteRow(session, translation);
  }
}
