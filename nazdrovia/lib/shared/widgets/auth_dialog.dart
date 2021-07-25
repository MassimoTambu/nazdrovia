import 'package:flutter/material.dart';
import 'package:nazdrovia/states/auth_dialog_state.dart';
import 'package:provider/provider.dart';

class AuthDialog extends StatelessWidget {
  AuthDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<AuthDialogState>(
      create: (context) => AuthDialogState(),
      builder: (context, child) {
        return Dialog(
          child: Form(
            key: context.read<AuthDialogState>().formKey,
            child: Column(
              children: [
                Opacity(
                  opacity: context.watch<AuthDialogState>().isLoading ? 1 : 0,
                  child: const LinearProgressIndicator(),
                ),
                const Text('Login'),
                TextFormField(
                  decoration: const InputDecoration(labelText: 'Utente'),
                  validator: context.read<AuthDialogState>().emptyValidator,
                ),
                TextFormField(
                  validator: context.read<AuthDialogState>().emptyValidator,
                ),
                _ActionButtons(
                  context.read<AuthDialogState>().closeDialog,
                  context.read<AuthDialogState>().submit,
                ),
              ],
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
