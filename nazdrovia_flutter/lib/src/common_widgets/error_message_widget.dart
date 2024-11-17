import 'package:flutter/material.dart';
import 'package:nazdrovia_flutter/src/localization/l10n.dart';

class ErrorMessageWidget extends StatelessWidget {
  const ErrorMessageWidget(this.errorMessage, {super.key});
  ErrorMessageWidget.generic({super.key})
      : errorMessage = Translations.current.somethingWentWrong;
  final String errorMessage;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(Icons.warning, size: 40),
          Text(
            errorMessage,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }
}
