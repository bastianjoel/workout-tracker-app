import 'package:freezed_annotation/freezed_annotation.dart';

part 'map_point.freezed.dart';
part 'map_point.g.dart';

@freezed
abstract class MapPoint with _$MapPoint {
  const MapPoint._();
  const factory MapPoint({
    /* The distance from the previous point */
    required double distance,

    /* The duration from the previous point */
    required int duration,

    /* The elevation of the point */
    required double elevation,

    /* Extra metrics at this point */
    @Default({}) Map<String, dynamic> extraMetrics,

    /* The latitude of the point */
    required double lat,

    /* The longitude of the point */
    required double lng,

    /* The time the point was recorded */
    required DateTime time,

    /* The total distance of the workout up to this point */
    required double totalDistance,

    /* The total duration of the workout up to this point */
    required int totalDuration,
  }) = _MapPoint;

  // Speed in km/h
  double get speedInKmH => distance / (duration / 1000000000) * 3.6;

  factory MapPoint.fromJson(Map<String, dynamic> json) =>
      _$MapPointFromJson(json);
}
