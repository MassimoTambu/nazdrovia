import 'package:flutter/material.dart';
import 'package:nazdrovia_flutter/src/localization/context_tr.dart';
import 'package:nazdrovia_flutter/src/routing/app_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'dialog_provider.g.dart';

@riverpod
class DialogNotifier extends _$DialogNotifier {
  @override
  DialogNotifier build() => this;

  static const dialogOkayButtonKey = Key('dialog_okay_button');
  static const dialogYesButtonKey = Key('dialog_yes_button');
  static const dialogNoButtonKey = Key('dialog_no_button');

  Future<void> showAlert(String title, String message) async {
    return showDialog(
      barrierDismissible: true,
      context: rootNavigatorKey.currentContext!,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title, textAlign: TextAlign.center),
          content: Text(message, textAlign: TextAlign.center),
          actions: <Widget>[
            TextButton(
              key: dialogOkayButtonKey,
              onPressed: () => Navigator.pop(context),
              child: Text(context.tr.okay),
            ),
          ],
        );
      },
    );
  }

  Future<bool> showChoice(String title, String message) async {
    final choiceResult = await showDialog<bool>(
      barrierDismissible: true,
      context: rootNavigatorKey.currentContext!,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title, textAlign: TextAlign.center),
          content: Text(message, textAlign: TextAlign.center),
          actions: <Widget>[
            TextButton(
              key: dialogYesButtonKey,
              onPressed: () => Navigator.pop(context, true),
              child: Text(context.tr.yes),
            ),
            TextButton(
              key: dialogNoButtonKey,
              onPressed: () => Navigator.pop(context, false),
              child: Text(context.tr.no),
            ),
          ],
        );
      },
    );

    return choiceResult ?? false;
  }
}
