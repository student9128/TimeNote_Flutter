import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../db/app_database.dart';
part 'database_provider.g.dart';
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
@Riverpod(keepAlive: true)
AppDatabase appDatabase(Ref ref) {
  final db = AppDatabase();

  ref.onDispose(() {
    db.close();
  });

  return db;
}
