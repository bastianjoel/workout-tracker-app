// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'map_point.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MapPoint _$MapPointFromJson(Map<String, dynamic> json) => _MapPoint(
      distance: (json['distance'] as num?)?.toDouble(),
      duration: (json['duration'] as num?)?.toInt(),
      elevation: (json['elevation'] as num?)?.toDouble(),
      lat: (json['lat'] as num?)?.toDouble(),
      lng: (json['lng'] as num?)?.toDouble(),
      time: json['time'] as String?,
      totalDistance: (json['totalDistance'] as num?)?.toDouble(),
      totalDuration: (json['totalDuration'] as num?)?.toInt(),
    );

Map<String, dynamic> _$MapPointToJson(_MapPoint instance) => <String, dynamic>{
      'distance': instance.distance,
      'duration': instance.duration,
      'elevation': instance.elevation,
      'lat': instance.lat,
      'lng': instance.lng,
      'time': instance.time,
      'totalDistance': instance.totalDistance,
      'totalDuration': instance.totalDuration,
    };
