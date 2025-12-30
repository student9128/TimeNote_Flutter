import 'package:freezed_annotation/freezed_annotation.dart';
import 'repeat_mode.dart';

part 'countdown_model.freezed.dart';
part 'countdown_model.g.dart';

const int eventDefaultColor = 0xFF2196F3; // default blue color

@freezed
abstract class CountdownModel with _$CountdownModel {
  const factory CountdownModel({
    @Default(0) int id,
    required String title,
    @Default('') String location,
    required String type,
    @Default(-1) int startTime,
    @Default(-1) int endTime,
    @Default(-1) int date,
    @Default('') String lunarDate,
    @Default(false) bool isLunar,
    @Default('倒数日') String eventTypeName,
    @Default(eventDefaultColor) int eventTypeColor,
    @Default(RepeatMode.once) RepeatMode repeatMode,
    @Default(false) bool remind,
  }) = _CountdownModel;

  factory CountdownModel.fromJson(Map<String, dynamic> json) =>
      _$CountdownModelFromJson(json);
}
