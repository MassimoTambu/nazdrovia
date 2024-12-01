import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nazdrovia_flutter/src/features/admin/presentation/achievements/admin_achievements_view.dart';
import 'package:nazdrovia_flutter/src/features/admin/presentation/rules/admin_rule_list.dart';
import 'package:nazdrovia_flutter/src/localization/context_tr.dart';
import 'package:nazdrovia_flutter/src/routing/app_router.dart';

class AdminScreen extends HookConsumerWidget {
  const AdminScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = useTabController(initialLength: 2);
    return Scaffold(
      appBar: AppBar(
        title: Text(context.tr.adminScreen),
        centerTitle: true,
        actions: [
          if (!kIsWeb)
            PopupMenuButton(
              itemBuilder: (context) => [
                PopupMenuItem(
                  value: 0,
                  child: Text(context.tr.achievements),
                ),
                PopupMenuItem(
                  value: 1,
                  child: Text(context.tr.rules),
                ),
              ],
              onSelected: (value) {
                switch (value) {
                  case 0:
                    context
                        .pushReplacementNamed(AppRoute.adminAchievements.name);
                  case 1:
                    context.pushReplacementNamed(AppRoute.adminRules.name);
                  default:
                    context.pushNamed(AppRoute.pageNotFound.name);
                }
              },
            ),
        ],
        bottom: kIsWeb
            ? TabBar(
                controller: controller,
                tabs: [
                  Tab(child: Text(context.tr.achievements)),
                  Tab(child: Text(context.tr.rules)),
                ],
              )
            : null,
      ),
      body: TabBarView(
        controller: controller,
        children: [
          AdminAchievementsView(),
          AdminRuleList(),
        ],
      ),
    );
  }
}
