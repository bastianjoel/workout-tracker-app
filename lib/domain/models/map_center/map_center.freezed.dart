// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'map_center.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MapCenter {
/* Latitude */
  double get lat; /* Longitude */
  double get lng; /* Timezone */
  String get tz;

  /// Create a copy of MapCenter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MapCenterCopyWith<MapCenter> get copyWith =>
      _$MapCenterCopyWithImpl<MapCenter>(this as MapCenter, _$identity);

  /// Serializes this MapCenter to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MapCenter &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lng, lng) || other.lng == lng) &&
            (identical(other.tz, tz) || other.tz == tz));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, lat, lng, tz);

  @override
  String toString() {
    return 'MapCenter(lat: $lat, lng: $lng, tz: $tz)';
  }
}

/// @nodoc
abstract mixin class $MapCenterCopyWith<$Res> {
  factory $MapCenterCopyWith(MapCenter value, $Res Function(MapCenter) _then) =
      _$MapCenterCopyWithImpl;
  @useResult
  $Res call({double lat, double lng, String tz});
}

/// @nodoc
class _$MapCenterCopyWithImpl<$Res> implements $MapCenterCopyWith<$Res> {
  _$MapCenterCopyWithImpl(this._self, this._then);

  final MapCenter _self;
  final $Res Function(MapCenter) _then;

  /// Create a copy of MapCenter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = null,
    Object? lng = null,
    Object? tz = null,
  }) {
    return _then(_self.copyWith(
      lat: null == lat
          ? _self.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lng: null == lng
          ? _self.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double,
      tz: null == tz
          ? _self.tz
          : tz // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _MapCenter implements MapCenter {
  const _MapCenter({required this.lat, required this.lng, required this.tz});
  factory _MapCenter.fromJson(Map<String, dynamic> json) =>
      _$MapCenterFromJson(json);

/* Latitude */
  @override
  final double lat;
/* Longitude */
  @override
  final double lng;
/* Timezone */
  @override
  final String tz;

  /// Create a copy of MapCenter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MapCenterCopyWith<_MapCenter> get copyWith =>
      __$MapCenterCopyWithImpl<_MapCenter>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$MapCenterToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MapCenter &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lng, lng) || other.lng == lng) &&
            (identical(other.tz, tz) || other.tz == tz));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, lat, lng, tz);

  @override
  String toString() {
    return 'MapCenter(lat: $lat, lng: $lng, tz: $tz)';
  }
}

/// @nodoc
abstract mixin class _$MapCenterCopyWith<$Res>
    implements $MapCenterCopyWith<$Res> {
  factory _$MapCenterCopyWith(
          _MapCenter value, $Res Function(_MapCenter) _then) =
      __$MapCenterCopyWithImpl;
  @override
  @useResult
  $Res call({double lat, double lng, String tz});
}

/// @nodoc
class __$MapCenterCopyWithImpl<$Res> implements _$MapCenterCopyWith<$Res> {
  __$MapCenterCopyWithImpl(this._self, this._then);

  final _MapCenter _self;
  final $Res Function(_MapCenter) _then;

  /// Create a copy of MapCenter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? lat = null,
    Object? lng = null,
    Object? tz = null,
  }) {
    return _then(_MapCenter(
      lat: null == lat
          ? _self.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lng: null == lng
          ? _self.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double,
      tz: null == tz
          ? _self.tz
          : tz // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
