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
    String? addressString,

    /* The average speed of the workout */
    double? averageSpeed,

    /* The average speed of the workout without pausing */
    double? averageSpeedNoPause,

    /* The center of the workout (in coordinates) */
    MapCenter? center,

    /* The tool that created this workout */
    String? creator,

    /* The details of the workout */
    MapDataDetails? details,

    /* Extra metrcis available */
    List<String>? extraMetrics,

    /* The maximum elevation of the workout */
    double? maxElevation,

    /* The maximum speed of the workout */
    double? maxSpeed,

    /* The minimum elevation of the workout */
    double? minElevation,

    /* The name of the workout */
    String? name,

    /* The total pause duration of the workout */
    int? pauseDuration,

    /* The start time of the workout */
    String? start,

    /* The stop time of the workout */
    String? stop,

    /* The total distance of the workout */
    double? totalDistance,

    /* The total distance down of the workout */
    double? totalDown,

    /* The total duration of the workout */
    int? totalDuration,

    /* The number of repetitions of the workout */
    int? totalRepetitions,

    /* The total distance up of the workout */
    double? totalUp,

    /* The weight of the workout */
    double? totalWeight,

    /* The type of the workout */
    String? type,

    /* The workout this data belongs to */
    int? workoutID,
  }) = _MapData;

  factory MapData.fromJson(Map<String, dynamic> json) =>
      _$MapDataFromJson(json);
}
