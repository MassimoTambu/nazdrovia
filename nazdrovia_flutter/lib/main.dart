import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nazdrovia_flutter/src/core/app_startup_widget.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_web_plugins/url_strategy.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // turn off the # in the URLs on the web
  usePathUrlStrategy();

  runApp(const ProviderScope(child: AppStartupWidget()));
}
