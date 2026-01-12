import 'package:freezed_annotation/freezed_annotation.dart';
part 'countdown_edit_state.freezed.dart';

@freezed
class CountdownEditState with _$CountdownEditState{
  const factory CountdownEditState({
    @Default('') String title,
    int? eventTypeId,
    DateTime? targetDate,
    @Default(false) bool submitting,
    String? error,
  }) = _CountdownEditState;

  const CountdownEditState._();

  // bool get canSubmit =>
  //     title.isNotEmpty &&
  //     eventTypeId != null &&
  //     targetDate != null &&
  //     !submitting;
}