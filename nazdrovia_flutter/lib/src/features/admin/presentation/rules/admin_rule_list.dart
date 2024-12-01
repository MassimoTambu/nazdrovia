import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nazdrovia_client/nazdrovia_client.dart';
import 'package:nazdrovia_flutter/src/common_widgets/async_value_widget.dart';
import 'package:nazdrovia_flutter/src/features/admin/data/admin_repository.dart';
import 'package:nazdrovia_flutter/src/features/admin/presentation/rules/admin_rule_category_container.dart';

class AdminRuleList extends ConsumerWidget {
  const AdminRuleList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AsyncValueWidget<List<RuleCategory>>(
      value: ref.watch(ruleCategoriesWithRulesFutureProvider),
      data: (data) => ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) => ProviderScope(
          overrides: [
            currentAdminRuleCategoryContainerProvider
                .overrideWithValue(data[index]),
          ],
          child: const AdminRuleCategoryContainer(),
        ),
      ),
    );
  }
}
