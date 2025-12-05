import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Material(
        child: Center(
          child: Text('this is Day 2 and we will make changes in this',style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.blueAccent,
          ),),
        ),
      ),
    );
  }
}