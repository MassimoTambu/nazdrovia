import 'package:flutter/material.dart';
import 'package:nazdrovia/app_states/app_state.dart';
import 'package:nazdrovia/router/naz_route_information_parser.dart';
import 'package:nazdrovia/router/naz_router_delegate.dart';
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
      child: _MaterialAppManager(),
    );
  }
}

class _MaterialAppManager extends StatelessWidget {
  final _routerDelegate = NazRouterDelegate();
  final _routeInformationParser = NazRouteInformationParser();

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
    return MaterialApp.router(
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: themeMode,
      routerDelegate: _routerDelegate,
      routeInformationParser: _routeInformationParser,
    );
  }
}
