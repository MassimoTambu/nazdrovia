import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nazdrovia_flutter/src/features/admin/presentation/rules/admin_rule_list_screen.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:nazdrovia_flutter/src/common_widgets/not_found_screen.dart';

part 'app_router.g.dart';

enum AppRoute {
  home('home'),
  achievements('achievements'),
  credits('credits'),
  officialCocktails('official-cocktails'),
  otherGames('other-games'),
  players('players'),
  rules('rules'),
  admin('admin'),
  adminRules('admin-rules'),
  adminNewRule('admin-rule-new'),
  adminEditRule('admin-rule-edit'),
  adminAchievements('admin-achievements'),
  adminNewAchievement('admin-achievement-new'),
  adminEditAchievement('admin-achievement-edit'),
  pageNotFound('page-not-found');

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
        path: '/',
        name: AppRoute.home.name,
        builder: (context, state) {
          // TODO
          return AdminRuleListScreen();
        },
      ),
      GoRoute(
        path: '/achievements',
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
      GoRoute(
        path: '/admin',
        name: AppRoute.admin.name,
        builder: (context, state) {
          // TODO
          return AdminRuleListScreen();
        },
        routes: [
          GoRoute(
            path: 'achievements',
            name: AppRoute.adminAchievements.name,
            builder: (context, state) {
              // TODO
              return Container();
            },
            routes: [
              GoRoute(
                path: 'new',
                name: AppRoute.adminNewAchievement.name,
                builder: (context, state) {
                  // TODO
                  return Container();
                },
              ),
              GoRoute(
                path: 'edit',
                name: AppRoute.adminEditAchievement.name,
                builder: (context, state) {
                  // TODO
                  return Container();
                },
              ),
            ],
          ),
          GoRoute(
            path: 'rules',
            name: AppRoute.adminRules.name,
            builder: (context, state) {
              // TODO
              return Container();
            },
            routes: [
              GoRoute(
                path: 'new',
                name: AppRoute.adminNewRule.name,
                builder: (context, state) {
                  // TODO
                  return Container();
                },
              ),
              GoRoute(
                path: 'edit',
                name: AppRoute.adminEditRule.name,
                builder: (context, state) {
                  // TODO
                  return Container();
                },
              ),
            ],
          ),
        ],
      ),
      GoRoute(
        path: 'not-found',
        name: AppRoute.pageNotFound.name,
        builder: (context, state) {
          // TODO
          return Container();
        },
      ),
    ],
    errorBuilder: (context, state) => const NotFoundScreen(),
  );
}
