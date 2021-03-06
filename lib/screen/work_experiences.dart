import 'package:flutter/material.dart';
import 'package:tech_with_tim/screen/main_screen.dart';
import 'custom_drawer.dart';
import 'data.dart';
import 'work_screen.dart';
import 'login_screen.dart';

class WorkExperiences extends StatefulWidget {
  @override
  State<WorkExperiences> createState() => _WorkExperiencesState();
}

class _WorkExperiencesState extends State<WorkExperiences> {
  Widget _buildWorkExperiences() {
    List<Widget> WorkTypeList = [];
    workType.forEach((WorkType WorkType) {
      WorkTypeList.add(GestureDetector(
          onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => WorkScreen(workType: WorkType),
                ),
              ),
          child: Container(
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
                    image: AssetImage(WorkType.image),
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
                            WorkType.name,
                          ),
                          if (WorkType.name.contains(
                              'TMF Administrative Services Malaysia Sdn. Bhd.'))
                            SizedBox(
                              height: 10.0,
                              width: 120.0,
                              child: Divider(
                                color: Colors.teal.shade400,
                              ),
                            ),
                          Text(
                            WorkType.position,
                          ),
                          if (WorkType.position.length != 0)
                            SizedBox(
                              height: 10.0,
                              width: 120.0,
                              child: Divider(
                                color: Colors.teal.shade400,
                              ),
                            ),
                          if (WorkType.year.length != 0)
                            Text(
                              WorkType.year,
                            ),
                          if (WorkType.year.length != 0)
                            SizedBox(
                              height: 10.0,
                              width: 120.0,
                              child: Divider(
                                color: Colors.teal.shade400,
                              ),
                            ),
                        ],
                      )),
                )
              ],
            ),
          )));
    });
    return Column(children: WorkTypeList);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          title: Text('Work Experiences'),
          backgroundColor: Colors.teal.shade600,
        ),
        drawer: CustomDrawer(),
        body: ListView(children: <Widget>[
          Column(children: <Widget>[
            _buildWorkExperiences(),
          ]),
        ]));
  }
}
