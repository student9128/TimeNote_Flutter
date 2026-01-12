import 'package:drift/drift.dart';
import 'package:timenote_flutter/db/app_database.dart';
import 'package:timenote_flutter/db/table/countdowns.dart';
import 'package:timenote_flutter/models/countdown_model.dart';
import 'package:timenote_flutter/models/repeat_mode.dart';
part 'countdown_dao.g.dart';
@DriftAccessor(tables: [Countdowns])
class CountdownDao extends DatabaseAccessor<AppDatabase> with _$CountdownDaoMixin{
  CountdownDao(super.db);
 Future<int> insertCountdown(CountdownModel model) async {
    final companion = CountdownsCompanion.insert(
      title: model.title,
      location: model.location,
      type: model.type,
      startTime: model.startTime,
      endTime: model.endTime,
      date: Value(model.date),
      lunarDate: model.lunarDate,
      isLunar: Value(model.isLunar),
      eventTypeName: Value(model.eventTypeName),
      eventTypeColor: Value(model.eventTypeColor),
      repeatMode: Value(_repeatModeToString(model.repeatMode)),
      remind: Value(model.remind),
    );

    return into(countdowns).insert(companion);
  }
   Future<List<CountdownModel>> getAllCountdowns() async {
    final rows = await select(countdowns).get();
    return rows.map(_mapRowToModel).toList();
  }

  Future<CountdownModel?> getCountdownById(int id) async {
    final row = await (select(countdowns)..where((t) => t.id.equals(id))).getSingleOrNull();
    if (row == null) return null;
    return _mapRowToModel(row);
  }

  Future<bool> updateCountdown(CountdownModel model) async {
    if (model.id == 0) return false;
    final companion = CountdownsCompanion(
      id: Value(model.id),
      title: Value(model.title),
      location: Value(model.location),
      type: Value(model.type),
      startTime: Value(model.startTime),
      endTime: Value(model.endTime),
      date: Value(model.date),
      lunarDate: Value(model.lunarDate),
      isLunar: Value(model.isLunar),
      eventTypeName: Value(model.eventTypeName),
      eventTypeColor: Value(model.eventTypeColor),
      repeatMode: Value(_repeatModeToString(model.repeatMode)),
      remind: Value(model.remind),
    );

    final updated = await update(countdowns).replace(companion);
    return updated;
  }

  Future<int> deleteCountdown(int id) async {
    return (delete(countdowns)..where((t) => t.id.equals(id))).go();
  }
  // Helpers
  CountdownModel _mapRowToModel(Countdown row) {
    return CountdownModel(
      id: row.id,
      title: row.title,
      location: row.location,
      type: row.type,
      startTime: row.startTime,
      endTime: row.endTime,
      date: row.date,
      lunarDate: row.lunarDate,
      isLunar: row.isLunar,
      eventTypeName: row.eventTypeName,
      eventTypeColor: row.eventTypeColor,
      repeatMode: _repeatModeFromString(row.repeatMode),
      remind: row.remind,
    );
  }

  String _repeatModeToString(RepeatMode mode) {
    switch (mode) {
      case RepeatMode.once:
        return 'ONCE';
      case RepeatMode.daily:
        return 'DAILY';
      case RepeatMode.weekly:
        return 'WEEKLY';
      case RepeatMode.monthly:
        return 'MONTHLY';
      case RepeatMode.yearly:
        return 'YEARLY';
    }
  }

  RepeatMode _repeatModeFromString(String value) {
    switch (value.toUpperCase()) {
      case 'DAILY':
        return RepeatMode.daily;
      case 'WEEKLY':
        return RepeatMode.weekly;
      case 'MONTHLY':
        return RepeatMode.monthly;
      case 'YEARLY':
        return RepeatMode.yearly;
      case 'ONCE':
      default:
        return RepeatMode.once;
    }
  }
}