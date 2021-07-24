import 'package:flutter/material.dart';
import 'package:nazdrovia/shared/extensions/theme_extension.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        Icons.person,
        size: 25,
        color: context.theme().accentColor,
      ),
      onPressed: () {},
    );
  }
}
