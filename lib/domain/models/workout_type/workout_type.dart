import 'package:flutter/material.dart';

class WorkoutType {
  /// The underlying value of this enum member.
  late String value;

  WorkoutType(this.value);
  WorkoutType._internal(this.value);

  static WorkoutType auto_ = WorkoutType._internal("auto");
  static WorkoutType running_ = WorkoutType._internal("running");
  static WorkoutType cycling_ = WorkoutType._internal("cycling");
  static WorkoutType eCycling_ = WorkoutType._internal("e-cycling");
  static WorkoutType walking_ = WorkoutType._internal("walking");
  static WorkoutType skiing_ = WorkoutType._internal("skiing");
  static WorkoutType snowboarding_ = WorkoutType._internal("snowboarding");
  static WorkoutType swimming_ = WorkoutType._internal("swimming");
  static WorkoutType kayaking_ = WorkoutType._internal("kayaking");
  static WorkoutType golfing_ = WorkoutType._internal("golfing");
  static WorkoutType hiking_ = WorkoutType._internal("hiking");
  static WorkoutType pushUps_ = WorkoutType._internal("push-ups");
  static WorkoutType weightLifting_ = WorkoutType._internal("weight-lifting");

  @override
  bool operator ==(other) {
    if (other is WorkoutType) {
      return value == other.value;
    }
    return false;
  }

  @override
  int get hashCode {
    return value.hashCode;
  }

  IconData get icon {
    switch (value) {
      case "auto":
        return Icons.sports;
      case "running":
        return Icons.directions_run;
      case "cycling":
        return Icons.directions_bike;
      case "e-cycling":
        return Icons.electric_bike;
      case "walking":
        return Icons.directions_walk;
      case "skiing":
        return Icons.downhill_skiing;
      case "snowboarding":
        return Icons.snowboarding;
      case "swimming":
        return Icons.pool;
      case "kayaking":
        return Icons.kayaking;
      case "golfing":
        return Icons.golf_course;
      case "hiking":
        return Icons.hiking;
      case "push-ups":
        return Icons.fitness_center;
      case "weight-lifting":
        return Icons.fitness_center;
    }
    throw('Unknown enum value to decode: $value');
  }

  WorkoutType.fromJson(dynamic data) {
    switch (data) {
          case "auto": value = data; break;
          case "running": value = data; break;
          case "cycling": value = data; break;
          case "e-cycling": value = data; break;
          case "walking": value = data; break;
          case "skiing": value = data; break;
          case "snowboarding": value = data; break;
          case "swimming": value = data; break;
          case "kayaking": value = data; break;
          case "golfing": value = data; break;
          case "hiking": value = data; break;
          case "push-ups": value = data; break;
          case "weight-lifting": value = data; break;
    default: throw('Unknown enum value to decode: $data');
    }
  }

  String toJson() {
    return value;
  }
}
