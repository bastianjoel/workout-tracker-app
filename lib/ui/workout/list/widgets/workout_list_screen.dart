import 'package:flutter/material.dart';
import 'package:flutter_osm_plugin/flutter_osm_plugin.dart';
import 'package:workout_tracker_app/ui/workout/list/view_models/workout_list_viewmodel.dart';

class WorkoutListScreen extends StatefulWidget {
  const WorkoutListScreen({super.key, required this.viewModel});

  final WorkoutListViewModel viewModel;

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
      body: Center(
        child: ListenableBuilder(
          listenable: widget.viewModel.loadWorkouts,
          builder: (context, child) {
            return ListView.builder(
              itemCount: widget.viewModel.workouts.length,
              itemBuilder: (context, index) {
                final workout = widget.viewModel.workouts[index];
                return ListTile(
                  minTileHeight: 80,
                  leading: SizedBox(
                    width: 60,
                    height: 60,
                    child: FutureBuilder(
                        future: Future.delayed(Duration(seconds: 1)),
                        builder: (context, snapshot) {
                          // if (snapshot.connectionState != ConnectionState.done) {
                            return const Center(
                              child: CircularProgressIndicator(),
                            );
                          // }

                          return OSMViewer(
                            controller: SimpleMapController(
                              initPosition: GeoPoint(
                                latitude: 47.4358055,
                                longitude: 8.4737324,
                              ),
                              markerHome:
                                  const MarkerIcon(icon: Icon(Icons.home)),
                            ),
                            zoomOption: const ZoomOption(
                                initZoom: 16,
                                minZoomLevel: 16,
                                maxZoomLevel: 16),
                          );
                        }),
                  ),
                  title: Text(workout.name ?? ''),
                  subtitle: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.event),
                              SizedBox(width: 5),
                              Text('22. Mai 2025'),
                            ],
                          ),
                          SizedBox(height: 2),
                          Row(
                            children: [
                              Icon(Icons.arrow_right_alt),
                              SizedBox(width: 5),
                              Text('10 km'),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.timer),
                              SizedBox(width: 5),
                              Text('4h 14m'),
                            ],
                          ),
                          SizedBox(height: 2),
                          Row(
                            children: [
                              Icon(Icons.location_pin),
                              SizedBox(width: 5),
                              Text('Rheine'),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  onTap: () {
                    // TODO: Open workout details
                  },
                );
              },
            );
          },
        ),
      ),
    );
  }
}
