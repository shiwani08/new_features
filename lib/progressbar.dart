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

class ProgressBarDemo extends StatelessWidget {
  const ProgressBarDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: simulateProgress(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(13.0),
                child: LinearProgressIndicator(
                  backgroundColor: Colors.grey,
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
                ),
              ),
              SizedBox(height: 20),
              Text('Taiyaar hora hu bhai...',
                style: TextStyle(
                  fontSize: 25,
                ),),
            ],
          );
        } else if (snapshot.connectionState == ConnectionState.done) {
          return Text('Chal Chai pine!',
          style: TextStyle(
            fontSize: 25,
          ),);
        } else {
          return Text('Code phatt gya');
        }
      },
    );
  }

  Future<void> simulateProgress() async {
    await Future.delayed(Duration(seconds: 3));
  }
}
