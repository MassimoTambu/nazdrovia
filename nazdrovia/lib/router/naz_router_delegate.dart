import 'package:flutter/material.dart';
import 'package:nazdrovia/app_states/route_app_state.dart';
import 'package:nazdrovia/router/naz_route_path.dart';
import 'package:nazdrovia/pages/not_found.dart';
import 'package:nazdrovia/pages/pages.dart';
import 'package:nazdrovia/shared/models/pages.dart';

class NazRouterDelegate extends RouterDelegate<NazRoutePath>
    with ChangeNotifier, PopNavigatorRouterDelegateMixin<NazRoutePath> {
  final GlobalKey<NavigatorState> navigatorKey;

  var routeAppState = RouteAppState();

  NazRouterDelegate() : navigatorKey = GlobalKey<NavigatorState>();
  // non so a cosa serva
  // {
  //   routeAppState.addListener(notifyListeners);
  // }

  /*
  Importantissimo! Questo getter va a notificare il metodo
  "restoreRouteInformation" del RouteInfomationParser quando navighiamo
  interagendo con l'app
  */
  NazRoutePath get currentConfiguration {
    return NazPathManager.findNazPath(routeAppState.selectedPath);
  }

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: navigatorKey,
      pages: handlePages(),
      onPopPage: (route, result) {
        print('onPopPage');
        print(result);
        notifyListeners();
        return route.didPop(result);
      },
    );
  }

  @override
  Future<void> setNewRoutePath(NazRoutePath path) async {
    routeAppState.selectedPath = NazPathManager.findNazPath(path);
  }

  List<Page> handlePages() {
    return [
      if (routeAppState.selectedPath is HomePath)
        MaterialPage(
          key: ValueKey(routeAppState.selectedPath),
          child: HomePage(),
        ),
      if (routeAppState.selectedPath is AchievementsPath)
        MaterialPage(
          key: ValueKey(routeAppState.selectedPath),
          child: AchievementsPage(),
        ),
      if (routeAppState.selectedPath is CreditsPath)
        MaterialPage(
          key: ValueKey(routeAppState.selectedPath),
          child: CreditsPage(),
        ),
      if (routeAppState.selectedPath is OfficialCocktailsPath)
        MaterialPage(
          key: ValueKey(routeAppState.selectedPath),
          child: OfficialCocktailsPage(),
        ),
      if (routeAppState.selectedPath is OtherGamesPath)
        MaterialPage(
          key: ValueKey(routeAppState.selectedPath),
          child: OtherGamesPage(),
        ),
      if (routeAppState.selectedPath is PlayersPath)
        MaterialPage(
          key: ValueKey(routeAppState.selectedPath),
          child: PlayersPage(),
        ),
      if (routeAppState.selectedPath is RulesPath)
        MaterialPage(
          key: ValueKey(routeAppState.selectedPath),
          child: RulesPage(),
        ),
      if (routeAppState.selectedPath is NotFoundPath)
        MaterialPage(
          key: ValueKey(routeAppState.selectedPath),
          child: NotFoundPage(),
        ),
    ];
  }

  void navigateToPath(BuildContext context, NazDataPage page) {
    routeAppState.selectedPath = page.path;
    notifyListeners();
  }
}
