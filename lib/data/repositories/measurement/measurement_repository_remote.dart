import 'package:result_dart/result_dart.dart';

import 'package:workout_tracker_app/data/repositories/measurement/measurement_repository.dart';
import 'package:workout_tracker_app/data/services/api/api_client.dart';
import 'package:workout_tracker_app/domain/models/measurement/measurement.dart';

class MeasurementRepositoryRemote implements MeasurementRepository {
  MeasurementRepositoryRemote({
    required ApiClient apiClient,
  }) : _apiClient = apiClient;

  final ApiClient _apiClient;

  List<Measurement>? _cachedMeasurements;

  @override
  Future<Result<Measurement>> getMeasurement({required DateTime date}) async {
    if (_cachedMeasurements == null) {
      final result = await updateMeasurements();
      if (result.isError()) {
        return Failure(Exception('Failed to fetch measurements'));
      }
    }

    final measurement = _cachedMeasurements!.firstWhere(
      (element) =>
          element.date.substring(0, 10) ==
          date.toIso8601String().substring(0, 10),
      orElse: () => Measurement(
        date: date.toIso8601String().substring(0, 10),
        weight: null,
        height: null,
        steps: null,
      ),
    );

    return measurement.toSuccess();
  }

  @override
  Future<Result<List<Measurement>>> getMeasurementsBetween({
    DateTime? startDate,
    DateTime? endDate,
  }) async {
    return Failure(Exception('Not implemented'));
  }

  @override
  Future<Result<void>> updateMeasurements() async {
    final result = await _apiClient.getDailyMeasurements();
    try {
      final response = result.getOrThrow();
      _cachedMeasurements = response;
      return Success(0);
    } on Exception catch (e) {
      return Failure(e);
    }
  }

  @override
  Future<Result<void>> setSteps({required int steps, DateTime? date}) async {
    date ??= DateTime.now();

    String dateStr = date.toIso8601String().substring(0, 10);
    await _apiClient.setSteps(steps: steps, date: dateStr);
    return Success(0);
  }
}
