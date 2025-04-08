import 'dart:io';

import 'package:background_fetch/background_fetch.dart';
import 'package:flutter/material.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
import 'package:pedometer_2/pedometer_2.dart';
import 'package:provider/provider.dart';
import 'package:workout_tracker_app/config/dependencies.dart';
import 'package:workout_tracker_app/data/repositories/auth/auth_repository_remote.dart';
import 'package:workout_tracker_app/data/repositories/measurement/measurement_repository_remote.dart';
import 'package:workout_tracker_app/data/services/api/api_client.dart';
import 'package:workout_tracker_app/data/services/shared_preferences_service.dart';
import 'package:workout_tracker_app/routing/router.dart';
import 'package:workout_tracker_app/ui/core/themes/theme.dart';

void main() {
  Intl.defaultLocale = Platform.localeName;
  initializeDateFormatting(Platform.localeName, null).then((_) {
    runApp(MultiProvider(providers: providersRemote, child: const MainApp()));
  });
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Workout Tracker',
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: AppLocalizations.supportedLocales,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
      routerConfig: router,
    );
  }

  Future<void> initPlatformState() async {
    BackgroundFetch.configure(
      BackgroundFetchConfig(
        minimumFetchInterval: 55,
        stopOnTerminate: false,
        enableHeadless: true,
        startOnBoot: true,
        requiresBatteryNotLow: true,
        requiresCharging: false,
        requiresStorageNotLow: false,
        requiresDeviceIdle: false,
        requiredNetworkType: NetworkType.ANY,
      ),
      (String taskId) async {
        print("[BackgroundFetch] Event received $taskId");
        backgroundUpdateSteps();
        BackgroundFetch.finish(taskId);
      },
      (String taskId) async {
        print("[BackgroundFetch] Timeout $taskId");
        BackgroundFetch.finish(taskId);
      },
    );
  }
}

Future<void> backgroundUpdateSteps() async {
  // Perform your background task here
  final apiClient = ApiClient();
  final authRepo = AuthRepositoryRemote(
    apiClient: apiClient,
    sharedPreferencesService: SharedPreferencesService(),
  );
  if (await authRepo.isAuthenticated) {
    DateTime startOfDay = DateTime.now().subtract(Duration(
        hours: DateTime.now().hour,
        minutes: DateTime.now().minute,
        seconds: DateTime.now().second));
    DateTime endOfDay = startOfDay.add(Duration(days: 1));
    int steps = await Pedometer().getStepCount(from: startOfDay, to: endOfDay);
    await MeasurementRepositoryRemote(apiClient: apiClient)
        .setSteps(steps: steps);
  }
}
