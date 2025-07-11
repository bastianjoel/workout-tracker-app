// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'workout.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Workout {
  @JsonKey(name: 'ID')
  int? get id;
  @JsonKey(name: 'CreatedAt')
  String? get createdAt;
  @JsonKey(name: 'UpdatedAt')
  String? get updatedAt; /* The ID of the user who owns the workout */
  int get userID; /* The map data associated with the workout */
  MapData? get data; /* The timestamp the workout was recorded */
  DateTime
      get date; /* Whether the workout has been modified and the details should be re-rendered */
  bool? get dirty; /* Which equipment is used for this workout */
  List<Equipment> get equipment; /* The file data associated with the workout */
// AllOfdatabaseWorkoutGpx? gpx,
/* The name of the workout */
  String get name; /* The notes associated with the workout, in markdown */
  String
      get notes; /* UUID to publicly share a workout - this UUID can be rotated */
  String? get publicUUID; /* Which route segments match */
// List<DatabaseRouteSegmentMatch> routeSegmentMatches,
/* The type of the workout */
  WorkoutType get type;

  /// Create a copy of Workout
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $WorkoutCopyWith<Workout> get copyWith =>
      _$WorkoutCopyWithImpl<Workout>(this as Workout, _$identity);

  /// Serializes this Workout to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Workout &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.userID, userID) || other.userID == userID) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.dirty, dirty) || other.dirty == dirty) &&
            const DeepCollectionEquality().equals(other.equipment, equipment) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.publicUUID, publicUUID) ||
                other.publicUUID == publicUUID) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      createdAt,
      updatedAt,
      userID,
      data,
      date,
      dirty,
      const DeepCollectionEquality().hash(equipment),
      name,
      notes,
      publicUUID,
      type);

  @override
  String toString() {
    return 'Workout(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, userID: $userID, data: $data, date: $date, dirty: $dirty, equipment: $equipment, name: $name, notes: $notes, publicUUID: $publicUUID, type: $type)';
  }
}

/// @nodoc
abstract mixin class $WorkoutCopyWith<$Res> {
  factory $WorkoutCopyWith(Workout value, $Res Function(Workout) _then) =
      _$WorkoutCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'ID') int? id,
      @JsonKey(name: 'CreatedAt') String? createdAt,
      @JsonKey(name: 'UpdatedAt') String? updatedAt,
      int userID,
      MapData? data,
      DateTime date,
      bool? dirty,
      List<Equipment> equipment,
      String name,
      String notes,
      String? publicUUID,
      WorkoutType type});

  $MapDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$WorkoutCopyWithImpl<$Res> implements $WorkoutCopyWith<$Res> {
  _$WorkoutCopyWithImpl(this._self, this._then);

  final Workout _self;
  final $Res Function(Workout) _then;

  /// Create a copy of Workout
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? userID = null,
    Object? data = freezed,
    Object? date = null,
    Object? dirty = freezed,
    Object? equipment = null,
    Object? name = null,
    Object? notes = null,
    Object? publicUUID = freezed,
    Object? type = null,
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
      userID: null == userID
          ? _self.userID
          : userID // ignore: cast_nullable_to_non_nullable
              as int,
      data: freezed == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as MapData?,
      date: null == date
          ? _self.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dirty: freezed == dirty
          ? _self.dirty
          : dirty // ignore: cast_nullable_to_non_nullable
              as bool?,
      equipment: null == equipment
          ? _self.equipment
          : equipment // ignore: cast_nullable_to_non_nullable
              as List<Equipment>,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      notes: null == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String,
      publicUUID: freezed == publicUUID
          ? _self.publicUUID
          : publicUUID // ignore: cast_nullable_to_non_nullable
              as String?,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as WorkoutType,
    ));
  }

  /// Create a copy of Workout
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MapDataCopyWith<$Res>? get data {
    if (_self.data == null) {
      return null;
    }

    return $MapDataCopyWith<$Res>(_self.data!, (value) {
      return _then(_self.copyWith(data: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _Workout implements Workout {
  const _Workout(
      {@JsonKey(name: 'ID') this.id,
      @JsonKey(name: 'CreatedAt') this.createdAt,
      @JsonKey(name: 'UpdatedAt') this.updatedAt,
      required this.userID,
      this.data,
      required this.date,
      this.dirty,
      final List<Equipment> equipment = const [],
      required this.name,
      this.notes = '',
      this.publicUUID,
      required this.type})
      : _equipment = equipment;
  factory _Workout.fromJson(Map<String, dynamic> json) =>
      _$WorkoutFromJson(json);

  @override
  @JsonKey(name: 'ID')
  final int? id;
  @override
  @JsonKey(name: 'CreatedAt')
  final String? createdAt;
  @override
  @JsonKey(name: 'UpdatedAt')
  final String? updatedAt;
/* The ID of the user who owns the workout */
  @override
  final int userID;
/* The map data associated with the workout */
  @override
  final MapData? data;
/* The timestamp the workout was recorded */
  @override
  final DateTime date;
/* Whether the workout has been modified and the details should be re-rendered */
  @override
  final bool? dirty;
/* Which equipment is used for this workout */
  final List<Equipment> _equipment;
/* Which equipment is used for this workout */
  @override
  @JsonKey()
  List<Equipment> get equipment {
    if (_equipment is EqualUnmodifiableListView) return _equipment;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_equipment);
  }

/* The file data associated with the workout */
// AllOfdatabaseWorkoutGpx? gpx,
/* The name of the workout */
  @override
  final String name;
/* The notes associated with the workout, in markdown */
  @override
  @JsonKey()
  final String notes;
/* UUID to publicly share a workout - this UUID can be rotated */
  @override
  final String? publicUUID;
/* Which route segments match */
// List<DatabaseRouteSegmentMatch> routeSegmentMatches,
/* The type of the workout */
  @override
  final WorkoutType type;

  /// Create a copy of Workout
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$WorkoutCopyWith<_Workout> get copyWith =>
      __$WorkoutCopyWithImpl<_Workout>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$WorkoutToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Workout &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.userID, userID) || other.userID == userID) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.dirty, dirty) || other.dirty == dirty) &&
            const DeepCollectionEquality()
                .equals(other._equipment, _equipment) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.publicUUID, publicUUID) ||
                other.publicUUID == publicUUID) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      createdAt,
      updatedAt,
      userID,
      data,
      date,
      dirty,
      const DeepCollectionEquality().hash(_equipment),
      name,
      notes,
      publicUUID,
      type);

  @override
  String toString() {
    return 'Workout(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, userID: $userID, data: $data, date: $date, dirty: $dirty, equipment: $equipment, name: $name, notes: $notes, publicUUID: $publicUUID, type: $type)';
  }
}

