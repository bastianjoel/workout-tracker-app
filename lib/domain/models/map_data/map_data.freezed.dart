// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'map_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MapData {
  int? get id;
  String? get createdAt;
  String? get updatedAt; /* The address of the workout */
// AllOfdatabaseMapDataAddress? address,
/* The generic location of the workout */
  String get addressString; /* The average speed of the workout */
  double
      get averageSpeed; /* The average speed of the workout without pausing */
  double
      get averageSpeedNoPause; /* The center of the workout (in coordinates) */
  MapCenter get center; /* The tool that created this workout */
  String get creator; /* The details of the workout */
  MapDataDetails? get details; /* Extra metrcis available */
  List<String> get extraMetrics; /* The maximum elevation of the workout */
  double get maxElevation; /* The maximum speed of the workout */
  double get maxSpeed; /* The minimum elevation of the workout */
  double get minElevation; /* The name of the workout */
  String get name; /* The total pause duration of the workout */
  int get pauseDuration; /* The start time of the workout */
  DateTime get start; /* The stop time of the workout */
  DateTime get stop; /* The total distance of the workout */
  double get totalDistance; /* The total distance down of the workout */
  double get totalDown; /* The total duration of the workout */
  int get totalDuration; /* The number of repetitions of the workout */
  int get totalRepetitions; /* The total distance up of the workout */
  double get totalUp; /* The weight of the workout */
  double get totalWeight; /* The type of the workout */
  String get type; /* The workout this data belongs to */
  int get workoutID;

  /// Create a copy of MapData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MapDataCopyWith<MapData> get copyWith =>
      _$MapDataCopyWithImpl<MapData>(this as MapData, _$identity);

  /// Serializes this MapData to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MapData &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.addressString, addressString) ||
                other.addressString == addressString) &&
            (identical(other.averageSpeed, averageSpeed) ||
                other.averageSpeed == averageSpeed) &&
            (identical(other.averageSpeedNoPause, averageSpeedNoPause) ||
                other.averageSpeedNoPause == averageSpeedNoPause) &&
            (identical(other.center, center) || other.center == center) &&
            (identical(other.creator, creator) || other.creator == creator) &&
            (identical(other.details, details) || other.details == details) &&
            const DeepCollectionEquality()
                .equals(other.extraMetrics, extraMetrics) &&
            (identical(other.maxElevation, maxElevation) ||
                other.maxElevation == maxElevation) &&
            (identical(other.maxSpeed, maxSpeed) ||
                other.maxSpeed == maxSpeed) &&
            (identical(other.minElevation, minElevation) ||
                other.minElevation == minElevation) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.pauseDuration, pauseDuration) ||
                other.pauseDuration == pauseDuration) &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.stop, stop) || other.stop == stop) &&
            (identical(other.totalDistance, totalDistance) ||
                other.totalDistance == totalDistance) &&
            (identical(other.totalDown, totalDown) ||
                other.totalDown == totalDown) &&
            (identical(other.totalDuration, totalDuration) ||
                other.totalDuration == totalDuration) &&
            (identical(other.totalRepetitions, totalRepetitions) ||
                other.totalRepetitions == totalRepetitions) &&
            (identical(other.totalUp, totalUp) || other.totalUp == totalUp) &&
            (identical(other.totalWeight, totalWeight) ||
                other.totalWeight == totalWeight) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.workoutID, workoutID) ||
                other.workoutID == workoutID));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        createdAt,
        updatedAt,
        addressString,
        averageSpeed,
        averageSpeedNoPause,
        center,
        creator,
        details,
        const DeepCollectionEquality().hash(extraMetrics),
        maxElevation,
        maxSpeed,
        minElevation,
        name,
        pauseDuration,
        start,
        stop,
        totalDistance,
        totalDown,
        totalDuration,
        totalRepetitions,
        totalUp,
        totalWeight,
        type,
        workoutID
      ]);

  @override
  String toString() {
    return 'MapData(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, addressString: $addressString, averageSpeed: $averageSpeed, averageSpeedNoPause: $averageSpeedNoPause, center: $center, creator: $creator, details: $details, extraMetrics: $extraMetrics, maxElevation: $maxElevation, maxSpeed: $maxSpeed, minElevation: $minElevation, name: $name, pauseDuration: $pauseDuration, start: $start, stop: $stop, totalDistance: $totalDistance, totalDown: $totalDown, totalDuration: $totalDuration, totalRepetitions: $totalRepetitions, totalUp: $totalUp, totalWeight: $totalWeight, type: $type, workoutID: $workoutID)';
  }
}

