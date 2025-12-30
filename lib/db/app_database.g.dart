// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $CountdownsTable extends Countdowns
    with TableInfo<$CountdownsTable, Countdown> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CountdownsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
    'title',
    aliasedName,
    false,
    additionalChecks: GeneratedColumn.checkTextLength(
      minTextLength: 0,
      maxTextLength: 500,
    ),
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _locationMeta = const VerificationMeta(
    'location',
  );
  @override
  late final GeneratedColumn<String> location = GeneratedColumn<String>(
    'location',
    aliasedName,
    false,
    additionalChecks: GeneratedColumn.checkTextLength(
      minTextLength: 0,
      maxTextLength: 500,
    ),
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _typeMeta = const VerificationMeta('type');
  @override
  late final GeneratedColumn<String> type = GeneratedColumn<String>(
    'type',
    aliasedName,
    false,
    additionalChecks: GeneratedColumn.checkTextLength(
      minTextLength: 0,
      maxTextLength: 200,
    ),
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _startTimeMeta = const VerificationMeta(
    'startTime',
  );
  @override
  late final GeneratedColumn<int> startTime = GeneratedColumn<int>(
    'start_time',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _endTimeMeta = const VerificationMeta(
    'endTime',
  );
  @override
  late final GeneratedColumn<int> endTime = GeneratedColumn<int>(
    'end_time',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _dateMeta = const VerificationMeta('date');
  @override
  late final GeneratedColumn<int> date = GeneratedColumn<int>(
    'date',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _lunarDateMeta = const VerificationMeta(
    'lunarDate',
  );
  @override
  late final GeneratedColumn<String> lunarDate = GeneratedColumn<String>(
    'lunar_date',
    aliasedName,
    false,
    additionalChecks: GeneratedColumn.checkTextLength(
      minTextLength: 0,
      maxTextLength: 200,
    ),
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _isLunarMeta = const VerificationMeta(
    'isLunar',
  );
  @override
  late final GeneratedColumn<bool> isLunar = GeneratedColumn<bool>(
    'is_lunar',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_lunar" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  static const VerificationMeta _eventTypeNameMeta = const VerificationMeta(
    'eventTypeName',
  );
  @override
  late final GeneratedColumn<String> eventTypeName = GeneratedColumn<String>(
    'event_type_name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant('倒数日'),
  );
  static const VerificationMeta _eventTypeColorMeta = const VerificationMeta(
    'eventTypeColor',
  );
  @override
  late final GeneratedColumn<int> eventTypeColor = GeneratedColumn<int>(
    'event_type_color',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(1118481),
  );
  static const VerificationMeta _repeatModeMeta = const VerificationMeta(
    'repeatMode',
  );
  @override
  late final GeneratedColumn<String> repeatMode = GeneratedColumn<String>(
    'repeat_mode',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant('ONCE'),
  );
  static const VerificationMeta _remindMeta = const VerificationMeta('remind');
  @override
  late final GeneratedColumn<bool> remind = GeneratedColumn<bool>(
    'remind',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("remind" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    title,
    location,
    type,
    startTime,
    endTime,
    date,
    lunarDate,
    isLunar,
    eventTypeName,
    eventTypeColor,
    repeatMode,
    remind,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'countdowns';
  @override
  VerificationContext validateIntegrity(
    Insertable<Countdown> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('title')) {
      context.handle(
        _titleMeta,
        title.isAcceptableOrUnknown(data['title']!, _titleMeta),
      );
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('location')) {
      context.handle(
        _locationMeta,
        location.isAcceptableOrUnknown(data['location']!, _locationMeta),
      );
    } else if (isInserting) {
      context.missing(_locationMeta);
    }
    if (data.containsKey('type')) {
      context.handle(
        _typeMeta,
        type.isAcceptableOrUnknown(data['type']!, _typeMeta),
      );
    } else if (isInserting) {
      context.missing(_typeMeta);
    }
    if (data.containsKey('start_time')) {
      context.handle(
        _startTimeMeta,
        startTime.isAcceptableOrUnknown(data['start_time']!, _startTimeMeta),
      );
    } else if (isInserting) {
      context.missing(_startTimeMeta);
    }
    if (data.containsKey('end_time')) {
      context.handle(
        _endTimeMeta,
        endTime.isAcceptableOrUnknown(data['end_time']!, _endTimeMeta),
      );
    } else if (isInserting) {
      context.missing(_endTimeMeta);
    }
    if (data.containsKey('date')) {
      context.handle(
        _dateMeta,
        date.isAcceptableOrUnknown(data['date']!, _dateMeta),
      );
    }
    if (data.containsKey('lunar_date')) {
      context.handle(
        _lunarDateMeta,
        lunarDate.isAcceptableOrUnknown(data['lunar_date']!, _lunarDateMeta),
      );
    } else if (isInserting) {
      context.missing(_lunarDateMeta);
    }
    if (data.containsKey('is_lunar')) {
      context.handle(
        _isLunarMeta,
        isLunar.isAcceptableOrUnknown(data['is_lunar']!, _isLunarMeta),
      );
    }
    if (data.containsKey('event_type_name')) {
      context.handle(
        _eventTypeNameMeta,
        eventTypeName.isAcceptableOrUnknown(
          data['event_type_name']!,
          _eventTypeNameMeta,
        ),
      );
    }
    if (data.containsKey('event_type_color')) {
      context.handle(
        _eventTypeColorMeta,
        eventTypeColor.isAcceptableOrUnknown(
          data['event_type_color']!,
          _eventTypeColorMeta,
        ),
      );
    }
    if (data.containsKey('repeat_mode')) {
      context.handle(
        _repeatModeMeta,
        repeatMode.isAcceptableOrUnknown(data['repeat_mode']!, _repeatModeMeta),
      );
    }
    if (data.containsKey('remind')) {
      context.handle(
        _remindMeta,
        remind.isAcceptableOrUnknown(data['remind']!, _remindMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Countdown map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Countdown(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      title: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}title'],
      )!,
      location: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}location'],
      )!,
      type: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}type'],
      )!,
      startTime: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}start_time'],
      )!,
      endTime: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}end_time'],
      )!,
      date: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}date'],
      )!,
      lunarDate: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}lunar_date'],
      )!,
      isLunar: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_lunar'],
      )!,
      eventTypeName: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}event_type_name'],
      )!,
      eventTypeColor: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}event_type_color'],
      )!,
      repeatMode: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}repeat_mode'],
      )!,
      remind: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}remind'],
      )!,
    );
  }

  @override
  $CountdownsTable createAlias(String alias) {
    return $CountdownsTable(attachedDatabase, alias);
  }
}

