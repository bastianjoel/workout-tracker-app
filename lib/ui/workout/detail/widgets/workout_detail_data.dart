import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:workout_tracker_app/domain/models/workout/workout.dart';

class WorkoutDetailData extends StatelessWidget {
  const WorkoutDetailData(this.workout, {super.key});

  final Workout workout;

  @override
  Widget build(BuildContext context) {
    List<Widget> widgets = [];
    if (workout.data != null) {
      final data = workout.data!;

      List<_WorkoutDetailListItem> items = [];
      if (data.addressString != "") {
        items.add(_WorkoutDetailListItem(
          icon: const Icon(Icons.location_on),
          label: AppLocalizations.of(context)!.location,
          text: data.addressString,
        ));
      }

      if (data.creator != "") {
        items.add(_WorkoutDetailListItem(
          icon: const Icon(Icons.bookmark),
          label: AppLocalizations.of(context)!.source,
          text: data.creator,
        ));
      }

      if (data.totalRepetitions > 0) {
        items.add(_WorkoutDetailListItem(
          icon: const Icon(Icons.sync),
          label: AppLocalizations.of(context)!.total_repetitions,
          text: '${data.totalRepetitions}',
        ));
      }

      if (data.totalWeight > 0) {
        items.add(_WorkoutDetailListItem(
          icon: const Icon(Icons.fitness_center),
          label: AppLocalizations.of(context)!.total_weight,
          text: '${NumberFormat("#.##").format((data.totalWeight) / 1000)} kg',
        ));
      }

      if (data.totalDuration > 0) {
        items.add(_WorkoutDetailListItem(
          icon: const Icon(Icons.timer),
          label: AppLocalizations.of(context)!.total_duration,
          text: '${(data.totalDuration) / 1000000000 ~/ 60} min',
        ));
      }

      if (data.pauseDuration > 0) {
        items.add(_WorkoutDetailListItem(
          icon: const Icon(Icons.hourglass_empty),
          label: AppLocalizations.of(context)!.time_paused,
          text: '${(data.pauseDuration) / 1000000000 ~/ 60} min',
        ));
      }

      if (data.totalDistance > 0) {
        items.add(_WorkoutDetailListItem(
          icon: const Icon(Icons.arrow_right_alt),
          label: AppLocalizations.of(context)!.total_distance,
          text: '${NumberFormat("#.##").format((data.totalDistance) / 1000)} km',
        ));
      }

      if (data.averageSpeed > 0) {
        items.add(_WorkoutDetailListItem(
          icon: const Icon(Icons.speed),
          label: AppLocalizations.of(context)!.average_speed,
          text: '${NumberFormat("#.##").format((data.averageSpeed) * 3.6)} km/h',
        ));
      }

      if (data.averageSpeedNoPause > 0) {
        items.add(_WorkoutDetailListItem(
          icon: const Icon(Icons.speed),
          label: AppLocalizations.of(context)!.average_speed_no_pause,
          text: '${NumberFormat("#.##").format((data.averageSpeedNoPause) * 3.6)} km/h',
        ));
      }

      if (data.averageSpeed > 0) {
        // TODO: Add average tempo
      }

      if (data.averageSpeedNoPause > 0) {
        // TODO: Add average tempo (no pause)
      }

      if (data.maxSpeed > 0) {
        items.add(_WorkoutDetailListItem(
          icon: const Icon(Icons.speed),
          label: AppLocalizations.of(context)!.max_speed,
          text: '${NumberFormat("#.##").format((data.maxSpeed) * 3.6)} km/h',
        ));
      }

      if (data.minElevation != 0) {
        items.add(_WorkoutDetailListItem(
          icon: const Icon(Icons.terrain),
          label: AppLocalizations.of(context)!.min_elevation,
          text: '${NumberFormat("#.##").format((data.minElevation))} m',
        ));
      }

      if (data.maxElevation != 0) {
        items.add(_WorkoutDetailListItem(
          icon: const Icon(Icons.terrain),
          label: AppLocalizations.of(context)!.max_elevation,
          text: '${NumberFormat("#.##").format((data.maxElevation))} m',
        ));
      }

      if (data.totalUp != 0) {
        items.add(_WorkoutDetailListItem(
          icon: const Icon(Icons.arrow_upward),
          label: AppLocalizations.of(context)!.total_up,
          text: '${NumberFormat("#.##").format((data.totalUp))} m',
        ));
      }

      if (data.totalDown != 0) {
        items.add(_WorkoutDetailListItem(
          icon: const Icon(Icons.arrow_downward),
          label: AppLocalizations.of(context)!.total_down,
          text: '${NumberFormat("#.##").format((data.totalDown))} m',
        ));
      }

      // TODO: Add calories burned
      // TODO: Add equipment
      // TODO: Add extra metrics

      for (var item in items) {
        widgets.add(Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                item.icon,
                SizedBox(width: 8),
                Text(item.label),
                SizedBox(width: 8),
              ]
            ),
            Spacer(),
            Text(item.text),
          ],
        ));
        widgets.add(SizedBox(height: 8));
      }
    }

    return Padding(padding: EdgeInsets.all(16), child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(workout.name, style: Theme.of(context).textTheme.headlineMedium),
        SizedBox(height: 8),
        Row(
          children: [
            Icon(workout.type.icon),
            SizedBox(width: 8),
            Text(DateFormat.yMMMMd().format(workout.date.toLocal())),
            Text(' - '),
            Text(DateFormat.jm().format(workout.date.toLocal())),
          ],
        ),
        SizedBox(height: 24),
        ...widgets,
      ],
    ));
  }
}

class _WorkoutDetailListItem {
  const _WorkoutDetailListItem({
    required this.icon,
    required this.label,
    required this.text,
  });

  final Icon icon;
  final String label;
  final String text;
}
