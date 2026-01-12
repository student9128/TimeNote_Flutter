import 'dart:io';
import 'dart:math';

import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';
import 'package:timenote_flutter/db/dao/countdown_dao.dart';
import 'package:timenote_flutter/db/dao/event_type_dao.dart';
import 'package:timenote_flutter/db/table/event_type.dart';
import '../models/countdown_model.dart';
import '../models/repeat_mode.dart';
import 'table/countdowns.dart';

part 'app_database.g.dart';

@DriftDatabase(tables: [Countdowns,EventType], daos: [CountdownDao,EventTypeDao])
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
  @override
  MigrationStrategy get migration  {
    return MigrationStrategy(
      onCreate: (m) async {
        await m.createAll();
        await eventTypeDao.initDefault();
      },
      onUpgrade: (m, from, to) async {
        // 在这里处理数据库升级逻辑
      },
    );
  }

}
