// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'map_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MapData _$MapDataFromJson(Map<String, dynamic> json) => _MapData(
      id: (json['id'] as num?)?.toInt(),
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      addressString: json['addressString'] as String?,
      averageSpeed: (json['averageSpeed'] as num?)?.toDouble(),
      averageSpeedNoPause: (json['averageSpeedNoPause'] as num?)?.toDouble(),
      center: json['center'] == null
          ? null
          : MapCenter.fromJson(json['center'] as Map<String, dynamic>),
      creator: json['creator'] as String?,
      details: json['details'] == null
          ? null
          : MapDataDetails.fromJson(json['details'] as Map<String, dynamic>),
      extraMetrics: (json['extraMetrics'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      maxElevation: (json['maxElevation'] as num?)?.toDouble(),
      maxSpeed: (json['maxSpeed'] as num?)?.toDouble(),
      minElevation: (json['minElevation'] as num?)?.toDouble(),
      name: json['name'] as String?,
      pauseDuration: (json['pauseDuration'] as num?)?.toInt(),
      start: json['start'] as String?,
      stop: json['stop'] as String?,
      totalDistance: (json['totalDistance'] as num?)?.toDouble(),
      totalDown: (json['totalDown'] as num?)?.toDouble(),
      totalDuration: (json['totalDuration'] as num?)?.toInt(),
      totalRepetitions: (json['totalRepetitions'] as num?)?.toInt(),
      totalUp: (json['totalUp'] as num?)?.toDouble(),
      totalWeight: (json['totalWeight'] as num?)?.toDouble(),
      type: json['type'] as String?,
      workoutID: (json['workoutID'] as num?)?.toInt(),
    );

Map<String, dynamic> _$MapDataToJson(_MapData instance) => <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'addressString': instance.addressString,
      'averageSpeed': instance.averageSpeed,
      'averageSpeedNoPause': instance.averageSpeedNoPause,
      'center': instance.center,
      'creator': instance.creator,
      'details': instance.details,
      'extraMetrics': instance.extraMetrics,
      'maxElevation': instance.maxElevation,
      'maxSpeed': instance.maxSpeed,
      'minElevation': instance.minElevation,
      'name': instance.name,
      'pauseDuration': instance.pauseDuration,
      'start': instance.start,
      'stop': instance.stop,
      'totalDistance': instance.totalDistance,
      'totalDown': instance.totalDown,
      'totalDuration': instance.totalDuration,
      'totalRepetitions': instance.totalRepetitions,
      'totalUp': instance.totalUp,
      'totalWeight': instance.totalWeight,
      'type': instance.type,
      'workoutID': instance.workoutID,
    };
