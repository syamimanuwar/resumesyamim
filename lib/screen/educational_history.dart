import 'package:flutter/material.dart';

import 'custom_drawer.dart';
import 'data.dart';

class EducationalHistory extends StatefulWidget {
  @override
  State<EducationalHistory> createState() => _EducationalHistoryState();
}

class _EducationalHistoryState extends State<EducationalHistory> {
  Widget _buildEducationalHistory() {
    List<Widget> EducationalHistoryList = [];
    EducationType.forEach((EducationalType) {
      EducationalHistoryList.add(
        Container(
          margin: EdgeInsets.symmetric(horizontal: 7.0, vertical: 10.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15.0),
            border: Border.all(
              width: 1.0,
              color: Colors.grey,
            ),
          ),
          child: Row(
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: Image(
                  height: 150.0,
                  width: 150.0,
                  image: AssetImage(EducationalType.image),
                  fit: BoxFit.fill,
                ),
              ),
              Flexible(
                child: Container(
                    padding: EdgeInsets.all(8.0),
                    margin: EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          EducationalType.name,
                        ),
                        SizedBox(
                            height: 10.0,
                            width: 120.0,
                            child: Divider(
                              color: Colors.teal.shade400,
                            )),
                        if (EducationalType.course.length != 0)
                          Text(
                            EducationalType.course,
                          ),
                        if (EducationalType.course.length != 0)
                          SizedBox(
                              height: 10.0,
                              width: 120.0,
                              child: Divider(
                                color: Colors.teal.shade400,
                              )),
                        Text(
                          EducationalType.year,
                        ),
                        if (EducationalType.cgpa.length != 0)
                          SizedBox(
                              height: 10.0,
                              width: 120.0,
                              child: Divider(
                                color: Colors.teal.shade400,
                              )),
                        if (EducationalType.cgpa.length != 0)
                          Text(
                            EducationalType.cgpa,
                          ),
                        if (EducationalType.muet.length != 0)
                          SizedBox(
                              height: 10.0,
                              width: 120.0,
                              child: Divider(
                                color: Colors.teal.shade400,
                              )),
                        if (EducationalType.muet.length != 0)
                          Text(
                            EducationalType.muet,
                          ),
                        if (EducationalType.pmr.length != 0)
                          SizedBox(
                              height: 10.0,
                              width: 120.0,
                              child: Divider(
                                color: Colors.teal.shade400,
                              )),
                        if (EducationalType.pmr.length != 0)
                          Text(
                            EducationalType.pmr,
                          ),
                        if (EducationalType.spm.length != 0)
                          Text(
                            EducationalType.spm,
                          ),
                        if (EducationalType.upsr.length != 0)
                          Text(
                            EducationalType.upsr,
                          ),
                      ],
                    )),
              )
            ],
          ),
        ),
      );
    });
    return Column(children: EducationalHistoryList);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          title: Text('Educational History'),
          backgroundColor: Colors.teal.shade600,
        ),
        drawer: CustomDrawer(),
        body: ListView(children: <Widget>[
          Column(children: <Widget>[
            _buildEducationalHistory(),
          ]),
        ]));
  }
}
