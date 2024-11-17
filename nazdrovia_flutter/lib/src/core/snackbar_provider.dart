import 'package:flutter/material.dart';
import 'package:nazdrovia_flutter/src/app.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'snackbar_provider.g.dart';

@riverpod
class SnackBarNotifier extends _$SnackBarNotifier {
  @override
  SnackBarNotifier build() => this;

  void show(String message) {
    MyApp.scaffoldMessengerKey.currentState?.showSnackBar(
      SnackBar(
        content: Text(message),
        duration: const Duration(seconds: 2),
      ),
    );
  }
}
