import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:workout_tracker_app/domain/models/map_center/map_center.dart';
import 'package:workout_tracker_app/domain/models/map_data_details/map_data_details.dart';

part 'map_data.freezed.dart';
part 'map_data.g.dart';

@freezed
abstract class MapData with _$MapData {
  const factory MapData({
    int? id,
    String? createdAt,
    String? updatedAt,

    /* The address of the workout */
    // AllOfdatabaseMapDataAddress? address,

    /* The generic location of the workout */
    required String addressString,

    /* The average speed of the workout */
    @Default(0) double averageSpeed,

    /* The average speed of the workout without pausing */
    @Default(0) double averageSpeedNoPause,

    /* The center of the workout (in coordinates) */
    required MapCenter center,

    /* The tool that created this workout */
    required String creator,

    /* The details of the workout */
    MapDataDetails? details,

    /* Extra metrcis available */
    @Default([]) List<String> extraMetrics,

    /* The maximum elevation of the workout */
    @Default(0) double maxElevation,

    /* The maximum speed of the workout */
    @Default(0) double maxSpeed,

    /* The minimum elevation of the workout */
    @Default(0) double minElevation,

    /* The name of the workout */
    @Default('') String name,

    /* The total pause duration of the workout */
    @Default(0) int pauseDuration,

    /* The start time of the workout */
    required DateTime start,

    /* The stop time of the workout */
    required DateTime stop,

    /* The total distance of the workout */
    @Default(0) double totalDistance,

    /* The total distance down of the workout */
    @Default(0) double totalDown,

    /* The total duration of the workout */
    @Default(0) int totalDuration,

    /* The number of repetitions of the workout */
    @Default(0) int totalRepetitions,

    /* The total distance up of the workout */
    @Default(0) double totalUp,

    /* The weight of the workout */
    @Default(0) double totalWeight,

    /* The type of the workout */
    required String type,

    /* The workout this data belongs to */
    required int workoutID,
  }) = _MapData;

  factory MapData.fromJson(Map<String, dynamic> json) =>
      _$MapDataFromJson(json);
}
