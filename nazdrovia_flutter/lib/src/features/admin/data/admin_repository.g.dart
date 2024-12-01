// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$adminRepositoryHash() => r'2b6bc23a6a1993b2cca23c2ab037a7221ee473de';

/// See also [adminRepository].
@ProviderFor(adminRepository)
final adminRepositoryProvider = AutoDisposeProvider<AdminRepository>.internal(
  adminRepository,
  name: r'adminRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$adminRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef AdminRepositoryRef = AutoDisposeProviderRef<AdminRepository>;
String _$ruleCategoriesWithRulesFutureHash() =>
    r'069fb29dba43b7cc8c17fd1c9603b0efed0f7ebb';

/// See also [ruleCategoriesWithRulesFuture].
@ProviderFor(ruleCategoriesWithRulesFuture)
final ruleCategoriesWithRulesFutureProvider =
    AutoDisposeFutureProvider<List<RuleCategory>>.internal(
  ruleCategoriesWithRulesFuture,
  name: r'ruleCategoriesWithRulesFutureProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$ruleCategoriesWithRulesFutureHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef RuleCategoriesWithRulesFutureRef
    = AutoDisposeFutureProviderRef<List<RuleCategory>>;
String _$insertRuleFutureHash() => r'3615be4b1ef646428cf9c4ddf05819a4713011f1';

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

/// See also [insertRuleFuture].
@ProviderFor(insertRuleFuture)
const insertRuleFutureProvider = InsertRuleFutureFamily();

/// See also [insertRuleFuture].
class InsertRuleFutureFamily extends Family<AsyncValue<void>> {
  /// See also [insertRuleFuture].
  const InsertRuleFutureFamily();

  /// See also [insertRuleFuture].
  InsertRuleFutureProvider call(
    Rule rule,
  ) {
    return InsertRuleFutureProvider(
      rule,
    );
  }

  @override
  InsertRuleFutureProvider getProviderOverride(
    covariant InsertRuleFutureProvider provider,
  ) {
    return call(
      provider.rule,
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
  String? get name => r'insertRuleFutureProvider';
}

/// See also [insertRuleFuture].
class InsertRuleFutureProvider extends AutoDisposeFutureProvider<void> {
  /// See also [insertRuleFuture].
  InsertRuleFutureProvider(
    Rule rule,
  ) : this._internal(
          (ref) => insertRuleFuture(
            ref as InsertRuleFutureRef,
            rule,
          ),
          from: insertRuleFutureProvider,
          name: r'insertRuleFutureProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$insertRuleFutureHash,
          dependencies: InsertRuleFutureFamily._dependencies,
          allTransitiveDependencies:
              InsertRuleFutureFamily._allTransitiveDependencies,
          rule: rule,
        );

  InsertRuleFutureProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.rule,
  }) : super.internal();

  final Rule rule;

  @override
  Override overrideWith(
    FutureOr<void> Function(InsertRuleFutureRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: InsertRuleFutureProvider._internal(
        (ref) => create(ref as InsertRuleFutureRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        rule: rule,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<void> createElement() {
    return _InsertRuleFutureProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is InsertRuleFutureProvider && other.rule == rule;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, rule.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin InsertRuleFutureRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `rule` of this provider.
  Rule get rule;
}

class _InsertRuleFutureProviderElement
    extends AutoDisposeFutureProviderElement<void> with InsertRuleFutureRef {
  _InsertRuleFutureProviderElement(super.provider);

  @override
  Rule get rule => (origin as InsertRuleFutureProvider).rule;
}

String _$updateRuleFutureHash() => r'24571bb37a777116b9892e95fc0f36667788f5b6';

/// See also [updateRuleFuture].
@ProviderFor(updateRuleFuture)
const updateRuleFutureProvider = UpdateRuleFutureFamily();

/// See also [updateRuleFuture].
class UpdateRuleFutureFamily extends Family<AsyncValue<void>> {
  /// See also [updateRuleFuture].
  const UpdateRuleFutureFamily();

  /// See also [updateRuleFuture].
  UpdateRuleFutureProvider call(
    Rule rule,
  ) {
    return UpdateRuleFutureProvider(
      rule,
    );
  }

  @override
  UpdateRuleFutureProvider getProviderOverride(
    covariant UpdateRuleFutureProvider provider,
  ) {
    return call(
      provider.rule,
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
  String? get name => r'updateRuleFutureProvider';
}

/// See also [updateRuleFuture].
class UpdateRuleFutureProvider extends AutoDisposeFutureProvider<void> {
  /// See also [updateRuleFuture].
  UpdateRuleFutureProvider(
    Rule rule,
  ) : this._internal(
          (ref) => updateRuleFuture(
            ref as UpdateRuleFutureRef,
            rule,
          ),
          from: updateRuleFutureProvider,
          name: r'updateRuleFutureProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$updateRuleFutureHash,
          dependencies: UpdateRuleFutureFamily._dependencies,
          allTransitiveDependencies:
              UpdateRuleFutureFamily._allTransitiveDependencies,
          rule: rule,
        );

  UpdateRuleFutureProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.rule,
  }) : super.internal();

  final Rule rule;

  @override
  Override overrideWith(
    FutureOr<void> Function(UpdateRuleFutureRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: UpdateRuleFutureProvider._internal(
        (ref) => create(ref as UpdateRuleFutureRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        rule: rule,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<void> createElement() {
    return _UpdateRuleFutureProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is UpdateRuleFutureProvider && other.rule == rule;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, rule.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin UpdateRuleFutureRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `rule` of this provider.
  Rule get rule;
}

class _UpdateRuleFutureProviderElement
    extends AutoDisposeFutureProviderElement<void> with UpdateRuleFutureRef {
  _UpdateRuleFutureProviderElement(super.provider);

  @override
  Rule get rule => (origin as UpdateRuleFutureProvider).rule;
}

String _$insertRuleCategoryFutureHash() =>
    r'355fed438915913e61bd671e5d382888f5a50b7d';

/// See also [insertRuleCategoryFuture].
@ProviderFor(insertRuleCategoryFuture)
const insertRuleCategoryFutureProvider = InsertRuleCategoryFutureFamily();

/// See also [insertRuleCategoryFuture].
class InsertRuleCategoryFutureFamily extends Family<AsyncValue<void>> {
  /// See also [insertRuleCategoryFuture].
  const InsertRuleCategoryFutureFamily();

  /// See also [insertRuleCategoryFuture].
  InsertRuleCategoryFutureProvider call(
    RuleCategory ruleCategory,
  ) {
    return InsertRuleCategoryFutureProvider(
      ruleCategory,
    );
  }

  @override
  InsertRuleCategoryFutureProvider getProviderOverride(
    covariant InsertRuleCategoryFutureProvider provider,
  ) {
    return call(
      provider.ruleCategory,
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
  String? get name => r'insertRuleCategoryFutureProvider';
}

/// See also [insertRuleCategoryFuture].
class InsertRuleCategoryFutureProvider extends AutoDisposeFutureProvider<void> {
  /// See also [insertRuleCategoryFuture].
  InsertRuleCategoryFutureProvider(
    RuleCategory ruleCategory,
  ) : this._internal(
          (ref) => insertRuleCategoryFuture(
            ref as InsertRuleCategoryFutureRef,
            ruleCategory,
          ),
          from: insertRuleCategoryFutureProvider,
          name: r'insertRuleCategoryFutureProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$insertRuleCategoryFutureHash,
          dependencies: InsertRuleCategoryFutureFamily._dependencies,
          allTransitiveDependencies:
              InsertRuleCategoryFutureFamily._allTransitiveDependencies,
          ruleCategory: ruleCategory,
        );

  InsertRuleCategoryFutureProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.ruleCategory,
  }) : super.internal();

  final RuleCategory ruleCategory;

  @override
  Override overrideWith(
    FutureOr<void> Function(InsertRuleCategoryFutureRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: InsertRuleCategoryFutureProvider._internal(
        (ref) => create(ref as InsertRuleCategoryFutureRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        ruleCategory: ruleCategory,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<void> createElement() {
    return _InsertRuleCategoryFutureProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is InsertRuleCategoryFutureProvider &&
        other.ruleCategory == ruleCategory;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, ruleCategory.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin InsertRuleCategoryFutureRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `ruleCategory` of this provider.
  RuleCategory get ruleCategory;
}

class _InsertRuleCategoryFutureProviderElement
    extends AutoDisposeFutureProviderElement<void>
    with InsertRuleCategoryFutureRef {
  _InsertRuleCategoryFutureProviderElement(super.provider);

  @override
  RuleCategory get ruleCategory =>
      (origin as InsertRuleCategoryFutureProvider).ruleCategory;
}

String _$updateRuleCategoryFutureHash() =>
    r'776fef9ce8ad2956e140f9ee695ad540a10f04f0';

/// See also [updateRuleCategoryFuture].
@ProviderFor(updateRuleCategoryFuture)
const updateRuleCategoryFutureProvider = UpdateRuleCategoryFutureFamily();

/// See also [updateRuleCategoryFuture].
class UpdateRuleCategoryFutureFamily extends Family<AsyncValue<void>> {
  /// See also [updateRuleCategoryFuture].
  const UpdateRuleCategoryFutureFamily();

  /// See also [updateRuleCategoryFuture].
  UpdateRuleCategoryFutureProvider call(
    RuleCategory ruleCategory,
  ) {
    return UpdateRuleCategoryFutureProvider(
      ruleCategory,
    );
  }

  @override
  UpdateRuleCategoryFutureProvider getProviderOverride(
    covariant UpdateRuleCategoryFutureProvider provider,
  ) {
    return call(
      provider.ruleCategory,
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
  String? get name => r'updateRuleCategoryFutureProvider';
}

/// See also [updateRuleCategoryFuture].
class UpdateRuleCategoryFutureProvider extends AutoDisposeFutureProvider<void> {
  /// See also [updateRuleCategoryFuture].
  UpdateRuleCategoryFutureProvider(
    RuleCategory ruleCategory,
  ) : this._internal(
          (ref) => updateRuleCategoryFuture(
            ref as UpdateRuleCategoryFutureRef,
            ruleCategory,
          ),
          from: updateRuleCategoryFutureProvider,
          name: r'updateRuleCategoryFutureProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$updateRuleCategoryFutureHash,
          dependencies: UpdateRuleCategoryFutureFamily._dependencies,
          allTransitiveDependencies:
              UpdateRuleCategoryFutureFamily._allTransitiveDependencies,
          ruleCategory: ruleCategory,
        );

  UpdateRuleCategoryFutureProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.ruleCategory,
  }) : super.internal();

  final RuleCategory ruleCategory;

  @override
  Override overrideWith(
    FutureOr<void> Function(UpdateRuleCategoryFutureRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: UpdateRuleCategoryFutureProvider._internal(
        (ref) => create(ref as UpdateRuleCategoryFutureRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        ruleCategory: ruleCategory,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<void> createElement() {
    return _UpdateRuleCategoryFutureProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is UpdateRuleCategoryFutureProvider &&
        other.ruleCategory == ruleCategory;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, ruleCategory.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin UpdateRuleCategoryFutureRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `ruleCategory` of this provider.
  RuleCategory get ruleCategory;
}

class _UpdateRuleCategoryFutureProviderElement
    extends AutoDisposeFutureProviderElement<void>
    with UpdateRuleCategoryFutureRef {
  _UpdateRuleCategoryFutureProviderElement(super.provider);

  @override
  RuleCategory get ruleCategory =>
      (origin as UpdateRuleCategoryFutureProvider).ruleCategory;
}

String _$achievementCategoriesWithAchievementsFutureHash() =>
    r'dbb8b2357217ef873fda9695ed1e0b96bb9bcbe4';

/// See also [achievementCategoriesWithAchievementsFuture].
@ProviderFor(achievementCategoriesWithAchievementsFuture)
final achievementCategoriesWithAchievementsFutureProvider =
    AutoDisposeFutureProvider<List<AchievementCategory>>.internal(
  achievementCategoriesWithAchievementsFuture,
  name: r'achievementCategoriesWithAchievementsFutureProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$achievementCategoriesWithAchievementsFutureHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef AchievementCategoriesWithAchievementsFutureRef
    = AutoDisposeFutureProviderRef<List<AchievementCategory>>;
String _$insertAchievementFutureHash() =>
    r'bd2e465d56a8f1320cb4d5d5b982d4f47ce13b60';

/// See also [insertAchievementFuture].
@ProviderFor(insertAchievementFuture)
const insertAchievementFutureProvider = InsertAchievementFutureFamily();

/// See also [insertAchievementFuture].
class InsertAchievementFutureFamily extends Family<AsyncValue<void>> {
  /// See also [insertAchievementFuture].
  const InsertAchievementFutureFamily();

  /// See also [insertAchievementFuture].
  InsertAchievementFutureProvider call(
    Achievement achievement,
  ) {
    return InsertAchievementFutureProvider(
      achievement,
    );
  }

  @override
  InsertAchievementFutureProvider getProviderOverride(
    covariant InsertAchievementFutureProvider provider,
  ) {
    return call(
      provider.achievement,
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
  String? get name => r'insertAchievementFutureProvider';
}

/// See also [insertAchievementFuture].
class InsertAchievementFutureProvider extends AutoDisposeFutureProvider<void> {
  /// See also [insertAchievementFuture].
  InsertAchievementFutureProvider(
    Achievement achievement,
  ) : this._internal(
          (ref) => insertAchievementFuture(
            ref as InsertAchievementFutureRef,
            achievement,
          ),
          from: insertAchievementFutureProvider,
          name: r'insertAchievementFutureProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$insertAchievementFutureHash,
          dependencies: InsertAchievementFutureFamily._dependencies,
          allTransitiveDependencies:
              InsertAchievementFutureFamily._allTransitiveDependencies,
          achievement: achievement,
        );

  InsertAchievementFutureProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.achievement,
  }) : super.internal();

  final Achievement achievement;

  @override
  Override overrideWith(
    FutureOr<void> Function(InsertAchievementFutureRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: InsertAchievementFutureProvider._internal(
        (ref) => create(ref as InsertAchievementFutureRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        achievement: achievement,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<void> createElement() {
    return _InsertAchievementFutureProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is InsertAchievementFutureProvider &&
        other.achievement == achievement;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, achievement.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin InsertAchievementFutureRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `achievement` of this provider.
  Achievement get achievement;
}

class _InsertAchievementFutureProviderElement
    extends AutoDisposeFutureProviderElement<void>
    with InsertAchievementFutureRef {
  _InsertAchievementFutureProviderElement(super.provider);

  @override
  Achievement get achievement =>
      (origin as InsertAchievementFutureProvider).achievement;
}

String _$updateAchievementFutureHash() =>
    r'9866cac422b63822c555761e77192664e00db180';

/// See also [updateAchievementFuture].
@ProviderFor(updateAchievementFuture)
const updateAchievementFutureProvider = UpdateAchievementFutureFamily();

/// See also [updateAchievementFuture].
class UpdateAchievementFutureFamily extends Family<AsyncValue<void>> {
  /// See also [updateAchievementFuture].
  const UpdateAchievementFutureFamily();

  /// See also [updateAchievementFuture].
  UpdateAchievementFutureProvider call(
    Achievement achievement,
  ) {
    return UpdateAchievementFutureProvider(
      achievement,
    );
  }

  @override
  UpdateAchievementFutureProvider getProviderOverride(
    covariant UpdateAchievementFutureProvider provider,
  ) {
    return call(
      provider.achievement,
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
  String? get name => r'updateAchievementFutureProvider';
}

/// See also [updateAchievementFuture].
class UpdateAchievementFutureProvider extends AutoDisposeFutureProvider<void> {
  /// See also [updateAchievementFuture].
  UpdateAchievementFutureProvider(
    Achievement achievement,
  ) : this._internal(
          (ref) => updateAchievementFuture(
            ref as UpdateAchievementFutureRef,
            achievement,
          ),
          from: updateAchievementFutureProvider,
          name: r'updateAchievementFutureProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$updateAchievementFutureHash,
          dependencies: UpdateAchievementFutureFamily._dependencies,
          allTransitiveDependencies:
              UpdateAchievementFutureFamily._allTransitiveDependencies,
          achievement: achievement,
        );

  UpdateAchievementFutureProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.achievement,
  }) : super.internal();

  final Achievement achievement;

  @override
  Override overrideWith(
    FutureOr<void> Function(UpdateAchievementFutureRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: UpdateAchievementFutureProvider._internal(
        (ref) => create(ref as UpdateAchievementFutureRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        achievement: achievement,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<void> createElement() {
    return _UpdateAchievementFutureProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is UpdateAchievementFutureProvider &&
        other.achievement == achievement;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, achievement.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin UpdateAchievementFutureRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `achievement` of this provider.
  Achievement get achievement;
}

class _UpdateAchievementFutureProviderElement
    extends AutoDisposeFutureProviderElement<void>
    with UpdateAchievementFutureRef {
  _UpdateAchievementFutureProviderElement(super.provider);

  @override
  Achievement get achievement =>
      (origin as UpdateAchievementFutureProvider).achievement;
}

String _$insertAchievementCategoryFutureHash() =>
    r'644352ae3b50b8b9ccc175314021edce99157f8b';

/// See also [insertAchievementCategoryFuture].
@ProviderFor(insertAchievementCategoryFuture)
const insertAchievementCategoryFutureProvider =
    InsertAchievementCategoryFutureFamily();

/// See also [insertAchievementCategoryFuture].
class InsertAchievementCategoryFutureFamily extends Family<AsyncValue<void>> {
  /// See also [insertAchievementCategoryFuture].
  const InsertAchievementCategoryFutureFamily();

  /// See also [insertAchievementCategoryFuture].
  InsertAchievementCategoryFutureProvider call(
    AchievementCategory achievementCategory,
  ) {
    return InsertAchievementCategoryFutureProvider(
      achievementCategory,
    );
  }

  @override
  InsertAchievementCategoryFutureProvider getProviderOverride(
    covariant InsertAchievementCategoryFutureProvider provider,
  ) {
    return call(
      provider.achievementCategory,
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
  String? get name => r'insertAchievementCategoryFutureProvider';
}

/// See also [insertAchievementCategoryFuture].
class InsertAchievementCategoryFutureProvider
    extends AutoDisposeFutureProvider<void> {
  /// See also [insertAchievementCategoryFuture].
  InsertAchievementCategoryFutureProvider(
    AchievementCategory achievementCategory,
  ) : this._internal(
          (ref) => insertAchievementCategoryFuture(
            ref as InsertAchievementCategoryFutureRef,
            achievementCategory,
          ),
          from: insertAchievementCategoryFutureProvider,
          name: r'insertAchievementCategoryFutureProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$insertAchievementCategoryFutureHash,
          dependencies: InsertAchievementCategoryFutureFamily._dependencies,
          allTransitiveDependencies:
              InsertAchievementCategoryFutureFamily._allTransitiveDependencies,
          achievementCategory: achievementCategory,
        );

  InsertAchievementCategoryFutureProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.achievementCategory,
  }) : super.internal();

  final AchievementCategory achievementCategory;

  @override
  Override overrideWith(
    FutureOr<void> Function(InsertAchievementCategoryFutureRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: InsertAchievementCategoryFutureProvider._internal(
        (ref) => create(ref as InsertAchievementCategoryFutureRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        achievementCategory: achievementCategory,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<void> createElement() {
    return _InsertAchievementCategoryFutureProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is InsertAchievementCategoryFutureProvider &&
        other.achievementCategory == achievementCategory;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, achievementCategory.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin InsertAchievementCategoryFutureRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `achievementCategory` of this provider.
  AchievementCategory get achievementCategory;
}

class _InsertAchievementCategoryFutureProviderElement
    extends AutoDisposeFutureProviderElement<void>
    with InsertAchievementCategoryFutureRef {
  _InsertAchievementCategoryFutureProviderElement(super.provider);

  @override
  AchievementCategory get achievementCategory =>
      (origin as InsertAchievementCategoryFutureProvider).achievementCategory;
}

String _$updateAchievementCategoryFutureHash() =>
    r'4f4fef1beafef9137d81df724a140c5bbbe49c4d';

/// See also [updateAchievementCategoryFuture].
@ProviderFor(updateAchievementCategoryFuture)
const updateAchievementCategoryFutureProvider =
    UpdateAchievementCategoryFutureFamily();

/// See also [updateAchievementCategoryFuture].
class UpdateAchievementCategoryFutureFamily extends Family<AsyncValue<void>> {
  /// See also [updateAchievementCategoryFuture].
  const UpdateAchievementCategoryFutureFamily();

  /// See also [updateAchievementCategoryFuture].
  UpdateAchievementCategoryFutureProvider call(
    AchievementCategory achievementCategory,
  ) {
    return UpdateAchievementCategoryFutureProvider(
      achievementCategory,
    );
  }

  @override
  UpdateAchievementCategoryFutureProvider getProviderOverride(
    covariant UpdateAchievementCategoryFutureProvider provider,
  ) {
    return call(
      provider.achievementCategory,
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
  String? get name => r'updateAchievementCategoryFutureProvider';
}

/// See also [updateAchievementCategoryFuture].
class UpdateAchievementCategoryFutureProvider
    extends AutoDisposeFutureProvider<void> {
  /// See also [updateAchievementCategoryFuture].
  UpdateAchievementCategoryFutureProvider(
    AchievementCategory achievementCategory,
  ) : this._internal(
          (ref) => updateAchievementCategoryFuture(
            ref as UpdateAchievementCategoryFutureRef,
            achievementCategory,
          ),
          from: updateAchievementCategoryFutureProvider,
          name: r'updateAchievementCategoryFutureProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$updateAchievementCategoryFutureHash,
          dependencies: UpdateAchievementCategoryFutureFamily._dependencies,
          allTransitiveDependencies:
              UpdateAchievementCategoryFutureFamily._allTransitiveDependencies,
          achievementCategory: achievementCategory,
        );

  UpdateAchievementCategoryFutureProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.achievementCategory,
  }) : super.internal();

  final AchievementCategory achievementCategory;

  @override
  Override overrideWith(
    FutureOr<void> Function(UpdateAchievementCategoryFutureRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: UpdateAchievementCategoryFutureProvider._internal(
        (ref) => create(ref as UpdateAchievementCategoryFutureRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        achievementCategory: achievementCategory,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<void> createElement() {
    return _UpdateAchievementCategoryFutureProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is UpdateAchievementCategoryFutureProvider &&
        other.achievementCategory == achievementCategory;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, achievementCategory.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin UpdateAchievementCategoryFutureRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `achievementCategory` of this provider.
  AchievementCategory get achievementCategory;
}

class _UpdateAchievementCategoryFutureProviderElement
    extends AutoDisposeFutureProviderElement<void>
    with UpdateAchievementCategoryFutureRef {
  _UpdateAchievementCategoryFutureProviderElement(super.provider);

  @override
  AchievementCategory get achievementCategory =>
      (origin as UpdateAchievementCategoryFutureProvider).achievementCategory;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
