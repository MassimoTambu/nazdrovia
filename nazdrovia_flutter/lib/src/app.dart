import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nazdrovia_flutter/src/localization/l10n.dart';

import 'package:nazdrovia_flutter/src/localization/context_tr.dart';
import 'package:nazdrovia_flutter/src/routing/app_router.dart';

class MyApp extends HookConsumerWidget {
  const MyApp({super.key});

  static final scaffoldMessengerKey = GlobalKey<ScaffoldMessengerState>();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      routerConfig: ref.watch(goRouterProvider),
      debugShowCheckedModeBanner: false,
      restorationScopeId: 'app',
      onGenerateTitle: (BuildContext context) => context.tr.appBarTitle,
      localizationsDelegates: const [
        Translations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: Translations.delegate.supportedLocales,
      darkTheme: ThemeData(brightness: Brightness.light),
      themeMode: ThemeMode.light,
      scaffoldMessengerKey: scaffoldMessengerKey,
    );
  }
}
