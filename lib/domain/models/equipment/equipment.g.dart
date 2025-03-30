// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'equipment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Equipment _$EquipmentFromJson(Map<String, dynamic> json) => _Equipment(
      id: (json['id'] as num).toInt(),
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
      active: json['active'] as String,
      description: json['description'] as String,
      name: json['name'] as String,
      userID: (json['userID'] as num).toInt(),
    );

Map<String, dynamic> _$EquipmentToJson(_Equipment instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'active': instance.active,
      'description': instance.description,
      'name': instance.name,
      'userID': instance.userID,
    };
