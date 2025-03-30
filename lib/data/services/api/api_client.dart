import 'dart:convert';
import 'dart:io';

import 'package:result_dart/result_dart.dart';
import 'package:workout_tracker_app/data/services/api/model/api_response/api_response.dart';
import 'package:workout_tracker_app/domain/models/measurement/measurement.dart';

typedef AuthHeaderProvider = String? Function();

class ApiClient {
  ApiClient({
    String? host,
    int? port,
    HttpClient Function()? clientFactory,
  }) : _host = host ?? 'wt.birne.dev',
       _port = port ?? 443,
       _clientFactory = clientFactory ?? HttpClient.new;

  final String _host;
  final int _port;
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

  Future<Result<ApiResponse<List<Measurement>>>> getDailyMeasurements() async {
    final client = _clientFactory();
    try {
      final request = await client.get(_host, _port, '/api/v1/daily');
      await _authHeader(request.headers);
      final response = await request.close();
      if (response.statusCode == 200) {
        final stringData = await response.transform(utf8.decoder).join();
        final json = jsonDecode(stringData) as List<dynamic>;
        final measurements = json.map((e) => Measurement.fromJson(e)).toList();
        return Success(ApiResponse.results(measurements));
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
