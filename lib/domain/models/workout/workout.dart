import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:workout_tracker_app/domain/models/equipment/equipment.dart';
import 'package:workout_tracker_app/domain/models/map_data/map_data.dart';

part 'workout.freezed.dart';
part 'workout.g.dart';

@freezed
abstract class Workout with _$Workout {
  const factory Workout({
    int? id,
    String? createdAt,
    String? updatedAt,

    /* The ID of the user who owns the workout */
    required int userID,

    /* The map data associated with the workout */
    MapData? data,

    /* The timestamp the workout was recorded */
    required DateTime date,

    /* Whether the workout has been modified and the details should be re-rendered */
    bool? dirty,

    /* Which equipment is used for this workout */
    @Default([]) List<Equipment> equipment,

    /* The file data associated with the workout */
    // AllOfdatabaseWorkoutGpx? gpx,

    /* The name of the workout */
    required String name,

    /* The notes associated with the workout, in markdown */
    @Default('')
    String notes,

    /* UUID to publicly share a workout - this UUID can be rotated */
    String? publicUUID,

    /* Which route segments match */
    // List<DatabaseRouteSegmentMatch> routeSegmentMatches,

    /* The type of the workout */
    required String type,

    /* The user who owns the workout */
    // AllOfdatabaseWorkoutUser user,
  }) = _Workout;

  factory Workout.fromJson(Map<String, dynamic> json) =>
      _$WorkoutFromJson(json);
}
