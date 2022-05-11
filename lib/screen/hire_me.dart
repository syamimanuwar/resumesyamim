import 'package:flutter/material.dart';
import 'custom_drawer.dart';

class HireMe extends StatefulWidget {
  const HireMe({Key? key}) : super(key: key);

  @override
  _HireMeState createState() => _HireMeState();
}

class _HireMeState extends State<HireMe> {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          title: Text('About Me'),
          backgroundColor: Colors.teal.shade600,
        ),
        drawer: CustomDrawer(),
        body: SafeArea(
            child: Column(children: [
          Container(
              height: 230,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(50),
                ),
                color: Color(0xFF363f93),
              ),
              child: Stack(children: [
                Positioned(
                  top: 80,
                  left: 0,
                  child: Container(
                    height: 70,
                    width: 300,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(50),
                        bottomRight: Radius.circular(50),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 100,
                  left: 20,
                  child: Text(
                    "Why you should hire me",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF363f93),
                    ),
                  ),
                )
              ]))
        ])));
  }
}
