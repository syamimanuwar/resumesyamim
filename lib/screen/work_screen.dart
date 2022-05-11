import 'package:flutter/material.dart';
import 'package:tech_with_tim/screen/data.dart';
import 'data.dart';
import 'custom_drawer.dart';

class WorkScreen extends StatefulWidget {
  final WorkType workType;

  WorkScreen({required this.workType});

  @override
  _WorkScreenState createState() => _WorkScreenState();
}

class _WorkScreenState extends State<WorkScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          title: Text('TMF'),
          backgroundColor: Colors.teal.shade600,
        ),
        drawer: CustomDrawer(),
        body: Column(
          children: <Widget>[],
        ));
  }
}
