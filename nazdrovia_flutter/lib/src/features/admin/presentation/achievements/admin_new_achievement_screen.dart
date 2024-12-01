import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nazdrovia_client/nazdrovia_client.dart';
import 'package:nazdrovia_flutter/src/common_widgets/adaptive_padding_widget.dart';
import 'package:nazdrovia_flutter/src/common_widgets/async_value_widget.dart';
import 'package:nazdrovia_flutter/src/common_widgets/default_padding_widget.dart';
import 'package:nazdrovia_flutter/src/common_widgets/primary_button_widget.dart';
import 'package:nazdrovia_flutter/src/core/logger_provider.dart';
import 'package:nazdrovia_flutter/src/core/snackbar_provider.dart';
import 'package:nazdrovia_flutter/src/features/admin/data/admin_repository.dart';
import 'package:nazdrovia_flutter/src/features/texts/data/texts_repository.dart';
import 'package:nazdrovia_flutter/src/localization/context_tr.dart';
import 'package:nazdrovia_flutter/src/localization/l10n.dart';
import 'package:nazdrovia_flutter/src/routing/app_router.dart';

class AdminNewAchievementScreen extends HookConsumerWidget {
  const AdminNewAchievementScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formKey = useMemoized(GlobalKey<FormState>.new);
    final titleController = useTextEditingController();
    final descriptionController = useTextEditingController();
    final nasScoreController = useTextEditingController();
    final categoryController = useTextEditingController();
    final categoryErrorText = useState<String?>(null);
    final categoryNotifier = useState<AchievementCategory?>(null);
    final isSaving = useState(false);
    return Scaffold(
      appBar: AppBar(title: Text(context.tr.newAchievement)),
      body: SafeArea(
        child: AsyncValueWidget(
          value: ref.watch(achievementCategoriesFutureProvider),
          data: (categories) => Form(
            key: formKey,
            child: AdaptivePaddingWidget(
              child: ListView(
                children: [
                  TextFormField(
                    controller: titleController,
                    textInputAction: TextInputAction.next,
                    decoration:
                        InputDecoration(labelText: '${context.tr.enterTitle}*'),
                    validator: (value) {
                      return switch (value) {
                        null || '' => context.tr.mandatoryField,
                        _ => null
                      };
                    },
                  ),
                  const SizedBox(height: defaultPaddingOffset),
                  TextFormField(
                    controller: descriptionController,
                    decoration: InputDecoration(
                        labelText: '${context.tr.enterDescription}*'),
                    validator: (value) => switch (value) {
                      null || '' => context.tr.mandatoryField,
                      _ => null
                    },
                  ),
                  const SizedBox(height: defaultPaddingOffset),
                  TextFormField(
                    controller: nasScoreController,
                    decoration:
                        InputDecoration(labelText: context.tr.enterNasScore),
                    validator: (value) => switch (value) {
                      null || '' => context.tr.mandatoryField,
                      final _ when (int.tryParse(value) == null) =>
                        context.tr.mustBeANumber,
                      _ => null
                    },
                  ),
                  const SizedBox(height: defaultPaddingOffset),
                  LayoutBuilder(builder: (context, constraints) {
                    return DropdownMenu<AchievementCategory>(
                      controller: categoryController,
                      label: Text('${context.tr.selectCategory}*'),
                      errorText: categoryErrorText.value,
                      width: constraints.maxWidth,
                      enableFilter: true,
                      requestFocusOnTap: true,
                      leadingIcon: const Icon(Icons.search),
                      inputDecorationTheme: const InputDecorationTheme(
                        filled: true,
                        contentPadding: EdgeInsets.symmetric(vertical: 5.0),
                      ),
                      dropdownMenuEntries: categories.map((e) {
                        final text = ref.watch(textProvider(e.category!.id!));

                        return DropdownMenuEntry(
                          value: e,
                          label: text,
                        );
                      }).toList(),
                      onSelected: (value) {
                        if (value != null) {
                          categoryNotifier.value = value;
                          categoryController.text =
                              ref.read(textProvider(value.category!.id!));
                          categoryErrorText.value = null;
                        } else {
                          categoryErrorText.value = context.tr.mandatoryField;
                        }
                      },
                    );
                  }),
                  const SizedBox(height: defaultPaddingOffset),
                  PrimaryButtonWidget(
                    text: context.tr.save,
                    icon: isSaving.value
                        ? const CircularProgressIndicator.adaptive()
                        : null,
                    onPressed: isSaving.value
                        ? null
                        : () async {
                            var isCategoryFieldValid = false;
                            if (categoryNotifier.value == null) {
                              categoryErrorText.value =
                                  context.tr.mandatoryField;
                            } else {
                              categoryErrorText.value = null;
                              isCategoryFieldValid = true;
                            }

                            final formValidation =
                                formKey.currentState?.validate();
                            if (!isCategoryFieldValid ||
                                formValidation == false ||
                                formValidation == null) {
                              return;
                            }

                            formKey.currentState!.save();
                            final newAchievement = Achievement(
                              titleId: -1,
                              title: Texts(originalText: titleController.text),
                              descriptionId: -1,
                              description: Texts(
                                  originalText: descriptionController.text),
                              nasScore: int.parse(nasScoreController.text),
                              categoryId: categoryNotifier.value!.id!,
                            );
                            isSaving.value = true;
                            ref.read(loggerProvider).d('Saving achievement');

                            try {
                              await ref.read(insertAchievementFutureProvider(
                                newAchievement,
                              ).future);
                              ref.read(snackBarNotifierProvider).show(
                                  Translations.current.achievementCreated);
                              ref.invalidate(
                                  achievementCategoriesFutureProvider);
                              ref.invalidate(
                                  achievementCategoriesWithAchievementsFutureProvider);
                              rootNavigatorKey.currentState!.pop();
                            } catch (e, st) {
                              ref.read(snackBarNotifierProvider).show(
                                  Translations.current.somethingWentWrong);
                              ref.read(loggerProvider).e(e, stackTrace: st);
                            } finally {
                              isSaving.value = false;
                            }
                          },
                  ),
                  const SizedBox(height: defaultPaddingOffset),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
