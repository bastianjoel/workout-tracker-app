import 'package:freezed_annotation/freezed_annotation.dart';

part 'equipment.freezed.dart';
part 'equipment.g.dart';

@freezed
abstract class Equipment with _$Equipment {
  const factory Equipment({
    int? id,
    String? createdAt,
    String? updatedAt,

    /* Whether this equipment is active */
    required bool active,

    /* Which workout types to add this equipment by default */
    // required List<DatabaseWorkoutType> defaultFor,

    /* More information about the equipment */
    @Default('') String description,

    /* The name of the gear */
    required String name,

    // required DatabaseUser user,
    required int userID,
  }) = _Equipment;

  factory Equipment.fromJson(Map<String, dynamic> json) =>
      _$EquipmentFromJson(json);
}
