import 'package:flutter/material.dart';
import 'package:location/location.dart';

class RecordingScreen extends StatefulWidget {
  const RecordingScreen({super.key});

  // final RecordingViewModel viewModel;

  @override
  State<RecordingScreen> createState() => _RecordingScreenState();
}

class _RecordingScreenState extends State<RecordingScreen> {
  final Location location = Location();

  @override
  void initState() {
    super.initState();
  }

  @override
  void didUpdateWidget(covariant RecordingScreen oldWidget) {
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
        child: Text("Recording"),
      ),
    );
  }
}
