// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'countdown_edit_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CountdownEditState {

 String get title; int? get eventTypeId; DateTime? get targetDate; bool get submitting; String? get error;
/// Create a copy of CountdownEditState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CountdownEditStateCopyWith<CountdownEditState> get copyWith => _$CountdownEditStateCopyWithImpl<CountdownEditState>(this as CountdownEditState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CountdownEditState&&(identical(other.title, title) || other.title == title)&&(identical(other.eventTypeId, eventTypeId) || other.eventTypeId == eventTypeId)&&(identical(other.targetDate, targetDate) || other.targetDate == targetDate)&&(identical(other.submitting, submitting) || other.submitting == submitting)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,title,eventTypeId,targetDate,submitting,error);

@override
String toString() {
  return 'CountdownEditState(title: $title, eventTypeId: $eventTypeId, targetDate: $targetDate, submitting: $submitting, error: $error)';
}


}

/// @nodoc
abstract mixin class $CountdownEditStateCopyWith<$Res>  {
  factory $CountdownEditStateCopyWith(CountdownEditState value, $Res Function(CountdownEditState) _then) = _$CountdownEditStateCopyWithImpl;
@useResult
$Res call({
 String title, int? eventTypeId, DateTime? targetDate, bool submitting, String? error
});




}
/// @nodoc
class _$CountdownEditStateCopyWithImpl<$Res>
    implements $CountdownEditStateCopyWith<$Res> {
  _$CountdownEditStateCopyWithImpl(this._self, this._then);

  final CountdownEditState _self;
  final $Res Function(CountdownEditState) _then;

/// Create a copy of CountdownEditState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? eventTypeId = freezed,Object? targetDate = freezed,Object? submitting = null,Object? error = freezed,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,eventTypeId: freezed == eventTypeId ? _self.eventTypeId : eventTypeId // ignore: cast_nullable_to_non_nullable
as int?,targetDate: freezed == targetDate ? _self.targetDate : targetDate // ignore: cast_nullable_to_non_nullable
as DateTime?,submitting: null == submitting ? _self.submitting : submitting // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CountdownEditState].
extension CountdownEditStatePatterns on CountdownEditState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CountdownEditState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CountdownEditState() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CountdownEditState value)  $default,){
final _that = this;
switch (_that) {
case _CountdownEditState():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CountdownEditState value)?  $default,){
final _that = this;
switch (_that) {
case _CountdownEditState() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String title,  int? eventTypeId,  DateTime? targetDate,  bool submitting,  String? error)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CountdownEditState() when $default != null:
return $default(_that.title,_that.eventTypeId,_that.targetDate,_that.submitting,_that.error);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String title,  int? eventTypeId,  DateTime? targetDate,  bool submitting,  String? error)  $default,) {final _that = this;
switch (_that) {
case _CountdownEditState():
return $default(_that.title,_that.eventTypeId,_that.targetDate,_that.submitting,_that.error);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String title,  int? eventTypeId,  DateTime? targetDate,  bool submitting,  String? error)?  $default,) {final _that = this;
switch (_that) {
case _CountdownEditState() when $default != null:
return $default(_that.title,_that.eventTypeId,_that.targetDate,_that.submitting,_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _CountdownEditState extends CountdownEditState {
  const _CountdownEditState({this.title = '', this.eventTypeId, this.targetDate, this.submitting = false, this.error}): super._();
  

@override@JsonKey() final  String title;
@override final  int? eventTypeId;
@override final  DateTime? targetDate;
@override@JsonKey() final  bool submitting;
@override final  String? error;

/// Create a copy of CountdownEditState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CountdownEditStateCopyWith<_CountdownEditState> get copyWith => __$CountdownEditStateCopyWithImpl<_CountdownEditState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CountdownEditState&&(identical(other.title, title) || other.title == title)&&(identical(other.eventTypeId, eventTypeId) || other.eventTypeId == eventTypeId)&&(identical(other.targetDate, targetDate) || other.targetDate == targetDate)&&(identical(other.submitting, submitting) || other.submitting == submitting)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,title,eventTypeId,targetDate,submitting,error);

@override
String toString() {
  return 'CountdownEditState(title: $title, eventTypeId: $eventTypeId, targetDate: $targetDate, submitting: $submitting, error: $error)';
}


}

/// @nodoc
abstract mixin class _$CountdownEditStateCopyWith<$Res> implements $CountdownEditStateCopyWith<$Res> {
  factory _$CountdownEditStateCopyWith(_CountdownEditState value, $Res Function(_CountdownEditState) _then) = __$CountdownEditStateCopyWithImpl;
@override @useResult
$Res call({
 String title, int? eventTypeId, DateTime? targetDate, bool submitting, String? error
});




}
/// @nodoc
class __$CountdownEditStateCopyWithImpl<$Res>
    implements _$CountdownEditStateCopyWith<$Res> {
  __$CountdownEditStateCopyWithImpl(this._self, this._then);

  final _CountdownEditState _self;
  final $Res Function(_CountdownEditState) _then;

/// Create a copy of CountdownEditState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? eventTypeId = freezed,Object? targetDate = freezed,Object? submitting = null,Object? error = freezed,}) {
  return _then(_CountdownEditState(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,eventTypeId: freezed == eventTypeId ? _self.eventTypeId : eventTypeId // ignore: cast_nullable_to_non_nullable
as int?,targetDate: freezed == targetDate ? _self.targetDate : targetDate // ignore: cast_nullable_to_non_nullable
as DateTime?,submitting: null == submitting ? _self.submitting : submitting // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
