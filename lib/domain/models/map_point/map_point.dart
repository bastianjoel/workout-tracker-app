import 'package:freezed_annotation/freezed_annotation.dart';

part 'map_point.freezed.dart';
part 'map_point.g.dart';

@freezed
abstract class MapPoint with _$MapPoint {
  const factory MapPoint({
    /* The distance from the previous point */
    double? distance,

    /* The duration from the previous point */
    int? duration,

    /* The elevation of the point */
    double? elevation,

    /* Extra metrics at this point */
    // AllOfdatabaseMapPointExtraMetrics? extraMetrics,

    /* The latitude of the point */
    double? lat,

    /* The longitude of the point */
    double? lng,

    /* The time the point was recorded */
    String? time,

    /* The total distance of the workout up to this point */
    double? totalDistance,

    /* The total duration of the workout up to this point */
    int? totalDuration,
  }) = _MapPoint;

  factory MapPoint.fromJson(Map<String, dynamic> json) =>
      _$MapPointFromJson(json);
}
