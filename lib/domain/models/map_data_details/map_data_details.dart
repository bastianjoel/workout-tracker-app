import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:workout_tracker_app/domain/models/map_point/map_point.dart';

part 'map_data_details.freezed.dart';
part 'map_data_details.g.dart';

@freezed
abstract class MapDataDetails with _$MapDataDetails {
  const factory MapDataDetails({
    int? id,
    String? createdAt,
    String? updatedAt,

    /* The ID of the map data these details belong to */
    int? mapDataID,

    /* The GPS points of the workout */
    @Default([]) List<MapPoint> points,
  }) = _MapDataDetails;

  factory MapDataDetails.fromJson(Map<String, dynamic> json) =>
      _$MapDataDetailsFromJson(json);
}
