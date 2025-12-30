// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'countdown_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CountdownModel {

 int get id; String get title; String get location; String get type; int get startTime; int get endTime; int get date; String get lunarDate; bool get isLunar; String get eventTypeName; int get eventTypeColor; RepeatMode get repeatMode; bool get remind;
/// Create a copy of CountdownModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CountdownModelCopyWith<CountdownModel> get copyWith => _$CountdownModelCopyWithImpl<CountdownModel>(this as CountdownModel, _$identity);

  /// Serializes this CountdownModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CountdownModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.location, location) || other.location == location)&&(identical(other.type, type) || other.type == type)&&(identical(other.startTime, startTime) || other.startTime == startTime)&&(identical(other.endTime, endTime) || other.endTime == endTime)&&(identical(other.date, date) || other.date == date)&&(identical(other.lunarDate, lunarDate) || other.lunarDate == lunarDate)&&(identical(other.isLunar, isLunar) || other.isLunar == isLunar)&&(identical(other.eventTypeName, eventTypeName) || other.eventTypeName == eventTypeName)&&(identical(other.eventTypeColor, eventTypeColor) || other.eventTypeColor == eventTypeColor)&&(identical(other.repeatMode, repeatMode) || other.repeatMode == repeatMode)&&(identical(other.remind, remind) || other.remind == remind));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,location,type,startTime,endTime,date,lunarDate,isLunar,eventTypeName,eventTypeColor,repeatMode,remind);

@override
String toString() {
  return 'CountdownModel(id: $id, title: $title, location: $location, type: $type, startTime: $startTime, endTime: $endTime, date: $date, lunarDate: $lunarDate, isLunar: $isLunar, eventTypeName: $eventTypeName, eventTypeColor: $eventTypeColor, repeatMode: $repeatMode, remind: $remind)';
}


}

