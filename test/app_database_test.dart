import 'package:drift/native.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:timenote_flutter/db/app_database.dart';
import 'package:timenote_flutter/models/countdown_model.dart';
import 'package:timenote_flutter/models/repeat_mode.dart';

void main() {
  late AppDatabase db;

  setUp(() {
    // Use an in-memory native database for tests
    db = AppDatabase();
  });

  tearDown(() async {
    await db.close();
  });

  test('insert, query, update and delete countdown', () async {
    final model = CountdownModel(
      title: 'Test event',
      location: 'Home',
      type: 'TypeA',
      startTime: DateTime.now().millisecondsSinceEpoch,
      endTime: DateTime.now().add(Duration(days: 1)).millisecondsSinceEpoch,
      date: DateTime.now().millisecondsSinceEpoch,
      lunarDate: '',
      isLunar: false,
      eventTypeName: '倒数日',
      eventTypeColor: eventDefaultColor,
      repeatMode: RepeatMode.once,
      remind: false,
    );
    final countdownDao = db.countdownDao;

    final id = await countdownDao.insertCountdown(model);
    expect(id, greaterThan(0));

    final all = await countdownDao.getAllCountdowns();
    expect(all.length, 1);

    final fetched = await countdownDao.getCountdownById(id);
    expect(fetched, isNotNull);
    expect(fetched!.title, 'Test event');

    final updatedModel = fetched.copyWith(title: 'Updated');
    final ok = await countdownDao.updateCountdown(updatedModel);
    expect(ok, isTrue);

    final fetched2 = await countdownDao.getCountdownById(id);
    expect(fetched2!.title, 'Updated');

    final deleted = await countdownDao.deleteCountdown(id);
    expect(deleted, 1);

    final remaining = await countdownDao.getAllCountdowns();
    expect(remaining.length, 0);
  });
}
