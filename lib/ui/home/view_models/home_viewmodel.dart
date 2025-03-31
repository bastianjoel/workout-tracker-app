import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter_command/flutter_command.dart';
import 'package:pedometer_2/pedometer_2.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:result_dart/result_dart.dart';
import 'package:workout_tracker_app/data/repositories/auth/auth_repository.dart';
import 'package:workout_tracker_app/data/repositories/measurement/measurement_repository.dart';
import 'package:workout_tracker_app/domain/models/measurement/measurement.dart';

class HomeViewModel extends ChangeNotifier {
  HomeViewModel({
    required AuthRepository authRepository,
    required MeasurementRepository measurementRepository,
  })  : _authRepository = authRepository,
        _measurementRepository = measurementRepository {
    getTodayMeasurement = Command.createAsyncNoParam<Result<Measurement>?>(
      _getTodayMeasurement,
      initialValue: null,
    )..execute();
  }

  final AuthRepository _authRepository;
  final MeasurementRepository _measurementRepository;

  late Command<void, Result<Measurement>?> getTodayMeasurement;

  String height = 'x';
  String todaySteps = 'x';

  Future<Result<Measurement>> _getTodayMeasurement() async {
    final result =
        await _measurementRepository.getMeasurement(date: DateTime.now());
    final measurement = result.getOrNull();
    if (measurement != null) {
      height = measurement.height.toString();
    } else {
      height = 'No measurement found';
    }
    notifyListeners();

    DateTime startOfDay = DateTime.now().subtract(Duration(
        hours: DateTime.now().hour,
        minutes: DateTime.now().minute,
        seconds: DateTime.now().second));
    DateTime endOfDay = startOfDay.add(Duration(days: 1));

    int steps = await Pedometer().getStepCount(from: startOfDay, to: endOfDay);
    todaySteps = steps.toString();
    notifyListeners();
    if (steps != measurement?.steps) {
      await _measurementRepository.setSteps(steps: steps);
    }

    return result;
  }

  Future<void> requestPermissions() async {
    if (Platform.isAndroid &&
        !(await Permission.activityRecognition.isGranted)) {
      await Permission.activityRecognition.request();
    } else if (Platform.isIOS && !(await Permission.sensors.isGranted)) {
      await Permission.sensors.request();
    }
  }

  Future<void> logout() async {
    await _authRepository.logout();
  }
}
