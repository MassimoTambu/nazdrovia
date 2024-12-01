import 'package:hooks_riverpod/hooks_riverpod.dart';

const defaultLanguageCode = 'it';

StateProvider<String> selectedLanguageCodeProvider =
    StateProvider((ref) => defaultLanguageCode);
