// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workout.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Workout _$WorkoutFromJson(Map<String, dynamic> json) => _Workout(
      id: (json['id'] as num?)?.toInt(),
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      userID: (json['userID'] as num).toInt(),
      data: json['data'] == null
          ? null
          : MapData.fromJson(json['data'] as Map<String, dynamic>),
      date: DateTime.parse(json['date'] as String),
      dirty: json['dirty'] as bool?,
      equipment: (json['equipment'] as List<dynamic>?)
              ?.map((e) => Equipment.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      name: json['name'] as String,
      notes: json['notes'] as String? ?? '',
      publicUUID: json['publicUUID'] as String?,
      type: WorkoutType.fromJson(json['type']),
    );

Map<String, dynamic> _$WorkoutToJson(_Workout instance) => <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'userID': instance.userID,
      'data': instance.data,
      'date': instance.date.toIso8601String(),
      'dirty': instance.dirty,
      'equipment': instance.equipment,
      'name': instance.name,
      'notes': instance.notes,
      'publicUUID': instance.publicUUID,
      'type': instance.type,
    };
