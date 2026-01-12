// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Provides the opened [AppDatabase].
///
/// Use `ref.watch(appDatabaseProvider)` to get an `AsyncValue<AppDatabase>`.
// final appDatabaseProvider = FutureProvider<AppDatabase>((ref) async {
//   final db = AppDatabase();
//   ref.onDispose(() {
//     db.close();
//   });
//   return db;
// });
// /// Helper to read the database synchronously if already available.
// AppDatabase? readDatabase(WidgetRef ref) {
//   final async = ref.read(appDatabaseProvider);
//   return async.maybeWhen(data: (d) => d, orElse: () => null);
// }

@ProviderFor(appDatabase)
final appDatabaseProvider = AppDatabaseProvider._();

/// Provides the opened [AppDatabase].
///
/// Use `ref.watch(appDatabaseProvider)` to get an `AsyncValue<AppDatabase>`.
// final appDatabaseProvider = FutureProvider<AppDatabase>((ref) async {
//   final db = AppDatabase();
//   ref.onDispose(() {
//     db.close();
//   });
//   return db;
// });
// /// Helper to read the database synchronously if already available.
// AppDatabase? readDatabase(WidgetRef ref) {
//   final async = ref.read(appDatabaseProvider);
//   return async.maybeWhen(data: (d) => d, orElse: () => null);
// }

final class AppDatabaseProvider
    extends $FunctionalProvider<AppDatabase, AppDatabase, AppDatabase>
    with $Provider<AppDatabase> {
  /// Provides the opened [AppDatabase].
  ///
  /// Use `ref.watch(appDatabaseProvider)` to get an `AsyncValue<AppDatabase>`.
  // final appDatabaseProvider = FutureProvider<AppDatabase>((ref) async {
  //   final db = AppDatabase();
  //   ref.onDispose(() {
  //     db.close();
  //   });
  //   return db;
  // });
  // /// Helper to read the database synchronously if already available.
  // AppDatabase? readDatabase(WidgetRef ref) {
  //   final async = ref.read(appDatabaseProvider);
  //   return async.maybeWhen(data: (d) => d, orElse: () => null);
  // }
  AppDatabaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'appDatabaseProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$appDatabaseHash();

  @$internal
  @override
  $ProviderElement<AppDatabase> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  AppDatabase create(Ref ref) {
    return appDatabase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AppDatabase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AppDatabase>(value),
    );
  }
}

String _$appDatabaseHash() => r'67f06207fff3a55949c4c4b67200f868a9b6acc8';