/// @nodoc
abstract mixin class _$WorkoutCopyWith<$Res> implements $WorkoutCopyWith<$Res> {
  factory _$WorkoutCopyWith(_Workout value, $Res Function(_Workout) _then) =
      __$WorkoutCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'ID') int? id,
      @JsonKey(name: 'CreatedAt') String? createdAt,
      @JsonKey(name: 'UpdatedAt') String? updatedAt,
      int userID,
      MapData? data,
      DateTime date,
      bool? dirty,
      List<Equipment> equipment,
      String name,
      String notes,
      String? publicUUID,
      WorkoutType type});

  @override
  $MapDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$WorkoutCopyWithImpl<$Res> implements _$WorkoutCopyWith<$Res> {
  __$WorkoutCopyWithImpl(this._self, this._then);

  final _Workout _self;
  final $Res Function(_Workout) _then;

  /// Create a copy of Workout
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? userID = null,
    Object? data = freezed,
    Object? date = null,
    Object? dirty = freezed,
    Object? equipment = null,
    Object? name = null,
    Object? notes = null,
    Object? publicUUID = freezed,
    Object? type = null,
  }) {
    return _then(_Workout(
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
      userID: null == userID
          ? _self.userID
          : userID // ignore: cast_nullable_to_non_nullable
              as int,
      data: freezed == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as MapData?,
      date: null == date
          ? _self.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dirty: freezed == dirty
          ? _self.dirty
          : dirty // ignore: cast_nullable_to_non_nullable
              as bool?,
      equipment: null == equipment
          ? _self._equipment
          : equipment // ignore: cast_nullable_to_non_nullable
              as List<Equipment>,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      notes: null == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String,
      publicUUID: freezed == publicUUID
          ? _self.publicUUID
          : publicUUID // ignore: cast_nullable_to_non_nullable
              as String?,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as WorkoutType,
    ));
  }

  /// Create a copy of Workout
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MapDataCopyWith<$Res>? get data {
    if (_self.data == null) {
      return null;
    }

    return $MapDataCopyWith<$Res>(_self.data!, (value) {
      return _then(_self.copyWith(data: value));
    });
  }
}

// dart format on
