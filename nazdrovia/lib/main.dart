import 'package:flutter/material.dart';
import 'package:nazdrovia/models/states/theme_state.dart';
import 'package:nazdrovia/router/naz_app_router.gr.dart';
import 'package:nazdrovia/utils/services/local_storage_service.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(NazdroviaApp());
}

class NazdroviaApp extends StatelessWidget {
  Future<void> _initApplication() async {
    final prefs = await SharedPreferences.getInstance();
    LocalStorageService.init(prefs);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _initApplication(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return ChangeNotifierProvider<ThemeState>(
              create: (context) => ThemeState(),
              child: const _MaterialAppManager(),
            );
          } else {
            return CircularProgressIndicator();
          }
        });
  }
}

class _MaterialAppManager extends StatefulWidget {
  const _MaterialAppManager();
  @override
  State<_MaterialAppManager> createState() => _MaterialAppManagerState();
}

class _MaterialAppManagerState extends State<_MaterialAppManager> {
  late final AppRouter _appRouter;

  @override
  initState() {
    super.initState();
    _appRouter = AppRouter();
  }

  @override
  Widget build(BuildContext context) {
    final lightTheme = context.read<ThemeState>().themes.buildLightThemeData();
    final darkTheme = context.read<ThemeState>().themes.buildDarkThemeData();
    final themeMode = context.watch<ThemeState>().getCurrentTheme();

    return MaterialApp.router(
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: themeMode,
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}
