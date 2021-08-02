import 'package:flutter/material.dart';
import 'package:nazdrovia/models/states/auth_dialog_state.dart';
import 'package:provider/provider.dart';
import 'package:nazdrovia/models/extensions/theme_extension.dart';

class AuthDialog extends StatelessWidget {
  AuthDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<AuthDialogState>(
      create: (context) => AuthDialogState(),
      builder: (context, child) {
        final state = context.read<AuthDialogState>();
        return Dialog(
          child: Form(
            key: state.formKey,
            child: Container(
              width: 300,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Opacity(
                    opacity: context.watch<AuthDialogState>().isLoading ? 1 : 0,
                    child: LinearProgressIndicator(
                      value: state.loaderValue,
                    ),
                  ),
                  Text(
                    'Login',
                    style: TextStyle(
                        fontSize:
                            context.theme().textTheme.headline6!.fontSize),
                  ),
                  TextFormField(
                    decoration: const InputDecoration(labelText: 'Utente'),
                    validator: state.emptyValidator,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(labelText: 'Password'),
                    validator: state.emptyValidator,
                  ),
                  _ActionButtons(
                    state.closeDialog,
                    state.submit,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class _ActionButtons extends StatelessWidget {
  final Function(BuildContext) _closeDialog;
  final Function(BuildContext) _submit;

  const _ActionButtons(this._closeDialog, this._submit, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextButton(
          onPressed: () => _closeDialog(context),
          child: const Text('Annulla'),
        ),
        TextButton(
          onPressed: () => _submit(context),
          child: const Text('Conferma'),
        ),
      ],
    );
  }
}
