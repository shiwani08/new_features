import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProgressBar(),
    );
  }
}

class ProgressBar extends StatelessWidget {
  const ProgressBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Progress Bar Example'),
      ),
      body: Center(
        child: ProgressBarDemo(),
      ),
    );
  }
}

class ProgressBarDemo extends StatefulWidget {
  const ProgressBarDemo({super.key});

  @override
  _ProgressBarDemoState createState() => _ProgressBarDemoState();
}

class _ProgressBarDemoState extends State<ProgressBarDemo> {
  double progress = 0.0; // Track progress percentage

  @override
  void initState() {
    super.initState();
    simulateProgress();
  }

  Future<void> simulateProgress() async {
    for (int i = 0; i <= 100; i++) {
      await Future.delayed(Duration(milliseconds: 50)); // Simulate work
      setState(() {
        progress = i / 100; // Update progress
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(13.0),
          child: LinearProgressIndicator(
            value: progress, // Set the progress value
            backgroundColor: Colors.grey,
            valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
          ),
        ),
        SizedBox(height: 20),
        Text(
          '${(progress * 100).toStringAsFixed(0)}%', // Show percentage
          style: TextStyle(
            fontSize: 25,
          ),
        ),
        SizedBox(height: 20),
        if (progress >= 1.0) // Show completion message
          Text(
            'Chal Chai pine!',
            style: TextStyle(
              fontSize: 25,
            ),
          ),
      ],
    );
  }
}
