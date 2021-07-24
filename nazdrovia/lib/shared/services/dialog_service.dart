import 'package:flutter/material.dart';
import 'package:nazdrovia/shared/widgets/auth_dialog.dart';

class DialogService {
  void showAuthDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AuthDialog(),
    );
  }
}
