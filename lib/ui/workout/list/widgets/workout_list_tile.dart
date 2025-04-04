import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_osm_plugin/flutter_osm_plugin.dart';
import 'package:workout_tracker_app/domain/models/workout/workout.dart';
import 'package:workout_tracker_app/routing/routes.dart';

class WorkoutListTile extends StatelessWidget {
  final Workout workout;

  const WorkoutListTile(this.workout, {super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      minTileHeight: 80,
      leading: SizedBox(
        width: 60,
        height: 60,
        child: FutureBuilder(
            future: Future.delayed(Duration(seconds: 1)),
            builder: (context, snapshot) {
              if (snapshot.connectionState != ConnectionState.done) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (workout.data?.center?.lat == null ||
                  workout.data?.center?.lng == null) {
                return const Center(
                  child: Icon(Icons.bike_scooter),
                );
              } else {
                return const Center(
                  child: Icon(Icons.bike_scooter),
                );
              }

              return OSMViewer(
                controller: SimpleMapController(
                  initPosition: GeoPoint(
                    latitude: workout.data!.center!.lat!,
                    longitude: workout.data!.center!.lng!,
                  ),
                  markerHome: const MarkerIcon(icon: Icon(null)),
                ),
                zoomOption: const ZoomOption(
                    initZoom: 8, minZoomLevel: 8, maxZoomLevel: 8),
              );
            }),
      ),
      title: Text(workout.name),
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
        context.go(Routes.workoutWithId(workout.id!));
      },
    );
  }
}
