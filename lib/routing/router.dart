import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:workout_tracker_app/ui/auth/login/view_models/login_viewmodel.dart';
import 'package:workout_tracker_app/ui/home/view_models/home_viewmodel.dart';
import 'package:workout_tracker_app/ui/home/widgets/home_screen.dart';

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
        return LoginScreen(viewModel: LoginViewModel(authRepository: context.read()));
      },
    ),
    GoRoute(
      path: Routes.home,
      builder: (context, state) {
        return HomeScreen(viewModel: HomeViewModel(
          authRepository: context.read(),
          measurementRepository: context.read()
        ));
      },
      routes: [
      ],
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
