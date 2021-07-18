import 'package:flutter/material.dart';
import 'package:nazdrovia/app_states/route_app_state.dart';
import 'package:nazdrovia/router/naz_route_path.dart';
import 'package:nazdrovia/pages/not_found.dart';
import 'package:nazdrovia/pages/pages.dart';

class NazRouterDelegate extends RouterDelegate<NazPath>
    with ChangeNotifier, PopNavigatorRouterDelegateMixin<NazPath> {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  RouteAppState? _routeAppState;

  NazRouterDelegate() {
    _routeAppState = RouteAppState()..addListener(notifyListeners);
  }

  RouteAppState? get appState => _routeAppState;
  set appState(RouteAppState? value) {
    if (value == appState) return;
    _routeAppState = value;
    notifyListeners();
  }

  /*
  Importantissimo! Questo getter va a notificare il metodo
  "restoreRouteInformation" del RouteInfomationParser quando navighiamo
  interagendo con l'app
  */
  NazPath? get currentConfiguration {
    return _routeAppState!.selectedPath;
  }

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: navigatorKey,
      pages: handlePages(),
      onPopPage: (route, result) {
        print('onPopPage');
        return route.didPop(result);
      },
    );
  }

  @override
  Future<void> setNewRoutePath(NazPath path) async {
    if (_routeAppState!.selectedPath != path) {
      _routeAppState!.selectedPath = path;
    }
  }

  List<Page> handlePages() {
    final selectedPath = appState!.selectedPath;

    return [
      if (selectedPath is HomePath)
        MaterialPage(
          key: ValueKey(selectedPath),
          child: HomePage(),
        )
      else if (selectedPath is AchievementsPath)
        MaterialPage(
          key: ValueKey(selectedPath),
          child: AchievementsPage(),
        )
      else if (selectedPath is CreditsPath)
        MaterialPage(
          key: ValueKey(selectedPath),
          child: CreditsPage(),
        )
      else if (selectedPath is OfficialCocktailsPath)
        MaterialPage(
          key: ValueKey(selectedPath),
          child: OfficialCocktailsPage(),
        )
      else if (selectedPath is OtherGamesPath)
        MaterialPage(
          key: ValueKey(selectedPath),
          child: OtherGamesPage(),
        )
      else if (selectedPath is PlayersPath)
        MaterialPage(
          key: ValueKey(selectedPath),
          child: PlayersPage(),
        )
      else if (selectedPath is RulesPath)
        MaterialPage(
          key: ValueKey(selectedPath),
          child: RulesPage(),
        )
      else if (selectedPath is NotFoundPath)
        MaterialPage(
          key: ValueKey(selectedPath),
          child: NotFoundPage(),
        )
      else
        throw '''Main Path not managed!
        Path class: $selectedPath
        '''
    ];
  }
}