/// @nodoc
abstract mixin class $MapDataCopyWith<$Res> {
  factory $MapDataCopyWith(MapData value, $Res Function(MapData) _then) =
      _$MapDataCopyWithImpl;
  @useResult
  $Res call(
      {int? id,
      String? createdAt,
      String? updatedAt,
      String addressString,
      double averageSpeed,
      double averageSpeedNoPause,
      MapCenter center,
      String creator,
      MapDataDetails? details,
      List<String> extraMetrics,
      double maxElevation,
      double maxSpeed,
      double minElevation,
      String name,
      int pauseDuration,
      DateTime start,
      DateTime stop,
      double totalDistance,
      double totalDown,
      int totalDuration,
      int totalRepetitions,
      double totalUp,
      double totalWeight,
      String type,
      int workoutID});

  $MapCenterCopyWith<$Res> get center;
  $MapDataDetailsCopyWith<$Res>? get details;
}

/// @nodoc
class _$MapDataCopyWithImpl<$Res> implements $MapDataCopyWith<$Res> {
  _$MapDataCopyWithImpl(this._self, this._then);

  final MapData _self;
  final $Res Function(MapData) _then;

  /// Create a copy of MapData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? addressString = null,
    Object? averageSpeed = null,
    Object? averageSpeedNoPause = null,
    Object? center = null,
    Object? creator = null,
    Object? details = freezed,
    Object? extraMetrics = null,
    Object? maxElevation = null,
    Object? maxSpeed = null,
    Object? minElevation = null,
    Object? name = null,
    Object? pauseDuration = null,
    Object? start = null,
    Object? stop = null,
    Object? totalDistance = null,
    Object? totalDown = null,
    Object? totalDuration = null,
    Object? totalRepetitions = null,
    Object? totalUp = null,
    Object? totalWeight = null,
    Object? type = null,
    Object? workoutID = null,
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
      addressString: null == addressString
          ? _self.addressString
          : addressString // ignore: cast_nullable_to_non_nullable
              as String,
      averageSpeed: null == averageSpeed
          ? _self.averageSpeed
          : averageSpeed // ignore: cast_nullable_to_non_nullable
              as double,
      averageSpeedNoPause: null == averageSpeedNoPause
          ? _self.averageSpeedNoPause
          : averageSpeedNoPause // ignore: cast_nullable_to_non_nullable
              as double,
      center: null == center
          ? _self.center
          : center // ignore: cast_nullable_to_non_nullable
              as MapCenter,
      creator: null == creator
          ? _self.creator
          : creator // ignore: cast_nullable_to_non_nullable
              as String,
      details: freezed == details
          ? _self.details
          : details // ignore: cast_nullable_to_non_nullable
              as MapDataDetails?,
      extraMetrics: null == extraMetrics
          ? _self.extraMetrics
          : extraMetrics // ignore: cast_nullable_to_non_nullable
              as List<String>,
      maxElevation: null == maxElevation
          ? _self.maxElevation
          : maxElevation // ignore: cast_nullable_to_non_nullable
              as double,
      maxSpeed: null == maxSpeed
          ? _self.maxSpeed
          : maxSpeed // ignore: cast_nullable_to_non_nullable
              as double,
      minElevation: null == minElevation
          ? _self.minElevation
          : minElevation // ignore: cast_nullable_to_non_nullable
              as double,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      pauseDuration: null == pauseDuration
          ? _self.pauseDuration
          : pauseDuration // ignore: cast_nullable_to_non_nullable
              as int,
      start: null == start
          ? _self.start
          : start // ignore: cast_nullable_to_non_nullable
              as DateTime,
      stop: null == stop
          ? _self.stop
          : stop // ignore: cast_nullable_to_non_nullable
              as DateTime,
      totalDistance: null == totalDistance
          ? _self.totalDistance
          : totalDistance // ignore: cast_nullable_to_non_nullable
              as double,
      totalDown: null == totalDown
          ? _self.totalDown
          : totalDown // ignore: cast_nullable_to_non_nullable
              as double,
      totalDuration: null == totalDuration
          ? _self.totalDuration
          : totalDuration // ignore: cast_nullable_to_non_nullable
              as int,
      totalRepetitions: null == totalRepetitions
          ? _self.totalRepetitions
          : totalRepetitions // ignore: cast_nullable_to_non_nullable
              as int,
      totalUp: null == totalUp
          ? _self.totalUp
          : totalUp // ignore: cast_nullable_to_non_nullable
              as double,
      totalWeight: null == totalWeight
          ? _self.totalWeight
          : totalWeight // ignore: cast_nullable_to_non_nullable
              as double,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      workoutID: null == workoutID
          ? _self.workoutID
          : workoutID // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  /// Create a copy of MapData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MapCenterCopyWith<$Res> get center {
    return $MapCenterCopyWith<$Res>(_self.center, (value) {
      return _then(_self.copyWith(center: value));
    });
  }

  /// Create a copy of MapData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MapDataDetailsCopyWith<$Res>? get details {
    if (_self.details == null) {
      return null;
    }

    return $MapDataDetailsCopyWith<$Res>(_self.details!, (value) {
      return _then(_self.copyWith(details: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _MapData implements MapData {
  const _MapData(
      {this.id,
      this.createdAt,
      this.updatedAt,
      required this.addressString,
      this.averageSpeed = 0,
      this.averageSpeedNoPause = 0,
      required this.center,
      required this.creator,
      this.details,
      final List<String> extraMetrics = const [],
      this.maxElevation = 0,
      this.maxSpeed = 0,
      this.minElevation = 0,
      this.name = '',
      this.pauseDuration = 0,
      required this.start,
      required this.stop,
      this.totalDistance = 0,
      this.totalDown = 0,
      this.totalDuration = 0,
      this.totalRepetitions = 0,
      this.totalUp = 0,
      this.totalWeight = 0,
      required this.type,
      required this.workoutID})
      : _extraMetrics = extraMetrics;
  factory _MapData.fromJson(Map<String, dynamic> json) =>
      _$MapDataFromJson(json);

  @override
  final int? id;
  @override
  final String? createdAt;
  @override
  final String? updatedAt;
/* The address of the workout */
// AllOfdatabaseMapDataAddress? address,
/* The generic location of the workout */
  @override
  final String addressString;
/* The average speed of the workout */
  @override
  @JsonKey()
  final double averageSpeed;
/* The average speed of the workout without pausing */
  @override
  @JsonKey()
  final double averageSpeedNoPause;
/* The center of the workout (in coordinates) */
  @override
  final MapCenter center;
/* The tool that created this workout */
  @override
  final String creator;
/* The details of the workout */
  @override
  final MapDataDetails? details;
/* Extra metrcis available */
  final List<String> _extraMetrics;
/* Extra metrcis available */
  @override
  @JsonKey()
  List<String> get extraMetrics {
    if (_extraMetrics is EqualUnmodifiableListView) return _extraMetrics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_extraMetrics);
  }

/* The maximum elevation of the workout */
  @override
  @JsonKey()
  final double maxElevation;
/* The maximum speed of the workout */
  @override
  @JsonKey()
  final double maxSpeed;
/* The minimum elevation of the workout */
  @override
  @JsonKey()
  final double minElevation;
/* The name of the workout */
  @override
  @JsonKey()
  final String name;
/* The total pause duration of the workout */
  @override
  @JsonKey()
  final int pauseDuration;
/* The start time of the workout */
  @override
  final DateTime start;
/* The stop time of the workout */
  @override
  final DateTime stop;
/* The total distance of the workout */
  @override
  @JsonKey()
  final double totalDistance;
/* The total distance down of the workout */
  @override
  @JsonKey()
  final double totalDown;
/* The total duration of the workout */
  @override
  @JsonKey()
  final int totalDuration;
/* The number of repetitions of the workout */
  @override
  @JsonKey()
  final int totalRepetitions;
/* The total distance up of the workout */
  @override
  @JsonKey()
  final double totalUp;
/* The weight of the workout */
  @override
  @JsonKey()
  final double totalWeight;
/* The type of the workout */
  @override
  final String type;
/* The workout this data belongs to */
  @override
  final int workoutID;

  /// Create a copy of MapData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MapDataCopyWith<_MapData> get copyWith =>
      __$MapDataCopyWithImpl<_MapData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$MapDataToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MapData &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.addressString, addressString) ||
                other.addressString == addressString) &&
            (identical(other.averageSpeed, averageSpeed) ||
                other.averageSpeed == averageSpeed) &&
            (identical(other.averageSpeedNoPause, averageSpeedNoPause) ||
                other.averageSpeedNoPause == averageSpeedNoPause) &&
            (identical(other.center, center) || other.center == center) &&
            (identical(other.creator, creator) || other.creator == creator) &&
            (identical(other.details, details) || other.details == details) &&
            const DeepCollectionEquality()
                .equals(other._extraMetrics, _extraMetrics) &&
            (identical(other.maxElevation, maxElevation) ||
                other.maxElevation == maxElevation) &&
            (identical(other.maxSpeed, maxSpeed) ||
                other.maxSpeed == maxSpeed) &&
            (identical(other.minElevation, minElevation) ||
                other.minElevation == minElevation) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.pauseDuration, pauseDuration) ||
                other.pauseDuration == pauseDuration) &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.stop, stop) || other.stop == stop) &&
            (identical(other.totalDistance, totalDistance) ||
                other.totalDistance == totalDistance) &&
            (identical(other.totalDown, totalDown) ||
                other.totalDown == totalDown) &&
            (identical(other.totalDuration, totalDuration) ||
                other.totalDuration == totalDuration) &&
            (identical(other.totalRepetitions, totalRepetitions) ||
                other.totalRepetitions == totalRepetitions) &&
            (identical(other.totalUp, totalUp) || other.totalUp == totalUp) &&
            (identical(other.totalWeight, totalWeight) ||
                other.totalWeight == totalWeight) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.workoutID, workoutID) ||
                other.workoutID == workoutID));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        createdAt,
        updatedAt,
        addressString,
        averageSpeed,
        averageSpeedNoPause,
        center,
        creator,
        details,
        const DeepCollectionEquality().hash(_extraMetrics),
        maxElevation,
        maxSpeed,
        minElevation,
        name,
        pauseDuration,
        start,
        stop,
        totalDistance,
        totalDown,
        totalDuration,
        totalRepetitions,
        totalUp,
        totalWeight,
        type,
        workoutID
      ]);

  @override
  String toString() {
    return 'MapData(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, addressString: $addressString, averageSpeed: $averageSpeed, averageSpeedNoPause: $averageSpeedNoPause, center: $center, creator: $creator, details: $details, extraMetrics: $extraMetrics, maxElevation: $maxElevation, maxSpeed: $maxSpeed, minElevation: $minElevation, name: $name, pauseDuration: $pauseDuration, start: $start, stop: $stop, totalDistance: $totalDistance, totalDown: $totalDown, totalDuration: $totalDuration, totalRepetitions: $totalRepetitions, totalUp: $totalUp, totalWeight: $totalWeight, type: $type, workoutID: $workoutID)';
  }
}

