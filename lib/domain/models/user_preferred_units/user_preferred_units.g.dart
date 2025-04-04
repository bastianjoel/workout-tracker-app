// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_preferred_units.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserPreferredUnits _$UserPreferredUnitsFromJson(Map<String, dynamic> json) =>
    _UserPreferredUnits(
      distance: json['distance'] as String,
      elevation: json['elevation'] as String,
      height: json['height'] as String,
      speed: json['speed'] as String,
      weight: json['weight'] as String,
    );

Map<String, dynamic> _$UserPreferredUnitsToJson(_UserPreferredUnits instance) =>
    <String, dynamic>{
      'distance': instance.distance,
      'elevation': instance.elevation,
      'height': instance.height,
      'speed': instance.speed,
      'weight': instance.weight,
    };
