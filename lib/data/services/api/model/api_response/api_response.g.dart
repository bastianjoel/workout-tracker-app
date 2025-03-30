// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiResponseResults<T> _$ApiResponseResultsFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    ApiResponseResults<T>(
      fromJsonT(json['results']),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$ApiResponseResultsToJson<T>(
  ApiResponseResults<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'results': toJsonT(instance.results),
      'runtimeType': instance.$type,
    };

ApiResponseErrors<T> _$ApiResponseErrorsFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    ApiResponseErrors<T>(
      (json['message'] as List<dynamic>).map((e) => e as String).toList(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$ApiResponseErrorsToJson<T>(
  ApiResponseErrors<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'message': instance.message,
      'runtimeType': instance.$type,
    };
