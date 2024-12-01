import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nazdrovia_flutter/src/localization/context_tr.dart';
import 'package:nazdrovia_flutter/src/routing/app_router.dart';

class AdminAppBar extends StatelessWidget implements PreferredSizeWidget {
  const AdminAppBar({required this.title, super.key});

  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      centerTitle: true,
      actions: [
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
                context.pushReplacementNamed(AppRoute.adminAchievements.name);
              case 1:
                context.pushReplacementNamed(AppRoute.adminRules.name);
              default:
                context.pushNamed(AppRoute.pageNotFound.name);
            }
          },
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
