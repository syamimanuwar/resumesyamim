import 'package:flutter/material.dart';
import 'custom_drawer.dart';
import 'data.dart';

class HireMe extends StatefulWidget {
  const HireMe({Key? key}) : super(key: key);

  @override
  _HireMeState createState() => _HireMeState();
}

class _HireMeState extends State<HireMe> {
  @override
  Widget _buildAttribute() {
    List<Widget> AttributeList = [];
    attribute.forEach((Attribute) {
      AttributeList.add(
        Container(
          margin: const EdgeInsets.only(top: 20),
          height: 180,
          width: 400,
          padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
          child: Container(
              decoration: BoxDecoration(
                  color: Color(0xFf363f93),
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(80.0),
                  ),
                  boxShadow: [
                    new BoxShadow(
                      color: Color(0xFF363f93).withOpacity(0.3),
                      offset: new Offset(-10.0, 0.0),
                      blurRadius: 20.0,
                      spreadRadius: 4.0,
                    ),
                  ]),
              padding: const EdgeInsets.only(
                left: 32,
                top: 50,
                bottom: 50,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    Attribute.name,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12.0,
                    ),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Text(
                    Attribute.details,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              )),
        ),
      );
    });
    return Column(children: AttributeList);
  }

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Hire Me'),
          backgroundColor: Colors.teal.shade600,
        ),
        drawer: CustomDrawer(),
        body: SafeArea(
            child: Column(children: [
          Container(
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(50),
              ),
              color: Color(0xFF363f93),
            ),
            child: Stack(children: [
              Positioned(
                top: 30,
                left: 0,
                child: Container(
                  height: 45,
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
                top: 40,
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
            ]),
          ),
          Container(
            height: 170,
            child: Stack(children: [
              Positioned(
                top: 40.0,
                left: 17.0,
                child: Material(
                  child: Container(
                    height: 130.0,
                    width: width * 0.9,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(0.0),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            offset: new Offset(-10.0, 10.0),
                            blurRadius: 20.0,
                            spreadRadius: 4.0)
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 20,
                left: 30,
                child: Card(
                  elevation: 10.0,
                  shadowColor: Colors.grey.withOpacity(0.5),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Container(
                    height: 130.0,
                    width: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage("images/syamim2.jpeg"),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 80,
                left: 170,
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Syamim Anuwar',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Flutter Developer',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ]),
          ),
          Expanded(
            child: ListView(children: <Widget>[
              Column(children: <Widget>[
                _buildAttribute(),
              ]),
            ]),
          ),
        ])));
  }
}
