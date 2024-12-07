import 'dart:async';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nazdrovia_flutter/src/features/texts/data/texts_repository.dart';
import 'package:nazdrovia_flutter/src/localization/l10n.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_startup_provider.g.dart';

@Riverpod(keepAlive: true)
Future<void> appStartup(Ref ref) async {
  await Future.wait([
    Translations.load(Translations.delegate.supportedLocales.first),
    ref.watch(textsWithTranslationsFutureProvider.future),
    // ! THIS MUST BE read otherwise the provider will be re-initialized
    // ! every time the token changes (ex: new login)
    // TODO
    // ref.read(accessTokenNotifierProvider.future),
  ]);
  // TODO
  // unawaited(ref.read(sessionInfoNotifierProvider.future));
}
