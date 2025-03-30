// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
ApiResponse<T> _$ApiResponseFromJson<T>(
    Map<String, dynamic> json, T Function(Object?) fromJsonT) {
  switch (json['runtimeType']) {
    case 'results':
      return ApiResponseResults<T>.fromJson(json, fromJsonT);
    case 'errors':
      return ApiResponseErrors<T>.fromJson(json, fromJsonT);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'ApiResponse',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$ApiResponse<T> {
  /// Serializes this ApiResponse to a JSON map.
  Map<String, dynamic> toJson(Object? Function(T) toJsonT);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ApiResponse<T>);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ApiResponse<$T>()';
  }
}

/// @nodoc
class $ApiResponseCopyWith<T, $Res> {
  $ApiResponseCopyWith(ApiResponse<T> _, $Res Function(ApiResponse<T>) __);
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class ApiResponseResults<T> implements ApiResponse<T> {
  const ApiResponseResults(this.results, {final String? $type})
      : $type = $type ?? 'results';
  factory ApiResponseResults.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$ApiResponseResultsFromJson(json, fromJsonT);

  final T results;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of ApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ApiResponseResultsCopyWith<T, ApiResponseResults<T>> get copyWith =>
      _$ApiResponseResultsCopyWithImpl<T, ApiResponseResults<T>>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$ApiResponseResultsToJson<T>(this, toJsonT);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ApiResponseResults<T> &&
            const DeepCollectionEquality().equals(other.results, results));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(results));

  @override
  String toString() {
    return 'ApiResponse<$T>.results(results: $results)';
  }
}

/// @nodoc
abstract mixin class $ApiResponseResultsCopyWith<T, $Res>
    implements $ApiResponseCopyWith<T, $Res> {
  factory $ApiResponseResultsCopyWith(ApiResponseResults<T> value,
          $Res Function(ApiResponseResults<T>) _then) =
      _$ApiResponseResultsCopyWithImpl;
  @useResult
  $Res call({T results});
}

/// @nodoc
class _$ApiResponseResultsCopyWithImpl<T, $Res>
    implements $ApiResponseResultsCopyWith<T, $Res> {
  _$ApiResponseResultsCopyWithImpl(this._self, this._then);

  final ApiResponseResults<T> _self;
  final $Res Function(ApiResponseResults<T>) _then;

  /// Create a copy of ApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? results = freezed,
  }) {
    return _then(ApiResponseResults<T>(
      freezed == results
          ? _self.results
          : results // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class ApiResponseErrors<T> implements ApiResponse<T> {
  const ApiResponseErrors(final List<String> message, {final String? $type})
      : _message = message,
        $type = $type ?? 'errors';
  factory ApiResponseErrors.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$ApiResponseErrorsFromJson(json, fromJsonT);

  final List<String> _message;
  List<String> get message {
    if (_message is EqualUnmodifiableListView) return _message;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_message);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of ApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ApiResponseErrorsCopyWith<T, ApiResponseErrors<T>> get copyWith =>
      _$ApiResponseErrorsCopyWithImpl<T, ApiResponseErrors<T>>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$ApiResponseErrorsToJson<T>(this, toJsonT);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ApiResponseErrors<T> &&
            const DeepCollectionEquality().equals(other._message, _message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_message));

  @override
  String toString() {
    return 'ApiResponse<$T>.errors(message: $message)';
  }
}

/// @nodoc
abstract mixin class $ApiResponseErrorsCopyWith<T, $Res>
    implements $ApiResponseCopyWith<T, $Res> {
  factory $ApiResponseErrorsCopyWith(ApiResponseErrors<T> value,
          $Res Function(ApiResponseErrors<T>) _then) =
      _$ApiResponseErrorsCopyWithImpl;
  @useResult
  $Res call({List<String> message});
}

/// @nodoc
class _$ApiResponseErrorsCopyWithImpl<T, $Res>
    implements $ApiResponseErrorsCopyWith<T, $Res> {
  _$ApiResponseErrorsCopyWithImpl(this._self, this._then);

  final ApiResponseErrors<T> _self;
  final $Res Function(ApiResponseErrors<T>) _then;

  /// Create a copy of ApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
  }) {
    return _then(ApiResponseErrors<T>(
      null == message
          ? _self._message
          : message // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

// dart format on
