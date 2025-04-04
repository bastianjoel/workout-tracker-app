import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
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
        child: Builder(builder: (context) {
          if (workout.data == null) {
            return const Center(
              child: Icon(Icons.error),
            );
          } else {
            return Center(
              child: Icon(workout.type.icon),
            );
          }
        }),
      ),
      title: Text(workout.name),
      subtitle: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(Icons.event),
                    SizedBox(width: 5),
                    Text(DateFormat.yMd().format(workout.date)),
                  ],
                ),
                SizedBox(height: 2),
                Row(
                  children: [
                    Icon(Icons.arrow_right_alt),
                    SizedBox(width: 5),
                    Text(
                        '${((workout.data?.totalDistance ?? 0) / 1000).toStringAsFixed(2)} km'),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(Icons.timer),
                    SizedBox(width: 5),
                    Text(
                      '${(workout.data?.totalDuration ?? 0) / 1000000000 ~/ 60} min',
                      style: const TextStyle(fontSize: 12),
                    ),
                  ],
                ),
                SizedBox(height: 2),
                Row(
                  children: [
                    Icon(Icons.location_pin),
                    SizedBox(width: 5),
                    Expanded(
                      child: Text(workout.data?.addressString ?? ''),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      onTap: () {
        context.go(Routes.workoutWithId(workout.id!));
      },
    );
  }
}
