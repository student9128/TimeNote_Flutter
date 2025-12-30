import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';
import '../models/countdown_model.dart';
import '../models/repeat_mode.dart';
import 'tables/countdowns.dart';

part 'app_database.g.dart';

@DriftDatabase(tables: [Countdowns])
class AppDatabase extends _$AppDatabase {
// 修改构造函数：现在通常直接传入 QueryExecutor
  AppDatabase() : super(_openConnection());

  // 如果需要自定义 executor (比如为了测试)，保留这个
  AppDatabase.forTesting(DatabaseConnection connection) : super(connection);

  // bump this when changing tables
  @override
  int get schemaVersion => 1;

  static QueryExecutor _openConnection() {
    // driftDatabase 是 drift_flutter 提供的最新 API
    // 它会自动处理路径拼接和平台差异 (FFI / Web)
    return driftDatabase(
      name: 'timenote', // 数据库文件名
      native: const DriftNativeOptions(
        // 如果你希望明确指定路径，可以在这里配置，
        // 但默认它就会存放在 getApplicationDocumentsDirectory()
        shareAcrossIsolates: true,
      ),
    );
  }

  // CRUD operations
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
