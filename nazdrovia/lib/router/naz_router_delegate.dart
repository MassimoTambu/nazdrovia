import 'package:flutter/material.dart';
import 'package:nazdrovia/app_states/route_app_state.dart';
import 'package:nazdrovia/router/naz_route_path.dart';
import 'package:nazdrovia/screens/not_found.dart';
import 'package:nazdrovia/screens/screens.dart';

class NazRouterDelegate extends RouterDelegate<NazRoutePath>
    with ChangeNotifier, PopNavigatorRouterDelegateMixin<NazRoutePath> {
  final GlobalKey<NavigatorState> navigatorKey;

  var routeAppState = RouteAppState();

  NazRouterDelegate() : navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: navigatorKey,
      pages: handlePages(),
      onPopPage: (route, result) {
        notifyListeners();
        return route.didPop(result);
      },
    );
  }

  @override
  Future<void> setNewRoutePath(NazRoutePath path) async {
    if (path is HomePath) {
      routeAppState.selectedPath = HomePath();
    } else if (path is AchievementsPath) {
      routeAppState.selectedPath = AchievementsPath();
    } else if (path is CreditsPath) {
      routeAppState.selectedPath = CreditsPath();
    } else if (path is OfficialCocktailsPath) {
      routeAppState.selectedPath = OfficialCocktailsPath();
    } else if (path is OtherGamesPath) {
      routeAppState.selectedPath = OtherGamesPath();
    } else if (path is PlayersPath) {
      routeAppState.selectedPath = PlayersPath();
    } else if (path is RulesPath) {
      routeAppState.selectedPath = RulesPath();
    } else {
      routeAppState.selectedPath = NotFoundPath();
    }
  }

  List<Page> handlePages() {
    return [
      if (routeAppState.selectedPath is HomePath)
        MaterialPage(child: HomePage()),
      if (routeAppState.selectedPath is AchievementsPath)
        throw 'Pagina non implementata',
      if (routeAppState.selectedPath is CreditsPath)
        throw 'Pagina non implementata',
      if (routeAppState.selectedPath is OfficialCocktailsPath)
        throw 'Pagina non implementata',
      if (routeAppState.selectedPath is OtherGamesPath)
        throw 'Pagina non implementata',
      if (routeAppState.selectedPath is PlayersPath)
        throw 'Pagina non implementata',
      if (routeAppState.selectedPath is RulesPath)
        throw 'Pagina non implementata',
      if (routeAppState.selectedPath is NotFoundPath)
        MaterialPage(child: NotFoundPage()),
    ];
  }
}
