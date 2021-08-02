import 'package:flutter/material.dart';
import 'package:nazdrovia/models/extensions/theme_extension.dart';
import 'package:nazdrovia/utils/services/dialog_service.dart';

class LoginButton extends StatelessWidget {
  final DialogService _dialogService;

  LoginButton({Key? key})
      : _dialogService = DialogService(),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        Icons.person,
        size: 25,
        color: context.theme().accentColor,
      ),
      onPressed: () => _dialogService.showAuthDialog(context),
    );
  }
}
