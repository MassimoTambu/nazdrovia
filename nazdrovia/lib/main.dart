import 'package:flutter/material.dart';
import 'package:nazdrovia/app_state/app_state.dart';
import 'package:nazdrovia/screens/screens.dart';
import 'package:nazdrovia/shared/utilities/utilities.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<AppState>(
      create: (context) => AppState(),
      child: MaterialAppManager(),
    );
  }
}

class MaterialAppManager extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final lightTheme = Provider.of<AppState>(context, listen: false)
        .themes
        .buildLightThemeData();
    final darkTheme = Provider.of<AppState>(context, listen: false)
        .themes
        .buildDarkThemeData();
    final lsThemeKey = Provider.of<AppState>(context, listen: false)
        .localStorage
        .getItem(Themes.lsThemeKey);
    final themeMode =
        Provider.of<AppState>(context).themes.currentTheme(lsThemeKey);
    return MaterialApp(
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: themeMode,
      home: HomePage(),
    );
  }
}
