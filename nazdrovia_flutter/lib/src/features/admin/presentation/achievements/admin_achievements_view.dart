import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nazdrovia_flutter/src/common_widgets/default_padding_widget.dart';
import 'package:nazdrovia_flutter/src/common_widgets/primary_button_widget.dart';
import 'package:nazdrovia_flutter/src/features/admin/presentation/achievements/admin_achievement_list.dart';
import 'package:nazdrovia_flutter/src/localization/context_tr.dart';
import 'package:nazdrovia_flutter/src/routing/app_router.dart';

class AdminAchievementsView extends ConsumerWidget {
  const AdminAchievementsView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return DefaultPaddingWidget(
      allSides: true,
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: PrimaryButtonWidget(
              text: context.tr.newAchievement,
              onPressed: () =>
                  ref.context.pushNamed(AppRoute.adminNewAchievement.name),
            ),
          ),
          AdminAchievementList(),
        ],
      ),
    );
  }
}
