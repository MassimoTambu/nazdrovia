// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;

import '../ui/pages/pages.dart' as _i3;

class AppRouter extends _i1.RootStackRouter {
  AppRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i3.HomePage();
        }),
    AchievementsRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i3.AchievementsPage();
        }),
    CreditsRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i3.CreditsPage();
        }),
    NotFoundRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i3.NotFoundPage();
        }),
    OfficialCocktailsRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i3.OfficialCocktailsPage();
        }),
    OtherGamesRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i3.OtherGamesPage();
        }),
    PlayersRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i3.PlayersPage();
        }),
    RulesRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i3.RulesPage();
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(HomeRoute.name, path: '/'),
        _i1.RouteConfig(AchievementsRoute.name, path: '/achievements-page'),
        _i1.RouteConfig(CreditsRoute.name, path: '/credits-page'),
        _i1.RouteConfig(NotFoundRoute.name, path: '/not-found-page'),
        _i1.RouteConfig(OfficialCocktailsRoute.name,
            path: '/official-cocktails-page'),
        _i1.RouteConfig(OtherGamesRoute.name, path: '/other-games-page'),
        _i1.RouteConfig(PlayersRoute.name, path: '/players-page'),
        _i1.RouteConfig(RulesRoute.name, path: '/rules-page')
      ];
}

class HomeRoute extends _i1.PageRouteInfo {
  const HomeRoute() : super(name, path: '/');

  static const String name = 'HomeRoute';
}

class AchievementsRoute extends _i1.PageRouteInfo {
  const AchievementsRoute() : super(name, path: '/achievements-page');

  static const String name = 'AchievementsRoute';
}

class CreditsRoute extends _i1.PageRouteInfo {
  const CreditsRoute() : super(name, path: '/credits-page');

  static const String name = 'CreditsRoute';
}

class NotFoundRoute extends _i1.PageRouteInfo {
  const NotFoundRoute() : super(name, path: '/not-found-page');

  static const String name = 'NotFoundRoute';
}

class OfficialCocktailsRoute extends _i1.PageRouteInfo {
  const OfficialCocktailsRoute()
      : super(name, path: '/official-cocktails-page');

  static const String name = 'OfficialCocktailsRoute';
}

class OtherGamesRoute extends _i1.PageRouteInfo {
  const OtherGamesRoute() : super(name, path: '/other-games-page');

  static const String name = 'OtherGamesRoute';
}

class PlayersRoute extends _i1.PageRouteInfo {
  const PlayersRoute() : super(name, path: '/players-page');

  static const String name = 'PlayersRoute';
}

class RulesRoute extends _i1.PageRouteInfo {
  const RulesRoute() : super(name, path: '/rules-page');

  static const String name = 'RulesRoute';
}