/// @nodoc
abstract mixin class $CountdownModelCopyWith<$Res>  {
  factory $CountdownModelCopyWith(CountdownModel value, $Res Function(CountdownModel) _then) = _$CountdownModelCopyWithImpl;
@useResult
$Res call({
 int id, String title, String location, String type, int startTime, int endTime, int date, String lunarDate, bool isLunar, String eventTypeName, int eventTypeColor, RepeatMode repeatMode, bool remind
});




}
/// @nodoc
class _$CountdownModelCopyWithImpl<$Res>
    implements $CountdownModelCopyWith<$Res> {
  _$CountdownModelCopyWithImpl(this._self, this._then);

  final CountdownModel _self;
  final $Res Function(CountdownModel) _then;

/// Create a copy of CountdownModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? location = null,Object? type = null,Object? startTime = null,Object? endTime = null,Object? date = null,Object? lunarDate = null,Object? isLunar = null,Object? eventTypeName = null,Object? eventTypeColor = null,Object? repeatMode = null,Object? remind = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,startTime: null == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as int,endTime: null == endTime ? _self.endTime : endTime // ignore: cast_nullable_to_non_nullable
as int,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as int,lunarDate: null == lunarDate ? _self.lunarDate : lunarDate // ignore: cast_nullable_to_non_nullable
as String,isLunar: null == isLunar ? _self.isLunar : isLunar // ignore: cast_nullable_to_non_nullable
as bool,eventTypeName: null == eventTypeName ? _self.eventTypeName : eventTypeName // ignore: cast_nullable_to_non_nullable
as String,eventTypeColor: null == eventTypeColor ? _self.eventTypeColor : eventTypeColor // ignore: cast_nullable_to_non_nullable
as int,repeatMode: null == repeatMode ? _self.repeatMode : repeatMode // ignore: cast_nullable_to_non_nullable
as RepeatMode,remind: null == remind ? _self.remind : remind // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [CountdownModel].
extension CountdownModelPatterns on CountdownModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CountdownModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CountdownModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CountdownModel value)  $default,){
final _that = this;
switch (_that) {
case _CountdownModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CountdownModel value)?  $default,){
final _that = this;
switch (_that) {
case _CountdownModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String title,  String location,  String type,  int startTime,  int endTime,  int date,  String lunarDate,  bool isLunar,  String eventTypeName,  int eventTypeColor,  RepeatMode repeatMode,  bool remind)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CountdownModel() when $default != null:
return $default(_that.id,_that.title,_that.location,_that.type,_that.startTime,_that.endTime,_that.date,_that.lunarDate,_that.isLunar,_that.eventTypeName,_that.eventTypeColor,_that.repeatMode,_that.remind);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String title,  String location,  String type,  int startTime,  int endTime,  int date,  String lunarDate,  bool isLunar,  String eventTypeName,  int eventTypeColor,  RepeatMode repeatMode,  bool remind)  $default,) {final _that = this;
switch (_that) {
case _CountdownModel():
return $default(_that.id,_that.title,_that.location,_that.type,_that.startTime,_that.endTime,_that.date,_that.lunarDate,_that.isLunar,_that.eventTypeName,_that.eventTypeColor,_that.repeatMode,_that.remind);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String title,  String location,  String type,  int startTime,  int endTime,  int date,  String lunarDate,  bool isLunar,  String eventTypeName,  int eventTypeColor,  RepeatMode repeatMode,  bool remind)?  $default,) {final _that = this;
switch (_that) {
case _CountdownModel() when $default != null:
return $default(_that.id,_that.title,_that.location,_that.type,_that.startTime,_that.endTime,_that.date,_that.lunarDate,_that.isLunar,_that.eventTypeName,_that.eventTypeColor,_that.repeatMode,_that.remind);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CountdownModel implements CountdownModel {
  const _CountdownModel({this.id = 0, required this.title, this.location = '', required this.type, this.startTime = -1, this.endTime = -1, this.date = -1, this.lunarDate = '', this.isLunar = false, this.eventTypeName = '倒数日', this.eventTypeColor = eventDefaultColor, this.repeatMode = RepeatMode.once, this.remind = false});
  factory _CountdownModel.fromJson(Map<String, dynamic> json) => _$CountdownModelFromJson(json);

@override@JsonKey() final  int id;
@override final  String title;
@override@JsonKey() final  String location;
@override final  String type;
@override@JsonKey() final  int startTime;
@override@JsonKey() final  int endTime;
@override@JsonKey() final  int date;
@override@JsonKey() final  String lunarDate;
@override@JsonKey() final  bool isLunar;
@override@JsonKey() final  String eventTypeName;
@override@JsonKey() final  int eventTypeColor;
@override@JsonKey() final  RepeatMode repeatMode;
@override@JsonKey() final  bool remind;

/// Create a copy of CountdownModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CountdownModelCopyWith<_CountdownModel> get copyWith => __$CountdownModelCopyWithImpl<_CountdownModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CountdownModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CountdownModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.location, location) || other.location == location)&&(identical(other.type, type) || other.type == type)&&(identical(other.startTime, startTime) || other.startTime == startTime)&&(identical(other.endTime, endTime) || other.endTime == endTime)&&(identical(other.date, date) || other.date == date)&&(identical(other.lunarDate, lunarDate) || other.lunarDate == lunarDate)&&(identical(other.isLunar, isLunar) || other.isLunar == isLunar)&&(identical(other.eventTypeName, eventTypeName) || other.eventTypeName == eventTypeName)&&(identical(other.eventTypeColor, eventTypeColor) || other.eventTypeColor == eventTypeColor)&&(identical(other.repeatMode, repeatMode) || other.repeatMode == repeatMode)&&(identical(other.remind, remind) || other.remind == remind));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,location,type,startTime,endTime,date,lunarDate,isLunar,eventTypeName,eventTypeColor,repeatMode,remind);

@override
String toString() {
  return 'CountdownModel(id: $id, title: $title, location: $location, type: $type, startTime: $startTime, endTime: $endTime, date: $date, lunarDate: $lunarDate, isLunar: $isLunar, eventTypeName: $eventTypeName, eventTypeColor: $eventTypeColor, repeatMode: $repeatMode, remind: $remind)';
}


}

/// @nodoc
abstract mixin class _$CountdownModelCopyWith<$Res> implements $CountdownModelCopyWith<$Res> {
  factory _$CountdownModelCopyWith(_CountdownModel value, $Res Function(_CountdownModel) _then) = __$CountdownModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String title, String location, String type, int startTime, int endTime, int date, String lunarDate, bool isLunar, String eventTypeName, int eventTypeColor, RepeatMode repeatMode, bool remind
});




}
/// @nodoc
class __$CountdownModelCopyWithImpl<$Res>
    implements _$CountdownModelCopyWith<$Res> {
  __$CountdownModelCopyWithImpl(this._self, this._then);

  final _CountdownModel _self;
  final $Res Function(_CountdownModel) _then;

/// Create a copy of CountdownModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? location = null,Object? type = null,Object? startTime = null,Object? endTime = null,Object? date = null,Object? lunarDate = null,Object? isLunar = null,Object? eventTypeName = null,Object? eventTypeColor = null,Object? repeatMode = null,Object? remind = null,}) {
  return _then(_CountdownModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,startTime: null == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as int,endTime: null == endTime ? _self.endTime : endTime // ignore: cast_nullable_to_non_nullable
as int,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as int,lunarDate: null == lunarDate ? _self.lunarDate : lunarDate // ignore: cast_nullable_to_non_nullable
as String,isLunar: null == isLunar ? _self.isLunar : isLunar // ignore: cast_nullable_to_non_nullable
as bool,eventTypeName: null == eventTypeName ? _self.eventTypeName : eventTypeName // ignore: cast_nullable_to_non_nullable
as String,eventTypeColor: null == eventTypeColor ? _self.eventTypeColor : eventTypeColor // ignore: cast_nullable_to_non_nullable
as int,repeatMode: null == repeatMode ? _self.repeatMode : repeatMode // ignore: cast_nullable_to_non_nullable
as RepeatMode,remind: null == remind ? _self.remind : remind // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
