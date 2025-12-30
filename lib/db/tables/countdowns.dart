import 'package:drift/drift.dart';

class Countdowns extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get title => text().withLength(min: 0, max: 500)();
  TextColumn get location => text().withLength(min: 0, max: 500)();
  TextColumn get type => text().withLength(min: 0, max: 200)();
  IntColumn get startTime => integer()();
  IntColumn get endTime => integer()();
  IntColumn get date => integer().withDefault(const Constant(0))();
  TextColumn get lunarDate => text().withLength(min: 0, max: 200)();
  BoolColumn get isLunar => boolean().withDefault(const Constant(false))();
  TextColumn get eventTypeName => text().withDefault(const Constant('倒数日'))();
  IntColumn get eventTypeColor => integer().withDefault(const Constant(1118481))();
  TextColumn get repeatMode => text().withDefault(const Constant('ONCE'))();
  BoolColumn get remind => boolean().withDefault(const Constant(false))();
}
