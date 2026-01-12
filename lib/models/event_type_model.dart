import 'package:freezed_annotation/freezed_annotation.dart';
part 'event_type_model.freezed.dart';
part 'event_type_model.g.dart';
const int eventDefaultColor = 0xFF2196F3;
@freezed
abstract class EventTypeModel with _$EventTypeModel {
  const factory EventTypeModel({
    @Default(0) int id,
    required String name,
    @Default(eventDefaultColor) int color,
    @Default(false) bool isDefault,
  }) = _EventTypeModel;

  factory EventTypeModel.fromJson(Map<String, dynamic> json) =>
      _$EventTypeModelFromJson(json);
}