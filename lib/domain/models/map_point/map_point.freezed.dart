// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'map_point.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MapPoint {
/* The distance from the previous point */
  double get distance; /* The duration from the previous point */
  int get duration; /* The elevation of the point */
  double get elevation; /* Extra metrics at this point */
// AllOfdatabaseMapPointExtraMetrics? extraMetrics,
/* The latitude of the point */
  double get lat; /* The longitude of the point */
  double get lng; /* The time the point was recorded */
  DateTime get time; /* The total distance of the workout up to this point */
  double
      get totalDistance; /* The total duration of the workout up to this point */
  int get totalDuration;

  /// Create a copy of MapPoint
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MapPointCopyWith<MapPoint> get copyWith =>
      _$MapPointCopyWithImpl<MapPoint>(this as MapPoint, _$identity);

  /// Serializes this MapPoint to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MapPoint &&
            (identical(other.distance, distance) ||
                other.distance == distance) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.elevation, elevation) ||
                other.elevation == elevation) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lng, lng) || other.lng == lng) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.totalDistance, totalDistance) ||
                other.totalDistance == totalDistance) &&
            (identical(other.totalDuration, totalDuration) ||
                other.totalDuration == totalDuration));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, distance, duration, elevation,
      lat, lng, time, totalDistance, totalDuration);

  @override
  String toString() {
    return 'MapPoint(distance: $distance, duration: $duration, elevation: $elevation, lat: $lat, lng: $lng, time: $time, totalDistance: $totalDistance, totalDuration: $totalDuration)';
  }
}

/// @nodoc
abstract mixin class $MapPointCopyWith<$Res> {
  factory $MapPointCopyWith(MapPoint value, $Res Function(MapPoint) _then) =
      _$MapPointCopyWithImpl;
  @useResult
  $Res call(
      {double distance,
      int duration,
      double elevation,
      double lat,
      double lng,
      DateTime time,
      double totalDistance,
      int totalDuration});
}

/// @nodoc
class _$MapPointCopyWithImpl<$Res> implements $MapPointCopyWith<$Res> {
  _$MapPointCopyWithImpl(this._self, this._then);

  final MapPoint _self;
  final $Res Function(MapPoint) _then;

  /// Create a copy of MapPoint
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? distance = null,
    Object? duration = null,
    Object? elevation = null,
    Object? lat = null,
    Object? lng = null,
    Object? time = null,
    Object? totalDistance = null,
    Object? totalDuration = null,
  }) {
    return _then(_self.copyWith(
      distance: null == distance
          ? _self.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double,
      duration: null == duration
          ? _self.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      elevation: null == elevation
          ? _self.elevation
          : elevation // ignore: cast_nullable_to_non_nullable
              as double,
      lat: null == lat
          ? _self.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lng: null == lng
          ? _self.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double,
      time: null == time
          ? _self.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
      totalDistance: null == totalDistance
          ? _self.totalDistance
          : totalDistance // ignore: cast_nullable_to_non_nullable
              as double,
      totalDuration: null == totalDuration
          ? _self.totalDuration
          : totalDuration // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _MapPoint implements MapPoint {
  const _MapPoint(
      {required this.distance,
      required this.duration,
      required this.elevation,
      required this.lat,
      required this.lng,
      required this.time,
      required this.totalDistance,
      required this.totalDuration});
  factory _MapPoint.fromJson(Map<String, dynamic> json) =>
      _$MapPointFromJson(json);

/* The distance from the previous point */
  @override
  final double distance;
/* The duration from the previous point */
  @override
  final int duration;
/* The elevation of the point */
  @override
  final double elevation;
/* Extra metrics at this point */
// AllOfdatabaseMapPointExtraMetrics? extraMetrics,
/* The latitude of the point */
  @override
  final double lat;
/* The longitude of the point */
  @override
  final double lng;
/* The time the point was recorded */
  @override
  final DateTime time;
/* The total distance of the workout up to this point */
  @override
  final double totalDistance;
/* The total duration of the workout up to this point */
  @override
  final int totalDuration;

  /// Create a copy of MapPoint
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MapPointCopyWith<_MapPoint> get copyWith =>
      __$MapPointCopyWithImpl<_MapPoint>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$MapPointToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MapPoint &&
            (identical(other.distance, distance) ||
                other.distance == distance) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.elevation, elevation) ||
                other.elevation == elevation) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lng, lng) || other.lng == lng) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.totalDistance, totalDistance) ||
                other.totalDistance == totalDistance) &&
            (identical(other.totalDuration, totalDuration) ||
                other.totalDuration == totalDuration));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, distance, duration, elevation,
      lat, lng, time, totalDistance, totalDuration);

  @override
  String toString() {
    return 'MapPoint(distance: $distance, duration: $duration, elevation: $elevation, lat: $lat, lng: $lng, time: $time, totalDistance: $totalDistance, totalDuration: $totalDuration)';
  }
}

/// @nodoc
abstract mixin class _$MapPointCopyWith<$Res>
    implements $MapPointCopyWith<$Res> {
  factory _$MapPointCopyWith(_MapPoint value, $Res Function(_MapPoint) _then) =
      __$MapPointCopyWithImpl;
  @override
  @useResult
  $Res call(
      {double distance,
      int duration,
      double elevation,
      double lat,
      double lng,
      DateTime time,
      double totalDistance,
      int totalDuration});
}

/// @nodoc
class __$MapPointCopyWithImpl<$Res> implements _$MapPointCopyWith<$Res> {
  __$MapPointCopyWithImpl(this._self, this._then);

  final _MapPoint _self;
  final $Res Function(_MapPoint) _then;

  /// Create a copy of MapPoint
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? distance = null,
    Object? duration = null,
    Object? elevation = null,
    Object? lat = null,
    Object? lng = null,
    Object? time = null,
    Object? totalDistance = null,
    Object? totalDuration = null,
  }) {
    return _then(_MapPoint(
      distance: null == distance
          ? _self.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double,
      duration: null == duration
          ? _self.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      elevation: null == elevation
          ? _self.elevation
          : elevation // ignore: cast_nullable_to_non_nullable
              as double,
      lat: null == lat
          ? _self.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lng: null == lng
          ? _self.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double,
      time: null == time
          ? _self.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
      totalDistance: null == totalDistance
          ? _self.totalDistance
          : totalDistance // ignore: cast_nullable_to_non_nullable
              as double,
      totalDuration: null == totalDuration
          ? _self.totalDuration
          : totalDuration // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

// dart format on
