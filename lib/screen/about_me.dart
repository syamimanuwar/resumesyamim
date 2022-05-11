import 'package:flutter/material.dart';

import 'custom_drawer.dart';

void main() {
  runApp(AboutMe());
}

class AboutMe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        title: Text('About Me'),
        backgroundColor: Colors.teal.shade600,
      ),
      drawer: CustomDrawer(),
      body: SafeArea(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('images/syamim2.jpeg'),
              ),
              Text(
                'Syamim Anuwar',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 30.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'ABOUT ME',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 15.0,
                  color: Colors.teal.shade100,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                  height: 10.0,
                  width: 120.0,
                  child: Divider(
                    color: Colors.teal.shade100,
                  )),
              SizedBox(height: 15.0),
              Center(
                child: Container(
                  color: Colors.white,
                  width: 350.0,
                  child: ListView(shrinkWrap: true, children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text(
                        'Ambitious and self-motivated person who has decided to change his career path from Corporate Administration to IT field in order to pursue his dream to become a software developer. Another reasons are to have a better career growth and improve lifestyle. Have a great desire and passion in programming and keen to explore new challenges and opportunities in IT. Possess an excellent communication skill, have the ability to work both independently and as a team, able to blend in with people easily, fast learner and always pay attention to details in ensuring work being done is high of quality and in time-conscious. Humbly seeking guidance from experienced mentors to help fulfilling my dream and to become job ready as a software developer.',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                            color: Colors.teal.shade900, fontSize: 15.0),
                      ),
                    ),
                  ]),
                ),
              ),
            ]),
      ),
    );
  }
}
