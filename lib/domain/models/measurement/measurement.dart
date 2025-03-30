import 'package:freezed_annotation/freezed_annotation.dart';

part 'measurement.freezed.dart';
part 'measurement.g.dart';

@freezed
abstract class Measurement with _$Measurement {
  const factory Measurement({
    required int id,
    required String createdAt,
    required String updatedAt,

    /* The number of steps taken */
    required double steps,

    /* The ID of the user who owns the workout */
    required int userID,

    /* The weight of the user, in kilograms */
    required double weight,

    /* The date of the measurement */
    required String date,

    /* The height of the user, in centimeter */
    required double height,
  }) = _Measurement;


  factory Measurement.fromJson(Map<String, dynamic> json) => _$MeasurementFromJson(json);
}
