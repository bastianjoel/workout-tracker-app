import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_osm_plugin/flutter_osm_plugin.dart';
import 'package:workout_tracker_app/ui/workout/detail/view_models/workout_detail_viewmodel.dart';

class WorkoutDetailScreen extends StatefulWidget {
  const WorkoutDetailScreen({super.key, required this.viewModel});

  final WorkoutDetailViewModel viewModel;

  @override
  State<WorkoutDetailScreen> createState() => _WorkoutDetailScreenState();
}

class _WorkoutDetailScreenState extends State<WorkoutDetailScreen>
    with OSMMixinObserver {
  List<GeoPoint> workoutPath = [];
  MapController? mapController;

  @override
  Future<void> mapIsReady(bool isReady) async {
    mapController!.drawRoadManually(
        workoutPath,
        RoadOption(
          roadColor: Colors.red,
          isDotted: true,
        ));
  }

  @override
  void initState() {
    super.initState();

    widget.viewModel.loadWorkout.addListener(() {
      if (widget.viewModel.workout != null) {
        final workout = widget.viewModel.workout!;
        if (workout.data != null && workout.data?.details?.points != null) {
          final mapData = workout.data!;
          MapController controller = MapController.withPosition(
            initPosition: GeoPoint(
              latitude: mapData.center.lat,
              longitude: mapData.center.lng,
            ),
          );

          workoutPath = mapData.details!.points
              .map((e) => GeoPoint(
                    latitude: e.lat,
                    longitude: e.lng,
                  ))
              .toList();
          controller.addObserver(this);
          mapController = controller;
        }
      }
    });
  }

  @override
  void dispose() {
    super.dispose();

    if (mapController != null) {
      mapController!.removeObserver(this);
      mapController!.dispose();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Workout Detail'),
        actions: [
          ListenableBuilder(
            listenable: widget.viewModel.loadWorkout,
            builder: (context, child) {
              if (widget.viewModel.workout?.publicUUID == null) {
                return const SizedBox.shrink();
              }

              return IconButton(
                icon: const Icon(Icons.share),
                onPressed: () {
                  // TODO: Implement share functionality
                },
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: ListenableBuilder(
            listenable: widget.viewModel.loadWorkout,
            builder: (context, child) {
              if (widget.viewModel.workout == null) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }

              final workout = widget.viewModel.workout!;
              return Column(children: [
                SizedBox(
                  height: 300,
                  child: mapController != null
                      ? OSMFlutter(
                          controller: mapController!, osmOption: OSMOption())
                      : null,
                ),
                SizedBox(height: 20),
                Text(workout.name,
                    style: Theme.of(context).textTheme.headlineMedium),
                SizedBox(
                  height: 300,
                  child: workout.data!.details != null
                      ? LineChart(
                          LineChartData(
                            gridData: FlGridData(show: false),
                            titlesData: FlTitlesData(
                              leftTitles: AxisTitles(
                                sideTitles: SideTitles(showTitles: false),
                                axisNameWidget: const Text('Elevation (m)'),
                              ),
                              rightTitles: AxisTitles(
                                sideTitles: SideTitles(showTitles: false),
                                axisNameWidget: const Text('Speed (km/h)'),
                              ),
                              bottomTitles: AxisTitles(
                                sideTitles: SideTitles(showTitles: true),
                              ),
                              topTitles: AxisTitles(
                                sideTitles: SideTitles(showTitles: false),
                              ),
                            ),
                            borderData: FlBorderData(show: true),
                            lineBarsData: [
                              LineChartBarData(
                                spots: workout.data!.details!.points
                                    .where((e) => e.speedInKmH >= 1.0)
                                    .map((e) =>
                                        FlSpot(e.totalDistance, e.speedInKmH))
                                    .toList(),
                                dotData: FlDotData(show: false),
                                isCurved: true,
                                color: Colors.blue,
                                belowBarData: BarAreaData(show: false),
                              ),
                              LineChartBarData(
                                spots: workout.data!.details!.points
                                    .map((e) =>
                                        FlSpot(e.totalDistance, e.elevation))
                                    .toList(),
                                dotData: FlDotData(show: false),
                                isCurved: true,
                                color: Colors.green,
                                belowBarData: BarAreaData(show: false),
                              ),
                            ],
                          ),
                        )
                      : null,
                )
              ]);
            },
          ),
        ),
      ),
    );
  }
}
