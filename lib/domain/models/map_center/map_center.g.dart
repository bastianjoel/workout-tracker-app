// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'map_center.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MapCenter _$MapCenterFromJson(Map<String, dynamic> json) => _MapCenter(
      lat: (json['lat'] as num).toDouble(),
      lng: (json['lng'] as num).toDouble(),
      tz: json['tz'] as String,
    );

Map<String, dynamic> _$MapCenterToJson(_MapCenter instance) =>
    <String, dynamic>{
      'lat': instance.lat,
      'lng': instance.lng,
      'tz': instance.tz,
    };
