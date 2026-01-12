import 'package:drift/drift.dart';
import 'package:timenote_flutter/db/app_database.dart';
import 'package:timenote_flutter/db/table/event_type.dart';
part 'event_type_dao.g.dart';

@DriftAccessor(tables: [EventType])
class EventTypeDao extends DatabaseAccessor<AppDatabase> with _$EventTypeDaoMixin{
  EventTypeDao(super.db);

 Future<void> initDefault() async {
    // 检查是否已经有数据，防止重复插入
    final result = await (select(eventType)..limit(1)).get();
    if (result.isNotEmpty) return;
    // 使用 batch 批量插入，效率更高
    await batch((b) {
      b.insertAll(eventType, [
        EventTypeCompanion.insert(name: '倒数日', color: const Value(0xFFE91E63), isDefault: const Value(true)),
        EventTypeCompanion.insert(name: '生日', color: const Value(0xFFFFC107), isDefault: const Value(true)),
        EventTypeCompanion.insert(name: '纪念日', color: const Value(0xFF4CAF50), isDefault: const Value(true)),
        EventTypeCompanion.insert(name: '节日', color: const Value(0xFF03A9F4), isDefault: const Value(true)),
      ]);
    });
  }
  Stream<List<EventTypeData>> watchEventTypeList(){
    return  select(eventType).watch();
  }
}