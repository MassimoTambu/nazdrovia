import 'package:flutter/material.dart';
import 'package:nazdrovia/models/extensions/theme_extension.dart';
import 'package:nazdrovia/models/states/theme_state.dart';
import 'package:provider/provider.dart';

class ThemeButton extends StatelessWidget {
  const ThemeButton();

  @override
  Widget build(BuildContext context) {
    final isDarkTheme = context.read<ThemeState>().isDarkTheme;
    final icon = Icon(
      isDarkTheme ? Icons.brightness_3 : Icons.brightness_7,
      size: 25,
      color: context.theme().accentColor,
    );
    return IconButton(
        onPressed: () =>
            context.read<ThemeState>().changeCurrentTheme(!isDarkTheme),
        icon: icon);
  }
}
