import 'package:flutter/material.dart';
import 'package:nazdrovia/router/naz_route_path.dart';
import 'package:nazdrovia/shared/models/models.dart';

class NazRouteInformationParser extends RouteInformationParser<NazPath> {
  @override
  Future<NazPath> parseRouteInformation(
      RouteInformation routeInformation) async {
    final uri = Uri.parse(routeInformation.location);

    if (uri.pathSegments.isEmpty) {
      return HomePath();
    }
    if (uri.pathSegments.isNotEmpty) {
      if (uri.pathSegments.length == 1) {
        return handleFirstLevelPaths(uri);
      }
    }
    return NotFoundPath();
  }

  /*
  serve per aggiornare la barra del browser contenente l'url quando
  stiamo aggiornando la navigazione tramite interazione con l'app
  */
  @override
  RouteInformation restoreRouteInformation(NazPath configuration) {
    if (configuration is HomePath) {
      return RouteInformation(location: Routes.HOME);
    } else if (configuration is RulesPath) {
      return RouteInformation(location: Routes.RULES);
    } else if (configuration is AchievementsPath) {
      return RouteInformation(location: Routes.ACHIEVEMENTS);
    } else if (configuration is PlayersPath) {
      return RouteInformation(location: Routes.PLAYERS);
    } else if (configuration is OfficialCocktailsPath) {
      return RouteInformation(location: Routes.OFFICIALCOCKTAILS);
    } else if (configuration is CreditsPath) {
      return RouteInformation(location: Routes.CREDITS);
    } else if (configuration is OtherGamesPath) {
      return RouteInformation(location: Routes.OTHERGAMES);
    } else {
      return RouteInformation(location: Routes.NOTFOUND);
    }
  }

  NazPath handleFirstLevelPaths(Uri uri) {
    if (uri.pathSegments.first == Routes.HOME) {
      return HomePath();
    } else if (uri.pathSegments.first == Routes.RULES) {
      return RulesPath();
    } else if (uri.pathSegments.first == Routes.ACHIEVEMENTS) {
      return AchievementsPath();
    } else if (uri.pathSegments.first == Routes.PLAYERS) {
      return PlayersPath();
    } else if (uri.pathSegments.first == Routes.OFFICIALCOCKTAILS) {
      return OfficialCocktailsPath();
    } else if (uri.pathSegments.first == Routes.CREDITS) {
      return CreditsPath();
    } else if (uri.pathSegments.first == Routes.OTHERGAMES) {
      return OtherGamesPath();
    } else {
      return NotFoundPath();
    }
  }
}
