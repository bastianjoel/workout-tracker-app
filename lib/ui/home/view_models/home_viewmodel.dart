import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter_command/flutter_command.dart';
import 'package:intl/intl.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:result_dart/result_dart.dart';
import 'package:workout_tracker_app/data/repositories/auth/auth_repository.dart';
import 'package:workout_tracker_app/data/repositories/measurement/measurement_repository.dart';
import 'package:workout_tracker_app/data/services/shared_preferences_service.dart';
import 'package:workout_tracker_app/domain/models/measurement/measurement.dart';

class HomeViewModel extends ChangeNotifier {
  HomeViewModel({
    required AuthRepository authRepository,
    required MeasurementRepository measurementRepository,
    required SharedPreferencesService sharedPreferencesService,
  })  : _authRepository = authRepository,
        _measurementRepository = measurementRepository,
        _sharedPreferencesService = sharedPreferencesService {
    getWeekMeasurement = Command.createAsync<int, Result<List<Measurement>>?>(
      _getWeekMeasurement,
      initialValue: null,
    )..execute(0);
  }

  final AuthRepository _authRepository;
  final MeasurementRepository _measurementRepository;
  final SharedPreferencesService _sharedPreferencesService;

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

  Future<void> requestPermissions() async {
    if (!await _sharedPreferencesService.getSyncPedometer()) {
      return;
    }

    PermissionStatus status = PermissionStatus.denied;
    if (Platform.isAndroid &&
        !(await Permission.activityRecognition.isGranted)) {
      status = await Permission.activityRecognition.request();
    } else if (Platform.isIOS && !(await Permission.sensors.isGranted)) {
      status = await Permission.sensors.request();
    }

    if (status.isDenied || status.isPermanentlyDenied) {
      await _sharedPreferencesService.setSyncPedometer(false);
    }
  }

  Future<void> logout() async {
    await _authRepository.logout();
  }
}
