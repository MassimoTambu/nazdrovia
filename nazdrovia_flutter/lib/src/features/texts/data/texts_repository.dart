import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nazdrovia_client/nazdrovia_client.dart';
import 'package:nazdrovia_flutter/src/core/selected_language_code_provider.dart';
import 'package:nazdrovia_flutter/src/features/texts/data/serverpod_texts_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'texts_repository.g.dart';

abstract class TextsRepository {
  Future<List<String>> getLanguageCodes();
  Future<List<Texts>> getTextsWithTranslations();
}

@riverpod
TextsRepository textsRepository(Ref ref) {
  return ServerpodTextsRepository(ref);
}

@riverpod
Future<List<String>> languageCodesFuture(Ref ref) async {
  final languageCodes =
      await ref.watch(textsRepositoryProvider).getLanguageCodes();
  languageCodes.insert(0, defaultLanguageCode);
  return languageCodes;
}

@riverpod
Future<List<Texts>> textsWithTranslationsFuture(Ref ref) {
  return ref.watch(textsRepositoryProvider).getTextsWithTranslations();
}

@riverpod
String text(Ref ref, int textId) {
  final texts = ref.watch(textsWithTranslationsFutureProvider).value;
  final languageCode = ref.watch(selectedLanguageCodeProvider);
  final text = texts?.where((t) => t.id == textId).firstOrNull;

  if (text == null || text.translations == null) {
    return '';
  }

  if (languageCode == defaultLanguageCode) {
    return text.originalText;
  }

  final translation = text.translations!
      .where((t) => t.languageCode == languageCode)
      .firstOrNull;
  if (translation == null) {
    return text.originalText;
  }

  return translation.translatedText;
}
