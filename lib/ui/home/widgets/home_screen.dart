import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';

import 'package:workout_tracker_app/routing/routes.dart';
import 'package:workout_tracker_app/ui/home/view_models/home_viewmodel.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.viewModel});

  final HomeViewModel viewModel;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Workout Tracker'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              widget.viewModel.logout().then((_) {
                context.go(Routes.login);
              });
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text('Home Screen'),
                ]
              )
            )
          ],
        ),
      ),
      bottomNavigationBar: NavigationBar(
        destinations: [
          NavigationDestination(
            icon: Icon(Icons.home),
            label: AppLocalizations.of(context)!.home,
          ),
          NavigationDestination(
            icon: Icon(Icons.fitness_center),
            label: AppLocalizations.of(context)!.trainings,
          ),
          NavigationDestination(
            icon: Icon(Icons.radio_button_checked),
            label: AppLocalizations.of(context)!.recording,
          ),
          NavigationDestination(
            icon: Icon(Icons.bar_chart),
            label: AppLocalizations.of(context)!.statistics,
          ),
          NavigationDestination(
            icon: Icon(Icons.settings),
            label: AppLocalizations.of(context)!.settings,
          ),
        ],
      ),
    );
  }
}
