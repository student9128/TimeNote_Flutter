import 'package:drift/drift.dart';

class EventType extends Table{
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text().withLength(min: 1, max: 100)();
  IntColumn get color => integer().withDefault(const Constant(0xff2196f3))();
  BoolColumn get isDefault => boolean().withDefault(const Constant(false))();
}