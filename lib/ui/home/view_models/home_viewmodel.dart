import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter_command/flutter_command.dart';
import 'package:intl/intl.dart';
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
    getWeekMeasurement = Command.createAsync<int, Result<List<Measurement>>?>(
      _getWeekMeasurement,
      initialValue: null,
    )..execute(0);
  }

  final AuthRepository _authRepository;
  final MeasurementRepository _measurementRepository;

  late Command<void, Result<Measurement>?> getTodayMeasurement;
  late Command<int, Result<List<Measurement>>?> getWeekMeasurement;

  String height = 'x';

  Map<String, int> measurements = {};

  Future<Result<List<Measurement>>> _getWeekMeasurement(int offsetWeeks) async {
    final DateTime now = DateTime.now();

    DateTime startOfWeek = now
        .subtract(Duration(days: now.weekday - 1))
        .subtract(Duration(days: offsetWeeks * 7));
    startOfWeek =
        DateTime(startOfWeek.year, startOfWeek.month, startOfWeek.day);
    DateTime endOfWeek = startOfWeek.add(Duration(days: 6));

    final result = await _measurementRepository.getMeasurementsBetween(
      startDate: startOfWeek,
      endDate: endOfWeek,
    );

    final measurements = result.getOrNull();
    if (measurements != null) {
      this.measurements = {};
      for (var measurement in measurements) {
        String date = DateFormat('E').format(DateTime.parse(measurement.date));
        final steps = measurement.steps.isFinite ? measurement.steps : 0;
        this.measurements[date] = steps.toInt();
      }
    } else {
      this.measurements = {};
    }
    notifyListeners();

    return result;
  }

  Future<Result<Measurement>> _getTodayMeasurement() async {
    final result =
        await _measurementRepository.getMeasurement(date: DateTime.now());
    final measurement = result.getOrNull();
    notifyListeners();

    DateTime startOfDay = DateTime.now().subtract(Duration(
        hours: DateTime.now().hour,
        minutes: DateTime.now().minute,
        seconds: DateTime.now().second));
    DateTime endOfDay = startOfDay.add(Duration(days: 1));

    int steps = await Pedometer().getStepCount(from: startOfDay, to: endOfDay);
    if (steps > (measurement?.steps ?? 0)) {
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
