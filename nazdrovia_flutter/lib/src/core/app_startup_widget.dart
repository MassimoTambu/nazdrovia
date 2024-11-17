import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nazdrovia_flutter/src/app.dart';
import 'package:nazdrovia_flutter/src/common_widgets/async_value_widget.dart';
import 'package:nazdrovia_flutter/src/common_widgets/primary_button_widget.dart';
import 'package:nazdrovia_flutter/src/core/app_startup_provider.dart';
import 'package:nazdrovia_flutter/src/localization/l10n.dart';

class AppStartupWidget extends ConsumerWidget {
  const AppStartupWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appStartup = ref.watch(appStartupProvider);
    return AsyncValueWidget(
      value: appStartup,
      data: (_) => const MyApp(),
      loader: const MaterialApp(
        home: Scaffold(
          body: Center(child: CircularProgressIndicator.adaptive()),
        ),
      ),
      error: MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.red,
            title: Text(Translations.current.anErrorOccurred),
          ),
          body: Center(
            child: PrimaryButtonWidget(
              text: Translations.current.retry,
              icon: const Icon(Icons.replay_outlined),
              onPressed: () {
                // TODO: Implement retry
                // ref.invalidate(accessTokenNotifierProvider);
              },
            ),
          ),
        ),
      ),
    );
  }
}
