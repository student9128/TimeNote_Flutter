import 'package:json_annotation/json_annotation.dart';

part 'repeat_mode.g.dart';

// Keep JSON names stable to store in DB as strings
@JsonEnum(alwaysCreate: true)
enum RepeatMode {
  @JsonValue('ONCE')
  once,
  @JsonValue('DAILY')
  daily,
  @JsonValue('WEEKLY')
  weekly,
  @JsonValue('MONTHLY')
  monthly,
  @JsonValue('YEARLY')
  yearly,
}

extension RepeatModeX on RepeatMode {
  String toShortString() => _$RepeatModeEnumMap[this]!;
}
