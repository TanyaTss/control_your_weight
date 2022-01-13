import 'package:flutter/material.dart';
import 'UI/main_screen.dart';

void main() {
  runApp(const ControlWeightApp());
}

class ControlWeightApp extends StatelessWidget {
  const ControlWeightApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Control Weight',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const MainScreen(title: 'Flutter Demo Home Page'),
    );
  }
}
