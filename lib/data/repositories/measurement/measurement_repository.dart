import 'package:result_dart/result_dart.dart';
import 'package:workout_tracker_app/domain/models/measurement/measurement.dart';

abstract class MeasurementRepository {
  // Returns the [Measurement] for the given [date]
  Future<Result<Measurement>> getMeasurement({required DateTime date});

  // Returns all [Measurement]s optionally filtered by [startDate] and [endDate]
  Future<Result<List<Measurement>>> getMeasurementsBetween({
    DateTime startDate,
    DateTime endDate,
  });

  Future<Result<void>> setSteps({required int steps, DateTime date});

  // Fetches the full [Measurement] list from the server and updates the local cache
  Future<Result<void>> updateMeasurements();
}
