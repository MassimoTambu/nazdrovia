import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nazdrovia_client/nazdrovia_client.dart';
import 'package:nazdrovia_flutter/src/common_widgets/async_value_widget.dart';
import 'package:nazdrovia_flutter/src/features/admin/data/admin_repository.dart';
import 'package:nazdrovia_flutter/src/features/admin/presentation/achievements/admin_achievement_category_container.dart';

class AdminAchievementList extends ConsumerWidget {
  const AdminAchievementList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AsyncValueWidget<List<AchievementCategory>>(
      value: ref.watch(achievementCategoriesWithAchievementsFutureProvider),
      data: (data) => ListView.builder(
        itemCount: data.length,
        shrinkWrap: true,
        itemBuilder: (context, index) => ProviderScope(
          overrides: [
            currentAdminAchievementCategoryContainerProvider
                .overrideWithValue(data[index]),
          ],
          child: const AdminAchievementCategoryContainer(),
        ),
      ),
    );
  }
}
