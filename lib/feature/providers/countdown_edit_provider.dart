
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:timenote_flutter/db/app_database.dart';
import 'package:timenote_flutter/feature/providers/countdown_edit_state.dart';
import 'package:timenote_flutter/providers/database_provider.dart';

part 'countdown_edit_provider.g.dart';

@riverpod
class CountdownEdit extends _$CountdownEdit {
  @override
   build() {
    return CountdownEditState();
  }


}
final eventTypeListProvider = StreamProvider<List<EventTypeData>>((ref) {
  final db = ref.watch(appDatabaseProvider); // 你的全局数据库 Provider
  return db.eventTypeDao.watchEventTypeList();
});