// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'texts_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$textsRepositoryHash() => r'4b69bd5253a5656c53e73b693f1aed54d4e68c92';

/// See also [textsRepository].
@ProviderFor(textsRepository)
final textsRepositoryProvider = AutoDisposeProvider<TextsRepository>.internal(
  textsRepository,
  name: r'textsRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$textsRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef TextsRepositoryRef = AutoDisposeProviderRef<TextsRepository>;
String _$languageCodesFutureHash() =>
    r'6ea7b3ab574a63b8843ceecb3972de9af4d67df1';

/// See also [languageCodesFuture].
@ProviderFor(languageCodesFuture)
final languageCodesFutureProvider =
    AutoDisposeFutureProvider<List<String>>.internal(
  languageCodesFuture,
  name: r'languageCodesFutureProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$languageCodesFutureHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef LanguageCodesFutureRef = AutoDisposeFutureProviderRef<List<String>>;
String _$textsWithTranslationsFutureHash() =>
    r'f9a4c7ae615f6f6cd41cae438e4283505d4f6bdd';

/// See also [textsWithTranslationsFuture].
@ProviderFor(textsWithTranslationsFuture)
final textsWithTranslationsFutureProvider =
    AutoDisposeFutureProvider<List<Texts>>.internal(
  textsWithTranslationsFuture,
  name: r'textsWithTranslationsFutureProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$textsWithTranslationsFutureHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef TextsWithTranslationsFutureRef
    = AutoDisposeFutureProviderRef<List<Texts>>;
String _$textHash() => r'1d32d17c22041f8b2894291012390c8a24cd13d8';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [text].
@ProviderFor(text)
const textProvider = TextFamily();

/// See also [text].
class TextFamily extends Family<String> {
  /// See also [text].
  const TextFamily();

  /// See also [text].
  TextProvider call(
    int textId,
  ) {
    return TextProvider(
      textId,
    );
  }

  @override
  TextProvider getProviderOverride(
    covariant TextProvider provider,
  ) {
    return call(
      provider.textId,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'textProvider';
}

/// See also [text].
class TextProvider extends AutoDisposeProvider<String> {
  /// See also [text].
  TextProvider(
    int textId,
  ) : this._internal(
          (ref) => text(
            ref as TextRef,
            textId,
          ),
          from: textProvider,
          name: r'textProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product') ? null : _$textHash,
          dependencies: TextFamily._dependencies,
          allTransitiveDependencies: TextFamily._allTransitiveDependencies,
          textId: textId,
        );

  TextProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.textId,
  }) : super.internal();

  final int textId;

  @override
  Override overrideWith(
    String Function(TextRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: TextProvider._internal(
        (ref) => create(ref as TextRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        textId: textId,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<String> createElement() {
    return _TextProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is TextProvider && other.textId == textId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, textId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin TextRef on AutoDisposeProviderRef<String> {
  /// The parameter `textId` of this provider.
  int get textId;
}

class _TextProviderElement extends AutoDisposeProviderElement<String>
    with TextRef {
  _TextProviderElement(super.provider);

  @override
  int get textId => (origin as TextProvider).textId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
