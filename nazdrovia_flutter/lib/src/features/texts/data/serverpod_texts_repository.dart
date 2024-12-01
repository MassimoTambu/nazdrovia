import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nazdrovia_client/nazdrovia_client.dart';
import 'package:nazdrovia_flutter/src/core/logger_provider.dart';
import 'package:nazdrovia_flutter/src/core/serverpod_client_provider.dart';
import 'package:nazdrovia_flutter/src/features/texts/data/texts_repository.dart';

class ServerpodTextsRepository implements TextsRepository {
  const ServerpodTextsRepository(this.ref);

  final Ref ref;

  @override
  Future<List<String>> getLanguageCodes() {
    ref.read(loggerProvider).d('getLanguageCodes');
    try {
      return ref.read(serverpodProvider).translation.getLanguageCodes();
    } catch (e, st) {
      ref
          .read(loggerProvider)
          .e('getLanguageCodes failed', error: e, stackTrace: st);
      rethrow;
    }
  }

  @override
  Future<List<Texts>> getTextsWithTranslations() {
    ref.read(loggerProvider).d('getTextsWithTranslations');
    try {
      return ref.read(serverpodProvider).texts.getAllWithTranslations();
    } catch (e, st) {
      ref
          .read(loggerProvider)
          .e('getTextsWithTranslations failed', error: e, stackTrace: st);
      rethrow;
    }
  }
}
