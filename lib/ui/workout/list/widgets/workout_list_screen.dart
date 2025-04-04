import 'package:flutter/material.dart';
import 'package:workout_tracker_app/ui/workout/list/view_models/workout_list_viewmodel.dart';
import 'package:workout_tracker_app/ui/workout/list/widgets/workout_list_tile.dart';

class WorkoutListScreen extends StatefulWidget {
  const WorkoutListScreen({super.key, required this.viewModel});

  final WorkoutListViewModel viewModel;

  @override
  State<WorkoutListScreen> createState() => _WorkoutListScreenState();
}

class _WorkoutListScreenState extends State<WorkoutListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Workouts'),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              // TODO: Add new workout
            },
          ),
        ],
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          await widget.viewModel.updateWorkouts();
        },
        child: ListenableBuilder(
          listenable: widget.viewModel.loadWorkouts,
          builder: (context, child) {
            return ListView.builder(
              itemCount: widget.viewModel.workouts.length,
              itemBuilder: (context, index) {
                return WorkoutListTile(widget.viewModel.workouts[index]);
              },
            );
          },
        ),
      ),
    );
  }
}
