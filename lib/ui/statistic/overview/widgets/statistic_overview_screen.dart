import 'package:flutter/material.dart';

class StatisticOverviewScreen extends StatefulWidget {
  const StatisticOverviewScreen({super.key});

  // final StatisticOverviewViewModel viewModel;

  @override
  State<StatisticOverviewScreen> createState() =>
      _StatisticOverviewScreenState();
}

class _StatisticOverviewScreenState extends State<StatisticOverviewScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void didUpdateWidget(covariant StatisticOverviewScreen oldWidget) {
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
        child: Text("StatisticOverview"),
      ),
    );
  }
}
