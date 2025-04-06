import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:workout_tracker_app/domain/models/map_data_details/map_data_details.dart';

class WorkoutDetailChart extends StatelessWidget {
  const WorkoutDetailChart({super.key, required this.workoutDetails});

  final MapDataDetails workoutDetails;

  @override
  Widget build(BuildContext context) {
    return LineChart(
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
            spots: workoutDetails.points
                .where((e) => e.speedInKmH >= 1.0)
                .map((e) => FlSpot(e.totalDistance, e.speedInKmH))
                .toList(),
            dotData: FlDotData(show: false),
            isCurved: true,
            color: Colors.blue,
            belowBarData: BarAreaData(show: false),
          ),
          LineChartBarData(
            spots: workoutDetails.points
                .map((e) => FlSpot(e.totalDistance, e.elevation))
                .toList(),
            dotData: FlDotData(show: false),
            isCurved: true,
            color: Colors.green,
            belowBarData: BarAreaData(show: false),
          ),
        ],
      ),
    );
  }
}
