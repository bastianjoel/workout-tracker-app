import 'package:flutter/material.dart';

class WorkoutListScreen extends StatefulWidget {
  const WorkoutListScreen({super.key});

  // final WorkoutListViewModel viewModel;

  @override
  State<WorkoutListScreen> createState() => _WorkoutListScreenState();
}

class _WorkoutListScreenState extends State<WorkoutListScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void didUpdateWidget(covariant WorkoutListScreen oldWidget) {
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("WorkoutList"),
      ),
    );
  }
}
