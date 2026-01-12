// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_type_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_EventTypeModel _$EventTypeModelFromJson(Map<String, dynamic> json) =>
    _EventTypeModel(
      id: (json['id'] as num?)?.toInt() ?? 0,
      name: json['name'] as String,
      color: (json['color'] as num?)?.toInt() ?? eventDefaultColor,
      isDefault: json['isDefault'] as bool? ?? false,
    );

Map<String, dynamic> _$EventTypeModelToJson(_EventTypeModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'color': instance.color,
      'isDefault': instance.isDefault,
    };
