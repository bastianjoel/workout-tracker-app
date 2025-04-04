// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'measurement.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Measurement {
  int? get id;
  String? get createdAt;
  String? get updatedAt; /* The number of steps taken */
  double get steps; /* The ID of the user who owns the workout */
  int? get userID; /* The weight of the user, in kilograms */
  double? get weight; /* The date of the measurement (yyyy-mm-dd) */
  String get date; /* The height of the user, in centimeter */
  double? get height;

  /// Create a copy of Measurement
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MeasurementCopyWith<Measurement> get copyWith =>
      _$MeasurementCopyWithImpl<Measurement>(this as Measurement, _$identity);

  /// Serializes this Measurement to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Measurement &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.steps, steps) || other.steps == steps) &&
            (identical(other.userID, userID) || other.userID == userID) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.height, height) || other.height == height));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, createdAt, updatedAt, steps,
      userID, weight, date, height);

  @override
  String toString() {
    return 'Measurement(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, steps: $steps, userID: $userID, weight: $weight, date: $date, height: $height)';
  }
}

/// @nodoc
abstract mixin class $MeasurementCopyWith<$Res> {
  factory $MeasurementCopyWith(
          Measurement value, $Res Function(Measurement) _then) =
      _$MeasurementCopyWithImpl;
  @useResult
  $Res call(
      {int? id,
      String? createdAt,
      String? updatedAt,
      double steps,
      int? userID,
      double? weight,
      String date,
      double? height});
}

/// @nodoc
class _$MeasurementCopyWithImpl<$Res> implements $MeasurementCopyWith<$Res> {
  _$MeasurementCopyWithImpl(this._self, this._then);

  final Measurement _self;
  final $Res Function(Measurement) _then;

  /// Create a copy of Measurement
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? steps = null,
    Object? userID = freezed,
    Object? weight = freezed,
    Object? date = null,
    Object? height = freezed,
  }) {
    return _then(_self.copyWith(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      steps: null == steps
          ? _self.steps
          : steps // ignore: cast_nullable_to_non_nullable
              as double,
      userID: freezed == userID
          ? _self.userID
          : userID // ignore: cast_nullable_to_non_nullable
              as int?,
      weight: freezed == weight
          ? _self.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double?,
      date: null == date
          ? _self.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      height: freezed == height
          ? _self.height
          : height // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _Measurement implements Measurement {
  const _Measurement(
      {this.id,
      this.createdAt,
      this.updatedAt,
      this.steps = 0,
      this.userID,
      required this.weight,
      required this.date,
      required this.height});
  factory _Measurement.fromJson(Map<String, dynamic> json) =>
      _$MeasurementFromJson(json);

  @override
  final int? id;
  @override
  final String? createdAt;
  @override
  final String? updatedAt;
/* The number of steps taken */
  @override
  @JsonKey()
  final double steps;
/* The ID of the user who owns the workout */
  @override
  final int? userID;
/* The weight of the user, in kilograms */
  @override
  final double? weight;
/* The date of the measurement (yyyy-mm-dd) */
  @override
  final String date;
/* The height of the user, in centimeter */
  @override
  final double? height;

  /// Create a copy of Measurement
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MeasurementCopyWith<_Measurement> get copyWith =>
      __$MeasurementCopyWithImpl<_Measurement>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$MeasurementToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Measurement &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.steps, steps) || other.steps == steps) &&
            (identical(other.userID, userID) || other.userID == userID) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.height, height) || other.height == height));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, createdAt, updatedAt, steps,
      userID, weight, date, height);

  @override
  String toString() {
    return 'Measurement(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, steps: $steps, userID: $userID, weight: $weight, date: $date, height: $height)';
  }
}

/// @nodoc
abstract mixin class _$MeasurementCopyWith<$Res>
    implements $MeasurementCopyWith<$Res> {
  factory _$MeasurementCopyWith(
          _Measurement value, $Res Function(_Measurement) _then) =
      __$MeasurementCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int? id,
      String? createdAt,
      String? updatedAt,
      double steps,
      int? userID,
      double? weight,
      String date,
      double? height});
}

/// @nodoc
class __$MeasurementCopyWithImpl<$Res> implements _$MeasurementCopyWith<$Res> {
  __$MeasurementCopyWithImpl(this._self, this._then);

  final _Measurement _self;
  final $Res Function(_Measurement) _then;

  /// Create a copy of Measurement
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? steps = null,
    Object? userID = freezed,
    Object? weight = freezed,
    Object? date = null,
    Object? height = freezed,
  }) {
    return _then(_Measurement(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      steps: null == steps
          ? _self.steps
          : steps // ignore: cast_nullable_to_non_nullable
              as double,
      userID: freezed == userID
          ? _self.userID
          : userID // ignore: cast_nullable_to_non_nullable
              as int?,
      weight: freezed == weight
          ? _self.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double?,
      date: null == date
          ? _self.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      height: freezed == height
          ? _self.height
          : height // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

// dart format on
