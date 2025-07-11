import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

import 'package:result_dart/result_dart.dart';
import 'package:workout_tracker_app/data/services/api/model/api_response/api_response.dart';
import 'package:workout_tracker_app/domain/models/measurement/measurement.dart';
import 'package:workout_tracker_app/domain/models/user/user.dart';
import 'package:workout_tracker_app/domain/models/workout/workout.dart';

typedef AuthHeaderProvider = String? Function();
typedef ApiUrlProvider = String? Function();

class ApiClient {
  ApiClient({
    String? base,
  });

  AuthHeaderProvider? _authHeaderProvider;
  ApiUrlProvider? _apiUrlProvider;

  set apiUrlProvider(ApiUrlProvider value) {
    _apiUrlProvider = value;
  }

  set authHeaderProvider(AuthHeaderProvider value) {
    _authHeaderProvider = value;
  }

  Uri _url(String path) {
    final base = _apiUrlProvider?.call();
    if (base == null) {
      throw Exception('Base URL is not set');
    }

    return Uri.parse('$base$path');
  }

  Future<Map<String, String>> _headers() async {
    final headers = <String, String>{};
    final authHeader = _authHeaderProvider?.call();
    if (authHeader != null) {
      headers[HttpHeaders.authorizationHeader] = authHeader;
    }

    return headers;
  }

  Future<Result<List<Measurement>>> getDailyMeasurements() async {
    try {
      final response = await http.get(_url('/api/v1/daily'), headers: await _headers());
      if (response.statusCode == 200) {
        final apiResponse =
            ApiResponse.fromJson<List<Measurement>, List<dynamic>>(
                jsonDecode(utf8.decode(response.bodyBytes)),
                (json) => json.map((e) => Measurement.fromJson(e)).toList());
        try {
          final data = apiResponse.getOrThrow();
          return Success(data);
        } on Exception catch (e) {
          return Failure(e);
        }
      } else {
        return Failure(HttpException("Invalid response"));
      }
    } on Exception catch (e) {
      return Failure(e);
    }
  }

  Future<Result<void>> setSteps(
      {required int steps, required String date}) async {
    try {
      final response = await http.post(_url('/api/v1/daily'), headers: {
        HttpHeaders.contentTypeHeader: 'application/json',
        ...await _headers(),
      }, body: jsonEncode({'steps': steps, 'date': date}));
      if (response.statusCode == 200) {
        return Success(0);
      } else {
        return Failure(HttpException("Invalid response"));
      }
    } on Exception catch (e) {
      return Failure(e);
    }
  }

  Future<Result<List<Workout>>> getWorkouts() async {
    try {
      final response = await http.get(_url('/api/v1/workouts'), headers: await _headers());
      if (response.statusCode == 200) {
        final apiResponse = ApiResponse.fromJson<List<Workout>, List<dynamic>>(
            jsonDecode(utf8.decode(response.bodyBytes)),
            (json) => json.map((e) => Workout.fromJson(e)).toList());
        try {
          final data = apiResponse.getOrThrow();
          return Success(data);
        } on Exception catch (e) {
          return Failure(e);
        }
      } else {
        return Failure(HttpException("Invalid response"));
      }
    } on Exception catch (e) {
      return Failure(e);
    }
  }

  Future<Result<Workout>> getWorkout(int id) async {
    try {
      final response = await http.get(_url('/api/v1/workouts/$id'), headers: await _headers());
      if (response.statusCode == 200) {
        final apiResponse = ApiResponse.fromJson<Workout, dynamic>(
            jsonDecode(utf8.decode(response.bodyBytes)),
            (json) => Workout.fromJson(json));
        try {
          final data = apiResponse.getOrThrow();
          return Success(data);
        } on Exception catch (e) {
          return Failure(e);
        }
      } else {
        return Failure(HttpException("Invalid response"));
      }
    } on Exception catch (e) {
      return Failure(e);
    }
  }

  Future<Result<User>> whoAmI() async {
    try {
      final response = await http.get(_url('/api/v1/whoami'), headers: await _headers());
      if (response.statusCode == 200) {
        final apiResponse = ApiResponse.fromJson<User, dynamic>(
            jsonDecode(utf8.decode(response.bodyBytes)),
            (json) => User.fromJson(json));
        try {
          final data = apiResponse.getOrThrow();
          return Success(data);
        } on Exception catch (e) {
          return Failure(e);
        }
      } else if (response.statusCode == 401 || response.statusCode == 403) {
        return Failure(HttpException("Unauthorized"));
      } else {
        return Failure(HttpException("Invalid response"));
      }
    } on Exception catch (e) {
      return Failure(e);
    }
  }
}
