// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$fetchUserHash() => r'f09e4ca8eeaf645562671fe1d30990d43fb14624';

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

/// See also [fetchUser].
@ProviderFor(fetchUser)
const fetchUserProvider = FetchUserFamily();

/// See also [fetchUser].
class FetchUserFamily extends Family<AsyncValue<User>> {
  /// See also [fetchUser].
  const FetchUserFamily();

  /// See also [fetchUser].
  FetchUserProvider call({
    required dynamic input,
    required int someValue,
    required bool secoundValue,
  }) {
    return FetchUserProvider(
      input: input,
      someValue: someValue,
      secoundValue: secoundValue,
    );
  }

  @override
  FetchUserProvider getProviderOverride(
    covariant FetchUserProvider provider,
  ) {
    return call(
      input: provider.input,
      someValue: provider.someValue,
      secoundValue: provider.secoundValue,
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
  String? get name => r'fetchUserProvider';
}

/// See also [fetchUser].
class FetchUserProvider extends AutoDisposeFutureProvider<User> {
  /// See also [fetchUser].
  FetchUserProvider({
    required dynamic input,
    required int someValue,
    required bool secoundValue,
  }) : this._internal(
          (ref) => fetchUser(
            ref as FetchUserRef,
            input: input,
            someValue: someValue,
            secoundValue: secoundValue,
          ),
          from: fetchUserProvider,
          name: r'fetchUserProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$fetchUserHash,
          dependencies: FetchUserFamily._dependencies,
          allTransitiveDependencies: FetchUserFamily._allTransitiveDependencies,
          input: input,
          someValue: someValue,
          secoundValue: secoundValue,
        );

  FetchUserProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.input,
    required this.someValue,
    required this.secoundValue,
  }) : super.internal();

  final dynamic input;
  final int someValue;
  final bool secoundValue;

  @override
  Override overrideWith(
    FutureOr<User> Function(FetchUserRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FetchUserProvider._internal(
        (ref) => create(ref as FetchUserRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        input: input,
        someValue: someValue,
        secoundValue: secoundValue,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<User> createElement() {
    return _FetchUserProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FetchUserProvider &&
        other.input == input &&
        other.someValue == someValue &&
        other.secoundValue == secoundValue;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, input.hashCode);
    hash = _SystemHash.combine(hash, someValue.hashCode);
    hash = _SystemHash.combine(hash, secoundValue.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin FetchUserRef on AutoDisposeFutureProviderRef<User> {
  /// The parameter `input` of this provider.
  dynamic get input;

  /// The parameter `someValue` of this provider.
  int get someValue;

  /// The parameter `secoundValue` of this provider.
  bool get secoundValue;
}

class _FetchUserProviderElement extends AutoDisposeFutureProviderElement<User>
    with FetchUserRef {
  _FetchUserProviderElement(super.provider);

  @override
  dynamic get input => (origin as FetchUserProvider).input;
  @override
  int get someValue => (origin as FetchUserProvider).someValue;
  @override
  bool get secoundValue => (origin as FetchUserProvider).secoundValue;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
