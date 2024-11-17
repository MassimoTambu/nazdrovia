import 'package:flutter/widgets.dart';
import 'package:nazdrovia_flutter/src/localization/l10n.dart';

/// Shortcut to translate text using Translations
extension ContextTr on BuildContext {
  Translations get tr => Translations.of(this);
}
