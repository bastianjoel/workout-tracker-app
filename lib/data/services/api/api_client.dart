import 'dart:convert';
import 'dart:io';

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
    HttpClient Function()? clientFactory,
  }) : _clientFactory = clientFactory ?? HttpClient.new;

  final HttpClient Function() _clientFactory;

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

  Future<void> _authHeader(HttpHeaders headers) async {
    final authHeader = _authHeaderProvider?.call();
    if (authHeader != null) {
      headers.add(HttpHeaders.authorizationHeader, authHeader);
    }
  }

  Future<Result<List<Measurement>>> getDailyMeasurements() async {
    final client = _clientFactory();
    try {
      final request = await client.getUrl(_url('/api/v1/daily'));
      await _authHeader(request.headers);
      final response = await request.close();
      if (response.statusCode == 200) {
        final stringData = await response.transform(utf8.decoder).join();
        final apiResponse =
            ApiResponse.fromJson<List<Measurement>, List<dynamic>>(
                jsonDecode(stringData),
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
    } finally {
      client.close();
    }
  }

  Future<Result<void>> setSteps(
      {required int steps, required String date}) async {
    final client = _clientFactory();
    try {
      final request = await client.postUrl(_url('/api/v1/daily'));
      await _authHeader(request.headers);
      request.headers.contentType = ContentType.json;
      request.write(jsonEncode({'steps': steps, 'date': date}));
      final response = await request.close();
      if (response.statusCode == 200) {
        return Success(0);
      } else {
        return Failure(HttpException("Invalid response"));
      }
    } on Exception catch (e) {
      return Failure(e);
    } finally {
      client.close();
    }
  }

  Future<Result<List<Workout>>> getWorkouts() async {
    final client = _clientFactory();
    try {
      final request = await client.getUrl(_url('/api/v1/workouts'));
      await _authHeader(request.headers);
      final response = await request.close();
      if (response.statusCode == 200) {
        final stringData = await response.transform(utf8.decoder).join();
        final apiResponse = ApiResponse.fromJson<List<Workout>, List<dynamic>>(
            jsonDecode(stringData),
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
    } finally {
      client.close();
    }
  }

  Future<Result<Workout>> getWorkout(int id) async {
    final client = _clientFactory();
    try {
      final request = await client.getUrl(_url('/api/v1/workouts/$id'));
      await _authHeader(request.headers);
      final response = await request.close();
      if (response.statusCode == 200) {
        final stringData = await response.transform(utf8.decoder).join();
        final apiResponse = ApiResponse.fromJson<Workout, dynamic>(
            jsonDecode(stringData), (json) => Workout.fromJson(json));
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
    } finally {
      client.close();
    }
  }

  Future<Result<User>> whoAmI() async {
    final client = _clientFactory();
    try {
      final request = await client.getUrl(_url('/api/v1/whoami'));
      await _authHeader(request.headers);
      final response = await request.close();
      if (response.statusCode == 200) {
        final stringData = await response.transform(utf8.decoder).join();
        final apiResponse = ApiResponse.fromJson<User, dynamic>(
        jsonDecode(stringData), (json) => User.fromJson(json));
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
    } finally {
      client.close();
    }
  }
}
