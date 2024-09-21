import 'package:flutter/material.dart';
import 'package:new_features/progressbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 25.0, left: 10),
                child: Text('Progress chlra h bhai',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.blueGrey,
                ),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
