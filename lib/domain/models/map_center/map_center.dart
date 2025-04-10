import 'package:freezed_annotation/freezed_annotation.dart';

part 'map_center.freezed.dart';
part 'map_center.g.dart';

@freezed
abstract class MapCenter with _$MapCenter {
  const factory MapCenter({
    /* Latitude */
    required double lat,

    /* Longitude */
    required double lng,

    /* Timezone */
    required String tz,
  }) = _MapCenter;

  factory MapCenter.fromJson(Map<String, dynamic> json) =>
      _$MapCenterFromJson(json);
}
