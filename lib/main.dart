import 'package:flutter/material.dart';
import 'package:tech_with_tim/screen/educational_history.dart';
import 'package:tech_with_tim/screen/work_experiences.dart';
import 'package:tech_with_tim/screen/login_screen.dart';
import 'package:tech_with_tim/screen/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Camim App',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LoginScreen(),
    );
  }
}
