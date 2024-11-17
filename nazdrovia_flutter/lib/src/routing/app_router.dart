import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:nazdrovia_flutter/src/routing/not_found_screen.dart';

part 'app_router.g.dart';

enum AppRoute {
  home(''),
  achievements('achievements'),
  credits('credits'),
  officialCocktails('official-cocktails'),
  otherGames('other-games'),
  players('players'),
  rules('rules');

  const AppRoute(this.name);

  final String name;
}

final rootNavigatorKey = GlobalKey<NavigatorState>();

@riverpod
GoRouter goRouter(Ref ref) {
  return GoRouter(
    navigatorKey: rootNavigatorKey,
    initialLocation: '/',
    debugLogDiagnostics: true,
    routes: [
      GoRoute(
        path: 'achievements',
        name: AppRoute.achievements.name,
        builder: (context, state) {
          // TODO
          return Container();
        },
      ),
      GoRoute(
        path: '/credits',
        name: AppRoute.credits.name,
        builder: (context, state) {
          // TODO
          return Container();
        },
      ),
      GoRoute(
        path: '/official-cocktails',
        name: AppRoute.officialCocktails.name,
        builder: (context, state) {
          // TODO
          return Container();
        },
      ),
      GoRoute(
        path: '/other-games',
        name: AppRoute.otherGames.name,
        builder: (context, state) {
          // TODO
          return Container();
        },
      ),
      GoRoute(
        path: '/players',
        name: AppRoute.players.name,
        builder: (context, state) {
          // TODO
          return Container();
        },
      ),
      GoRoute(
        path: '/rules',
        name: AppRoute.rules.name,
        builder: (context, state) {
          // TODO
          return Container();
        },
      ),
    ],
    errorBuilder: (context, state) => const NotFoundScreen(),
  );
}
