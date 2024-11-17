import 'package:diox/diox.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nazdrovia_flutter/src/common_widgets/error_message_widget.dart';
import 'package:nazdrovia_flutter/src/core/logger_provider.dart';
import 'package:nazdrovia_flutter/src/localization/context_tr.dart';
import 'package:nazdrovia_flutter/src/core/api_exception.dart';

mixin class _AsyncValueWidgetMixin {
  String getErrorMessage(
      BuildContext context, WidgetRef ref, Object error, StackTrace st) {
    if (error is DioError && error.response?.data != null) {
      try {
        final apiException =
            ApiException.fromJson(error.response!.data as Map<String, dynamic>);
        return apiException.message;
      } catch (e) {
        // Cannot convert response.data to ApiException class
      }
    }
    ref
        .watch(loggerProvider)
        .e('AsyncValueWidget', error: error, stackTrace: st);

    return context.tr.somethingWentWrong;
  }
}

/// Wrapper on [AsyncValue], it automatically manages error and loader cases.
/// It also has a named constructor where you can set a custom loader
class AsyncValueWidget<T> extends ConsumerWidget with _AsyncValueWidgetMixin {
  const AsyncValueWidget({
    super.key,
    required this.value,
    required this.data,
    this.loader,
    this.error,
  });
  final AsyncValue<T> value;
  final Widget Function(T) data;
  final Widget? loader;
  final Widget? error;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return value.when(
      data: data,
      loading: () =>
          loader ?? const Center(child: CircularProgressIndicator.adaptive()),
      error: (e, st) =>
          error ??
          Center(
              child: ErrorMessageWidget(getErrorMessage(context, ref, e, st))),
    );
  }
}

/// Sliver equivalent of [AsyncValueWidget]
class AsyncValueSliverWidget<T> extends ConsumerWidget
    with _AsyncValueWidgetMixin {
  const AsyncValueSliverWidget({
    super.key,
    required this.value,
    required this.data,
    this.loader,
    this.error,
  });
  final AsyncValue<T> value;
  final Widget Function(T) data;
  final Widget? loader;
  final Widget? error;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return value.when(
      data: data,
      loading: () =>
          loader ??
          const SliverToBoxAdapter(
              child: Center(child: CircularProgressIndicator.adaptive())),
      error: (e, st) =>
          error ??
          SliverToBoxAdapter(
            child: Center(
                child:
                    ErrorMessageWidget(getErrorMessage(context, ref, e, st))),
          ),
    );
  }
}
