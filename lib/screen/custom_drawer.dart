import 'package:flutter/material.dart';
import 'educational_history.dart';
import 'hire_me.dart';
import 'home_screen.dart';
import 'work_experiences.dart';
import 'my_profile.dart';

class CustomDrawer extends StatelessWidget {
  _buildDrawerOption(Icon icon, String title, Function()? onTap) {
    return ListTile(
      leading: icon,
      title: Text(
        title,
        style: TextStyle(
          fontSize: 20.0,
        ),
      ),
      onTap: onTap,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                color: Colors.teal,
                height: 210.0,
                width: double.infinity,
              ),
              Positioned(
                top: 30.0,
                left: 70.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      height: 100.0,
                      width: 100.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          width: 3.0,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                      child: ClipOval(
                        child: Image(
                          image: AssetImage('images/syamim2.jpeg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Text(
                      'Syamim Anuwar',
                      style: TextStyle(
                        fontFamily: 'Pacifico',
                        fontSize: 25.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Flutter Developer',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 15.0,
                        color: Colors.teal.shade100,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          _buildDrawerOption(
            Icon(Icons.dashboard),
            'Home',
            () => Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (context) => HomeScreen(),
              ),
            ),
          ),
          _buildDrawerOption(
            Icon(Icons.dashboard),
            'My Profile',
            () => Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (context) => MyProfile(),
              ),
            ),
          ),
          _buildDrawerOption(
            Icon(Icons.dashboard),
            'Work Experiences',
            () => Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (context) => WorkExperiences(),
              ),
            ),
          ),
          _buildDrawerOption(
            Icon(Icons.dashboard),
            'Educational History',
            () => Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (context) => EducationalHistory(),
              ),
            ),
          ),
          _buildDrawerOption(
            Icon(Icons.dashboard),
            'Why You Should Hire Me',
            () => Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (context) => HireMe(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
