import 'package:nazdrovia_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

class TextsEndpoint extends Endpoint {
  Future<List<Texts>> getAllWithTranslations(Session session) async {
    return Texts.db.find(
      session,
      include: Texts.include(
        translations: Translation.includeList(),
      ),
    );
  }

  Future<void> insert(Session session, Texts texts) async {
    await Texts.db.insertRow(session, texts);
  }

  Future<void> update(Session session, Texts texts) async {
    await Texts.db.updateRow(session, texts);
  }

  Future<void> delete(Session session, Texts texts) async {
    await Texts.db.deleteRow(session, texts);
  }
}
