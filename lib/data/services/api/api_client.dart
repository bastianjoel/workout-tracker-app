import 'dart:convert';
import 'dart:io';

import 'package:result_dart/result_dart.dart';
import 'package:workout_tracker_app/data/services/api/model/api_response/api_response.dart';
import 'package:workout_tracker_app/domain/models/measurement/measurement.dart';

typedef AuthHeaderProvider = String? Function();

class ApiClient {
  ApiClient({
    String? base,
    HttpClient Function()? clientFactory,
  })  : _base = base ?? 'https://wt.birne.dev',
        _clientFactory = clientFactory ?? HttpClient.new;

  final String _base;
  final HttpClient Function() _clientFactory;

  AuthHeaderProvider? _authHeaderProvider;

  set authHeaderProvider(AuthHeaderProvider value) {
    _authHeaderProvider = value;
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
      final request = await client.getUrl(Uri.parse('$_base/api/v1/daily'));
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
      final request = await client.postUrl(Uri.parse('$_base/api/v1/daily'));
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
}
