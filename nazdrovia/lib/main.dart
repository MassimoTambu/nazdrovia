import 'package:flutter/material.dart';
import 'package:nazdrovia/app_states/app_state.dart';
import 'package:nazdrovia/router/naz_app_router.gr.dart';
import 'package:nazdrovia/shared/utils/utilities.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(NazdroviaApp());
}

class NazdroviaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<AppState>(
          create: (context) => AppState(),
        ),
      ],
      child: _MaterialAppManager(),
    );
  }
}

class _MaterialAppManager extends StatefulWidget {
  @override
  State<_MaterialAppManager> createState() => _MaterialAppManagerState();
}

class _MaterialAppManagerState extends State<_MaterialAppManager> {
  late AppRouter _appRouter;

  @override
  initState() {
    super.initState();
    _appRouter = AppRouter();
  }

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
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}
