// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'countdown_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CountdownModel _$CountdownModelFromJson(Map<String, dynamic> json) =>
    _CountdownModel(
      id: (json['id'] as num?)?.toInt() ?? 0,
      title: json['title'] as String,
      location: json['location'] as String? ?? '',
      type: json['type'] as String,
      startTime: (json['startTime'] as num?)?.toInt() ?? -1,
      endTime: (json['endTime'] as num?)?.toInt() ?? -1,
      date: (json['date'] as num?)?.toInt() ?? -1,
      lunarDate: json['lunarDate'] as String? ?? '',
      isLunar: json['isLunar'] as bool? ?? false,
      eventTypeName: json['eventTypeName'] as String? ?? '倒数日',
      eventTypeColor:
          (json['eventTypeColor'] as num?)?.toInt() ?? eventDefaultColor,
      repeatMode:
          $enumDecodeNullable(_$RepeatModeEnumMap, json['repeatMode']) ??
          RepeatMode.once,
      remind: json['remind'] as bool? ?? false,
    );

Map<String, dynamic> _$CountdownModelToJson(_CountdownModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'location': instance.location,
      'type': instance.type,
      'startTime': instance.startTime,
      'endTime': instance.endTime,
      'date': instance.date,
      'lunarDate': instance.lunarDate,
      'isLunar': instance.isLunar,
      'eventTypeName': instance.eventTypeName,
      'eventTypeColor': instance.eventTypeColor,
      'repeatMode': _$RepeatModeEnumMap[instance.repeatMode]!,
      'remind': instance.remind,
    };

const _$RepeatModeEnumMap = {
  RepeatMode.once: 'ONCE',
  RepeatMode.daily: 'DAILY',
  RepeatMode.weekly: 'WEEKLY',
  RepeatMode.monthly: 'MONTHLY',
  RepeatMode.yearly: 'YEARLY',
};
