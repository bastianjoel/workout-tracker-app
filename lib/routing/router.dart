import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:workout_tracker_app/ui/auth/login/view_models/login_viewmodel.dart';
import 'package:workout_tracker_app/ui/core/ui/main_scaffold.dart';
import 'package:workout_tracker_app/ui/home/view_models/home_viewmodel.dart';
import 'package:workout_tracker_app/ui/home/widgets/home_screen.dart';
import 'package:workout_tracker_app/ui/recording/widgets/recording_screen.dart';
import 'package:workout_tracker_app/ui/settings/widgets/settings_screen.dart';
import 'package:workout_tracker_app/ui/statistic/overview/widgets/statistic_overview_screen.dart';
import 'package:workout_tracker_app/ui/workout/list/view_models/workout_list_viewmodel.dart';
import 'package:workout_tracker_app/ui/workout/list/widgets/workout_list_screen.dart';

import '../data/repositories/auth/auth_repository.dart';
import '../ui/auth/login/widgets/login_screen.dart';
import 'routes.dart';

GoRouter router(AuthRepository authRepository) => GoRouter(
      // debugLogDiagnostics: true,
      initialLocation: Routes.home,
      redirect: _redirect,
      refreshListenable: authRepository,
      routes: [
        GoRoute(
          path: Routes.login,
          builder: (context, state) {
            return LoginScreen(
                viewModel: LoginViewModel(authRepository: context.read()));
          },
        ),
        StatefulShellRoute.indexedStack(
          branches: [
            StatefulShellBranch(routes: [
              GoRoute(
                path: Routes.home,
                builder: (context, state) {
                  return HomeScreen(
                    viewModel: HomeViewModel(
                      authRepository: context.read(),
                      measurementRepository: context.read(),
                    ),
                  );
                },
              )
            ]),
            StatefulShellBranch(routes: [
              GoRoute(
                  path: Routes.workouts,
                  builder: (context, state) {
                    return WorkoutListScreen(
                      viewModel: WorkoutListViewModel(
                        workoutRepository: context.read(),
                      ),
                    );
                  }),
            ]),
            StatefulShellBranch(routes: [
              GoRoute(
                  path: Routes.record,
                  builder: (context, state) {
                    return RecordingScreen();
                  }),
            ]),
            StatefulShellBranch(routes: [
              GoRoute(
                  path: Routes.stats,
                  builder: (context, state) {
                    return StatisticOverviewScreen();
                  }),
            ]),
            StatefulShellBranch(routes: [
              GoRoute(
                  path: Routes.settings,
                  builder: (context, state) {
                    return SettingsScreen();
                  }),
            ]),
          ],
          builder: (context, state, navigationShell) {
            return MainScaffold(navigationShell);
          },
        ),
      ],
    );

Future<String?> _redirect(BuildContext context, GoRouterState state) async {
  final loggedIn = await context.read<AuthRepository>().isAuthenticated;
  if (!loggedIn) {
    return Routes.login;
  }

  final loggingIn = state.matchedLocation == Routes.login;
  if (loggingIn) {
    return Routes.home;
  }

  return null;
}
