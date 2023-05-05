// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'common_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$showOnBoardingHash() => r'6517435a1f74dbf9fcfa09567a0d2b2a0cda82bc';

/// See also [showOnBoarding].
@ProviderFor(showOnBoarding)
final showOnBoardingProvider = Provider<bool>.internal(
  showOnBoarding,
  name: r'showOnBoardingProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$showOnBoardingHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef ShowOnBoardingRef = ProviderRef<bool>;
String _$dBServiceHash() => r'df022c5301b00971914f80b461c3ca22374bb892';

/// See also [DBService].
@ProviderFor(DBService)
final dBServiceProvider = AsyncNotifierProvider<DBService, Isar>.internal(
  DBService.new,
  name: r'dBServiceProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$dBServiceHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$DBService = AsyncNotifier<Isar>;
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
