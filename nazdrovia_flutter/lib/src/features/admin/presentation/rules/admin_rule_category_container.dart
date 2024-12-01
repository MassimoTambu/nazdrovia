import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nazdrovia_client/nazdrovia_client.dart';
import 'package:nazdrovia_flutter/src/features/texts/data/texts_repository.dart';
import 'package:nazdrovia_flutter/src/localization/context_tr.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'admin_rule_category_container.g.dart';

@riverpod
RuleCategory currentAdminRuleCategoryContainer(Ref ref) =>
    throw UnimplementedError();

class AdminRuleCategoryContainer extends ConsumerWidget {
  const AdminRuleCategoryContainer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ruleCategory = ref.watch(currentAdminRuleCategoryContainerProvider);
    return Column(children: [
      if (ruleCategory.rules?.isEmpty ?? true)
        Text(context.tr.noRulesFound)
      else
        ListView.builder(
          shrinkWrap: true,
          itemCount: ruleCategory.rules!.length,
          itemBuilder: (context, index) {
            final rule = ruleCategory.rules![index];
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
