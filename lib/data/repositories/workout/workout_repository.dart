import 'package:result_dart/result_dart.dart';
import 'package:workout_tracker_app/domain/models/workout/workout.dart';

abstract class WorkoutRepository {
  // Returns all [Workout]s
  Future<Result<List<Workout>>> getAll();

  // Fetches the full [Workout] list from the server and updates the local cache
  Future<Result<void>> updateWorkouts();
}
