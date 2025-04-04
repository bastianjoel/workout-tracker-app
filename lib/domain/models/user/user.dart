import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:workout_tracker_app/domain/models/profile/profile.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
abstract class User with _$User {
  const factory User({
    int? id,
    String? createdAt,
    String? updatedAt,

    /* Whether the user is active */
    @Default(false) bool active,

    /* Whether the user is an admin */
    @Default(false) bool admin,

    /* Which version of the app the user has last seen and acknowledged */
    @Default("") String lastVersion,

    /* The user's name */
    @Default("") String name,

    /* The user's profile settings */
    Profile? profile,

    /* The user's username */
    required String username,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
