import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nazdrovia_client/nazdrovia_client.dart';
import 'package:nazdrovia_flutter/src/features/texts/data/texts_repository.dart';
import 'package:nazdrovia_flutter/src/localization/context_tr.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'admin_achievement_category_container.g.dart';

@riverpod
AchievementCategory currentAdminAchievementCategoryContainer(Ref ref) =>
    throw UnimplementedError();

class AdminAchievementCategoryContainer extends ConsumerWidget {
  const AdminAchievementCategoryContainer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final achievementCategory =
        ref.watch(currentAdminAchievementCategoryContainerProvider);
    return Column(children: [
      if (achievementCategory.achievements?.isEmpty ?? true)
        Text(context.tr.noRulesFound)
      else
        ListView.builder(
          shrinkWrap: true,
          itemCount: achievementCategory.achievements!.length,
          itemBuilder: (context, index) {
            final rule = achievementCategory.achievements![index];
            final title = ref.watch(textProvider(rule.title!.id!));
            final description = ref.watch(textProvider(rule.description!.id!));
            return ListTile(
              title: Text(title),
              subtitle: Text(description),
            );
          },
        ),
    ]);
  }
}
