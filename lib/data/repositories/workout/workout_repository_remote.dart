import 'package:result_dart/result_dart.dart';
import 'package:workout_tracker_app/data/repositories/workout/workout_repository.dart';

import 'package:workout_tracker_app/data/services/api/api_client.dart';
import 'package:workout_tracker_app/domain/models/workout/workout.dart';

class WorkoutRepositoryRemote implements WorkoutRepository {
  WorkoutRepositoryRemote({
    required ApiClient apiClient,
  }) : _apiClient = apiClient;

  final ApiClient _apiClient;

  List<Workout>? _cachedWorkouts;

  @override
  Future<Result<List<Workout>>> getAll({
    DateTime? startDate,
    DateTime? endDate,
  }) async {
    if (_cachedWorkouts == null) {
      final result = await updateWorkouts();
      if (result.isError()) {
        return Failure(Exception('Failed to fetch measurements'));
      }
    }

    return Success(_cachedWorkouts!);
  }

  @override
  Future<Result<Workout>> getOne(int id) async {
    final result = await _apiClient.getWorkout(id);
    try {
      final response = result.getOrThrow();
      return Success(response);
    } on Exception catch (e) {
      return Failure(e);
    }
  }

  @override
  Future<Result<void>> updateWorkouts() async {
    final result = await _apiClient.getWorkouts();
    try {
      final response = result.getOrThrow();
      _cachedWorkouts = response;
      return Success(0);
    } on Exception catch (e) {
      return Failure(e);
    }
  }
}
