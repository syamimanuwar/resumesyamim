import 'package:flutter/material.dart';
import 'package:resume_syamim/screen/hire_me.dart';
import 'custom_drawer.dart';
import 'educational_history.dart';
import 'hire_me.dart';
import 'work_experiences.dart';
import 'my_profile.dart';
import 'login_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Color.fromRGBO(255, 128, 80, 1),
      ),
      drawer: CustomDrawer(),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MyProfile(),
                ),
              );
            },
            child: Text(
              'My Profile',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
            style: ElevatedButton.styleFrom(
              fixedSize: Size(200, 50),
              primary: Color.fromRGBO(255, 128, 80, 1),
              shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          SizedBox(height: 30.0),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => WorkExperiences(),
                ),
              );
            },
            child: Text(
              'Work Experiences',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
            style: ElevatedButton.styleFrom(
              fixedSize: Size(200, 50),
              primary: Color.fromRGBO(255, 128, 80, 1),
              shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          SizedBox(height: 30.0),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => EducationalHistory(),
                ),
              );
            },
            child: Text(
              'Educational History',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
            style: ElevatedButton.styleFrom(
              fixedSize: Size(200, 50),
              primary: Color.fromRGBO(255, 128, 80, 1),
              shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          SizedBox(height: 30.0),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HireMe(),
                ),
              );
            },
            child: Text(
              'Why You Should Hire Me',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
            style: ElevatedButton.styleFrom(
              fixedSize: Size(200, 50),
              primary: Color.fromRGBO(255, 128, 80, 1),
              shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