/// @nodoc
abstract mixin class _$MapDataCopyWith<$Res> implements $MapDataCopyWith<$Res> {
  factory _$MapDataCopyWith(_MapData value, $Res Function(_MapData) _then) =
      __$MapDataCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int? id,
      String? createdAt,
      String? updatedAt,
      String addressString,
      double averageSpeed,
      double averageSpeedNoPause,
      MapCenter center,
      String creator,
      MapDataDetails? details,
      List<String> extraMetrics,
      double maxElevation,
      double maxSpeed,
      double minElevation,
      String name,
      int pauseDuration,
      DateTime start,
      DateTime stop,
      double totalDistance,
      double totalDown,
      int totalDuration,
      int totalRepetitions,
      double totalUp,
      double totalWeight,
      String type,
      int workoutID});

  @override
  $MapCenterCopyWith<$Res> get center;
  @override
  $MapDataDetailsCopyWith<$Res>? get details;
}

/// @nodoc
class __$MapDataCopyWithImpl<$Res> implements _$MapDataCopyWith<$Res> {
  __$MapDataCopyWithImpl(this._self, this._then);

  final _MapData _self;
  final $Res Function(_MapData) _then;

  /// Create a copy of MapData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? addressString = null,
    Object? averageSpeed = null,
    Object? averageSpeedNoPause = null,
    Object? center = null,
    Object? creator = null,
    Object? details = freezed,
    Object? extraMetrics = null,
    Object? maxElevation = null,
    Object? maxSpeed = null,
    Object? minElevation = null,
    Object? name = null,
    Object? pauseDuration = null,
    Object? start = null,
    Object? stop = null,
    Object? totalDistance = null,
    Object? totalDown = null,
    Object? totalDuration = null,
    Object? totalRepetitions = null,
    Object? totalUp = null,
    Object? totalWeight = null,
    Object? type = null,
    Object? workoutID = null,
  }) {
    return _then(_MapData(
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
      addressString: null == addressString
          ? _self.addressString
          : addressString // ignore: cast_nullable_to_non_nullable
              as String,
      averageSpeed: null == averageSpeed
          ? _self.averageSpeed
          : averageSpeed // ignore: cast_nullable_to_non_nullable
              as double,
      averageSpeedNoPause: null == averageSpeedNoPause
          ? _self.averageSpeedNoPause
          : averageSpeedNoPause // ignore: cast_nullable_to_non_nullable
              as double,
      center: null == center
          ? _self.center
          : center // ignore: cast_nullable_to_non_nullable
              as MapCenter,
      creator: null == creator
          ? _self.creator
          : creator // ignore: cast_nullable_to_non_nullable
              as String,
      details: freezed == details
          ? _self.details
          : details // ignore: cast_nullable_to_non_nullable
              as MapDataDetails?,
      extraMetrics: null == extraMetrics
          ? _self._extraMetrics
          : extraMetrics // ignore: cast_nullable_to_non_nullable
              as List<String>,
      maxElevation: null == maxElevation
          ? _self.maxElevation
          : maxElevation // ignore: cast_nullable_to_non_nullable
              as double,
      maxSpeed: null == maxSpeed
          ? _self.maxSpeed
          : maxSpeed // ignore: cast_nullable_to_non_nullable
              as double,
      minElevation: null == minElevation
          ? _self.minElevation
          : minElevation // ignore: cast_nullable_to_non_nullable
              as double,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      pauseDuration: null == pauseDuration
          ? _self.pauseDuration
          : pauseDuration // ignore: cast_nullable_to_non_nullable
              as int,
      start: null == start
          ? _self.start
          : start // ignore: cast_nullable_to_non_nullable
              as DateTime,
      stop: null == stop
          ? _self.stop
          : stop // ignore: cast_nullable_to_non_nullable
              as DateTime,
      totalDistance: null == totalDistance
          ? _self.totalDistance
          : totalDistance // ignore: cast_nullable_to_non_nullable
              as double,
      totalDown: null == totalDown
          ? _self.totalDown
          : totalDown // ignore: cast_nullable_to_non_nullable
              as double,
      totalDuration: null == totalDuration
          ? _self.totalDuration
          : totalDuration // ignore: cast_nullable_to_non_nullable
              as int,
      totalRepetitions: null == totalRepetitions
          ? _self.totalRepetitions
          : totalRepetitions // ignore: cast_nullable_to_non_nullable
              as int,
      totalUp: null == totalUp
          ? _self.totalUp
          : totalUp // ignore: cast_nullable_to_non_nullable
              as double,
      totalWeight: null == totalWeight
          ? _self.totalWeight
          : totalWeight // ignore: cast_nullable_to_non_nullable
              as double,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      workoutID: null == workoutID
          ? _self.workoutID
          : workoutID // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  /// Create a copy of MapData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MapCenterCopyWith<$Res> get center {
    return $MapCenterCopyWith<$Res>(_self.center, (value) {
      return _then(_self.copyWith(center: value));
    });
  }

  /// Create a copy of MapData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MapDataDetailsCopyWith<$Res>? get details {
    if (_self.details == null) {
      return null;
    }

    return $MapDataDetailsCopyWith<$Res>(_self.details!, (value) {
      return _then(_self.copyWith(details: value));
    });
  }
}

// dart format on