class Countdown extends DataClass implements Insertable<Countdown> {
  final int id;
  final String title;
  final String location;
  final String type;
  final int startTime;
  final int endTime;
  final int date;
  final String lunarDate;
  final bool isLunar;
  final String eventTypeName;
  final int eventTypeColor;
  final String repeatMode;
  final bool remind;
  const Countdown({
    required this.id,
    required this.title,
    required this.location,
    required this.type,
    required this.startTime,
    required this.endTime,
    required this.date,
    required this.lunarDate,
    required this.isLunar,
    required this.eventTypeName,
    required this.eventTypeColor,
    required this.repeatMode,
    required this.remind,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['title'] = Variable<String>(title);
    map['location'] = Variable<String>(location);
    map['type'] = Variable<String>(type);
    map['start_time'] = Variable<int>(startTime);
    map['end_time'] = Variable<int>(endTime);
    map['date'] = Variable<int>(date);
    map['lunar_date'] = Variable<String>(lunarDate);
    map['is_lunar'] = Variable<bool>(isLunar);
    map['event_type_name'] = Variable<String>(eventTypeName);
    map['event_type_color'] = Variable<int>(eventTypeColor);
    map['repeat_mode'] = Variable<String>(repeatMode);
    map['remind'] = Variable<bool>(remind);
    return map;
  }

  CountdownsCompanion toCompanion(bool nullToAbsent) {
    return CountdownsCompanion(
      id: Value(id),
      title: Value(title),
      location: Value(location),
      type: Value(type),
      startTime: Value(startTime),
      endTime: Value(endTime),
      date: Value(date),
      lunarDate: Value(lunarDate),
      isLunar: Value(isLunar),
      eventTypeName: Value(eventTypeName),
      eventTypeColor: Value(eventTypeColor),
      repeatMode: Value(repeatMode),
      remind: Value(remind),
    );
  }

  factory Countdown.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Countdown(
      id: serializer.fromJson<int>(json['id']),
      title: serializer.fromJson<String>(json['title']),
      location: serializer.fromJson<String>(json['location']),
      type: serializer.fromJson<String>(json['type']),
      startTime: serializer.fromJson<int>(json['startTime']),
      endTime: serializer.fromJson<int>(json['endTime']),
      date: serializer.fromJson<int>(json['date']),
      lunarDate: serializer.fromJson<String>(json['lunarDate']),
      isLunar: serializer.fromJson<bool>(json['isLunar']),
      eventTypeName: serializer.fromJson<String>(json['eventTypeName']),
      eventTypeColor: serializer.fromJson<int>(json['eventTypeColor']),
      repeatMode: serializer.fromJson<String>(json['repeatMode']),
      remind: serializer.fromJson<bool>(json['remind']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'title': serializer.toJson<String>(title),
      'location': serializer.toJson<String>(location),
      'type': serializer.toJson<String>(type),
      'startTime': serializer.toJson<int>(startTime),
      'endTime': serializer.toJson<int>(endTime),
      'date': serializer.toJson<int>(date),
      'lunarDate': serializer.toJson<String>(lunarDate),
      'isLunar': serializer.toJson<bool>(isLunar),
      'eventTypeName': serializer.toJson<String>(eventTypeName),
      'eventTypeColor': serializer.toJson<int>(eventTypeColor),
      'repeatMode': serializer.toJson<String>(repeatMode),
      'remind': serializer.toJson<bool>(remind),
    };
  }

  Countdown copyWith({
    int? id,
    String? title,
    String? location,
    String? type,
    int? startTime,
    int? endTime,
    int? date,
    String? lunarDate,
    bool? isLunar,
    String? eventTypeName,
    int? eventTypeColor,
    String? repeatMode,
    bool? remind,
  }) => Countdown(
    id: id ?? this.id,
    title: title ?? this.title,
    location: location ?? this.location,
    type: type ?? this.type,
    startTime: startTime ?? this.startTime,
    endTime: endTime ?? this.endTime,
    date: date ?? this.date,
    lunarDate: lunarDate ?? this.lunarDate,
    isLunar: isLunar ?? this.isLunar,
    eventTypeName: eventTypeName ?? this.eventTypeName,
    eventTypeColor: eventTypeColor ?? this.eventTypeColor,
    repeatMode: repeatMode ?? this.repeatMode,
    remind: remind ?? this.remind,
  );
  Countdown copyWithCompanion(CountdownsCompanion data) {
    return Countdown(
      id: data.id.present ? data.id.value : this.id,
      title: data.title.present ? data.title.value : this.title,
      location: data.location.present ? data.location.value : this.location,
      type: data.type.present ? data.type.value : this.type,
      startTime: data.startTime.present ? data.startTime.value : this.startTime,
      endTime: data.endTime.present ? data.endTime.value : this.endTime,
      date: data.date.present ? data.date.value : this.date,
      lunarDate: data.lunarDate.present ? data.lunarDate.value : this.lunarDate,
      isLunar: data.isLunar.present ? data.isLunar.value : this.isLunar,
      eventTypeName: data.eventTypeName.present
          ? data.eventTypeName.value
          : this.eventTypeName,
      eventTypeColor: data.eventTypeColor.present
          ? data.eventTypeColor.value
          : this.eventTypeColor,
      repeatMode: data.repeatMode.present
          ? data.repeatMode.value
          : this.repeatMode,
      remind: data.remind.present ? data.remind.value : this.remind,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Countdown(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('location: $location, ')
          ..write('type: $type, ')
          ..write('startTime: $startTime, ')
          ..write('endTime: $endTime, ')
          ..write('date: $date, ')
          ..write('lunarDate: $lunarDate, ')
          ..write('isLunar: $isLunar, ')
          ..write('eventTypeName: $eventTypeName, ')
          ..write('eventTypeColor: $eventTypeColor, ')
          ..write('repeatMode: $repeatMode, ')
          ..write('remind: $remind')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    title,
    location,
    type,
    startTime,
    endTime,
    date,
    lunarDate,
    isLunar,
    eventTypeName,
    eventTypeColor,
    repeatMode,
    remind,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Countdown &&
          other.id == this.id &&
          other.title == this.title &&
          other.location == this.location &&
          other.type == this.type &&
          other.startTime == this.startTime &&
          other.endTime == this.endTime &&
          other.date == this.date &&
          other.lunarDate == this.lunarDate &&
          other.isLunar == this.isLunar &&
          other.eventTypeName == this.eventTypeName &&
          other.eventTypeColor == this.eventTypeColor &&
          other.repeatMode == this.repeatMode &&
          other.remind == this.remind);
}

class CountdownsCompanion extends UpdateCompanion<Countdown> {
  final Value<int> id;
  final Value<String> title;
  final Value<String> location;
  final Value<String> type;
  final Value<int> startTime;
  final Value<int> endTime;
  final Value<int> date;
  final Value<String> lunarDate;
  final Value<bool> isLunar;
  final Value<String> eventTypeName;
  final Value<int> eventTypeColor;
  final Value<String> repeatMode;
  final Value<bool> remind;
  const CountdownsCompanion({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    this.location = const Value.absent(),
    this.type = const Value.absent(),
    this.startTime = const Value.absent(),
    this.endTime = const Value.absent(),
    this.date = const Value.absent(),
    this.lunarDate = const Value.absent(),
    this.isLunar = const Value.absent(),
    this.eventTypeName = const Value.absent(),
    this.eventTypeColor = const Value.absent(),
    this.repeatMode = const Value.absent(),
    this.remind = const Value.absent(),
  });
  CountdownsCompanion.insert({
    this.id = const Value.absent(),
    required String title,
    required String location,
    required String type,
    required int startTime,
    required int endTime,
    this.date = const Value.absent(),
    required String lunarDate,
    this.isLunar = const Value.absent(),
    this.eventTypeName = const Value.absent(),
    this.eventTypeColor = const Value.absent(),
    this.repeatMode = const Value.absent(),
    this.remind = const Value.absent(),
  }) : title = Value(title),
       location = Value(location),
       type = Value(type),
       startTime = Value(startTime),
       endTime = Value(endTime),
       lunarDate = Value(lunarDate);
  static Insertable<Countdown> custom({
    Expression<int>? id,
    Expression<String>? title,
    Expression<String>? location,
    Expression<String>? type,
    Expression<int>? startTime,
    Expression<int>? endTime,
    Expression<int>? date,
    Expression<String>? lunarDate,
    Expression<bool>? isLunar,
    Expression<String>? eventTypeName,
    Expression<int>? eventTypeColor,
    Expression<String>? repeatMode,
    Expression<bool>? remind,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (title != null) 'title': title,
      if (location != null) 'location': location,
      if (type != null) 'type': type,
      if (startTime != null) 'start_time': startTime,
      if (endTime != null) 'end_time': endTime,
      if (date != null) 'date': date,
      if (lunarDate != null) 'lunar_date': lunarDate,
      if (isLunar != null) 'is_lunar': isLunar,
      if (eventTypeName != null) 'event_type_name': eventTypeName,
      if (eventTypeColor != null) 'event_type_color': eventTypeColor,
      if (repeatMode != null) 'repeat_mode': repeatMode,
      if (remind != null) 'remind': remind,
    });
  }

  CountdownsCompanion copyWith({
    Value<int>? id,
    Value<String>? title,
    Value<String>? location,
    Value<String>? type,
    Value<int>? startTime,
    Value<int>? endTime,
    Value<int>? date,
    Value<String>? lunarDate,
    Value<bool>? isLunar,
    Value<String>? eventTypeName,
    Value<int>? eventTypeColor,
    Value<String>? repeatMode,
    Value<bool>? remind,
  }) {
    return CountdownsCompanion(
      id: id ?? this.id,
      title: title ?? this.title,
      location: location ?? this.location,
      type: type ?? this.type,
      startTime: startTime ?? this.startTime,
      endTime: endTime ?? this.endTime,
      date: date ?? this.date,
      lunarDate: lunarDate ?? this.lunarDate,
      isLunar: isLunar ?? this.isLunar,
      eventTypeName: eventTypeName ?? this.eventTypeName,
      eventTypeColor: eventTypeColor ?? this.eventTypeColor,
      repeatMode: repeatMode ?? this.repeatMode,
      remind: remind ?? this.remind,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (location.present) {
      map['location'] = Variable<String>(location.value);
    }
    if (type.present) {
      map['type'] = Variable<String>(type.value);
    }
    if (startTime.present) {
      map['start_time'] = Variable<int>(startTime.value);
    }
    if (endTime.present) {
      map['end_time'] = Variable<int>(endTime.value);
    }
    if (date.present) {
      map['date'] = Variable<int>(date.value);
    }
    if (lunarDate.present) {
      map['lunar_date'] = Variable<String>(lunarDate.value);
    }
    if (isLunar.present) {
      map['is_lunar'] = Variable<bool>(isLunar.value);
    }
    if (eventTypeName.present) {
      map['event_type_name'] = Variable<String>(eventTypeName.value);
    }
    if (eventTypeColor.present) {
      map['event_type_color'] = Variable<int>(eventTypeColor.value);
    }
    if (repeatMode.present) {
      map['repeat_mode'] = Variable<String>(repeatMode.value);
    }
    if (remind.present) {
      map['remind'] = Variable<bool>(remind.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CountdownsCompanion(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('location: $location, ')
          ..write('type: $type, ')
          ..write('startTime: $startTime, ')
          ..write('endTime: $endTime, ')
          ..write('date: $date, ')
          ..write('lunarDate: $lunarDate, ')
          ..write('isLunar: $isLunar, ')
          ..write('eventTypeName: $eventTypeName, ')
          ..write('eventTypeColor: $eventTypeColor, ')
          ..write('repeatMode: $repeatMode, ')
          ..write('remind: $remind')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $CountdownsTable countdowns = $CountdownsTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [countdowns];
}

typedef $$CountdownsTableCreateCompanionBuilder =
    CountdownsCompanion Function({
      Value<int> id,
      required String title,
      required String location,
      required String type,
      required int startTime,
      required int endTime,
      Value<int> date,
      required String lunarDate,
      Value<bool> isLunar,
      Value<String> eventTypeName,
      Value<int> eventTypeColor,
      Value<String> repeatMode,
      Value<bool> remind,
    });
typedef $$CountdownsTableUpdateCompanionBuilder =
    CountdownsCompanion Function({
      Value<int> id,
      Value<String> title,
      Value<String> location,
      Value<String> type,
      Value<int> startTime,
      Value<int> endTime,
      Value<int> date,
      Value<String> lunarDate,
      Value<bool> isLunar,
      Value<String> eventTypeName,
      Value<int> eventTypeColor,
      Value<String> repeatMode,
      Value<bool> remind,
    });

class $$CountdownsTableFilterComposer
    extends Composer<_$AppDatabase, $CountdownsTable> {
  $$CountdownsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get location => $composableBuilder(
    column: $table.location,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get type => $composableBuilder(
    column: $table.type,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get startTime => $composableBuilder(
    column: $table.startTime,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get endTime => $composableBuilder(
    column: $table.endTime,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get date => $composableBuilder(
    column: $table.date,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get lunarDate => $composableBuilder(
    column: $table.lunarDate,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isLunar => $composableBuilder(
    column: $table.isLunar,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get eventTypeName => $composableBuilder(
    column: $table.eventTypeName,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get eventTypeColor => $composableBuilder(
    column: $table.eventTypeColor,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get repeatMode => $composableBuilder(
    column: $table.repeatMode,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get remind => $composableBuilder(
    column: $table.remind,
    builder: (column) => ColumnFilters(column),
  );
}

class $$CountdownsTableOrderingComposer
    extends Composer<_$AppDatabase, $CountdownsTable> {
  $$CountdownsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get location => $composableBuilder(
    column: $table.location,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get type => $composableBuilder(
    column: $table.type,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get startTime => $composableBuilder(
    column: $table.startTime,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get endTime => $composableBuilder(
    column: $table.endTime,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get date => $composableBuilder(
    column: $table.date,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get lunarDate => $composableBuilder(
    column: $table.lunarDate,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isLunar => $composableBuilder(
    column: $table.isLunar,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get eventTypeName => $composableBuilder(
    column: $table.eventTypeName,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get eventTypeColor => $composableBuilder(
    column: $table.eventTypeColor,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get repeatMode => $composableBuilder(
    column: $table.repeatMode,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get remind => $composableBuilder(
    column: $table.remind,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$CountdownsTableAnnotationComposer
    extends Composer<_$AppDatabase, $CountdownsTable> {
  $$CountdownsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get title =>
      $composableBuilder(column: $table.title, builder: (column) => column);

  GeneratedColumn<String> get location =>
      $composableBuilder(column: $table.location, builder: (column) => column);

  GeneratedColumn<String> get type =>
      $composableBuilder(column: $table.type, builder: (column) => column);

  GeneratedColumn<int> get startTime =>
      $composableBuilder(column: $table.startTime, builder: (column) => column);

  GeneratedColumn<int> get endTime =>
      $composableBuilder(column: $table.endTime, builder: (column) => column);

  GeneratedColumn<int> get date =>
      $composableBuilder(column: $table.date, builder: (column) => column);

  GeneratedColumn<String> get lunarDate =>
      $composableBuilder(column: $table.lunarDate, builder: (column) => column);

  GeneratedColumn<bool> get isLunar =>
      $composableBuilder(column: $table.isLunar, builder: (column) => column);

  GeneratedColumn<String> get eventTypeName => $composableBuilder(
    column: $table.eventTypeName,
    builder: (column) => column,
  );

  GeneratedColumn<int> get eventTypeColor => $composableBuilder(
    column: $table.eventTypeColor,
    builder: (column) => column,
  );

  GeneratedColumn<String> get repeatMode => $composableBuilder(
    column: $table.repeatMode,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get remind =>
      $composableBuilder(column: $table.remind, builder: (column) => column);
}

class $$CountdownsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $CountdownsTable,
          Countdown,
          $$CountdownsTableFilterComposer,
          $$CountdownsTableOrderingComposer,
          $$CountdownsTableAnnotationComposer,
          $$CountdownsTableCreateCompanionBuilder,
          $$CountdownsTableUpdateCompanionBuilder,
          (
            Countdown,
            BaseReferences<_$AppDatabase, $CountdownsTable, Countdown>,
          ),
          Countdown,
          PrefetchHooks Function()
        > {
  $$CountdownsTableTableManager(_$AppDatabase db, $CountdownsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$CountdownsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$CountdownsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$CountdownsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> title = const Value.absent(),
                Value<String> location = const Value.absent(),
                Value<String> type = const Value.absent(),
                Value<int> startTime = const Value.absent(),
                Value<int> endTime = const Value.absent(),
                Value<int> date = const Value.absent(),
                Value<String> lunarDate = const Value.absent(),
                Value<bool> isLunar = const Value.absent(),
                Value<String> eventTypeName = const Value.absent(),
                Value<int> eventTypeColor = const Value.absent(),
                Value<String> repeatMode = const Value.absent(),
                Value<bool> remind = const Value.absent(),
              }) => CountdownsCompanion(
                id: id,
                title: title,
                location: location,
                type: type,
                startTime: startTime,
                endTime: endTime,
                date: date,
                lunarDate: lunarDate,
                isLunar: isLunar,
                eventTypeName: eventTypeName,
                eventTypeColor: eventTypeColor,
                repeatMode: repeatMode,
                remind: remind,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String title,
                required String location,
                required String type,
                required int startTime,
                required int endTime,
                Value<int> date = const Value.absent(),
                required String lunarDate,
                Value<bool> isLunar = const Value.absent(),
                Value<String> eventTypeName = const Value.absent(),
                Value<int> eventTypeColor = const Value.absent(),
                Value<String> repeatMode = const Value.absent(),
                Value<bool> remind = const Value.absent(),
              }) => CountdownsCompanion.insert(
                id: id,
                title: title,
                location: location,
                type: type,
                startTime: startTime,
                endTime: endTime,
                date: date,
                lunarDate: lunarDate,
                isLunar: isLunar,
                eventTypeName: eventTypeName,
                eventTypeColor: eventTypeColor,
                repeatMode: repeatMode,
                remind: remind,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$CountdownsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $CountdownsTable,
      Countdown,
      $$CountdownsTableFilterComposer,
      $$CountdownsTableOrderingComposer,
      $$CountdownsTableAnnotationComposer,
      $$CountdownsTableCreateCompanionBuilder,
      $$CountdownsTableUpdateCompanionBuilder,
      (Countdown, BaseReferences<_$AppDatabase, $CountdownsTable, Countdown>),
      Countdown,
      PrefetchHooks Function()
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$CountdownsTableTableManager get countdowns =>
      $$CountdownsTableTableManager(_db, _db.countdowns);
}
