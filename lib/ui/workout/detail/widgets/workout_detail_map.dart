import 'package:flutter/material.dart';
import 'package:flutter_osm_plugin/flutter_osm_plugin.dart';
import 'package:workout_tracker_app/domain/models/workout/workout.dart';

class WorkoutDetailMap extends StatefulWidget {
  const WorkoutDetailMap({super.key, required this.workout});

  final Workout workout;

  @override
  State<WorkoutDetailMap> createState() => _WorkoutDetailMapState();
}

class _WorkoutDetailMapState extends State<WorkoutDetailMap> with OSMMixinObserver {
  List<GeoPoint> workoutPath = [];
  late MapController mapController;
  String? _roadKey;
  bool mapReady = false;

  @override
  void initState() {
    super.initState();

    final workout = widget.workout;
    if (workout.data != null && workout.data?.details?.points != null) {
      final mapData = workout.data!;
      workoutPath = mapData.details!.points
          .map((e) => GeoPoint(
                latitude: e.lat,
                longitude: e.lng,
              ))
          .toList();

      mapController = MapController.withPosition(
        initPosition: GeoPoint(
          latitude: mapData.center.lat,
          longitude: mapData.center.lng,
        ),
      );
      mapController.addObserver(this);
    }
  }

  @override
  void dispose() {
    super.dispose();

    mapController.removeObserver(this);
    mapController.dispose();
  }

  @override
  Future<void> mapIsReady(bool isReady) async {
    if (!isReady) {
      return;
    }

    await _updatePath();
    setState(() {
      mapReady = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return OSMFlutter(controller: mapController, osmOption: OSMOption());
  }

  Future<void> _updatePath() async {
    if (_roadKey != null) {
      mapController.removeRoad(roadKey: _roadKey!);
    }

    _roadKey = await mapController.drawRoadManually(
        workoutPath,
        RoadOption(
          roadColor: Colors.red,
          isDotted: true,
        ));
  }
}
