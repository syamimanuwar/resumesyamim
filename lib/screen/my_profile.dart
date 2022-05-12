import 'package:flutter/material.dart';
import 'custom_drawer.dart';

class MyProfile extends StatefulWidget {
  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: Colors.teal,
          appBar: AppBar(
              title: Text('My Profile'),
              backgroundColor: Colors.teal.shade600,
              bottom: TabBar(
                labelStyle: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600,
                ),
                unselectedLabelStyle: TextStyle(fontSize: 15.0),
                tabs: <Widget>[
                  Tab(text: 'Contact Me'),
                  Tab(text: 'About Me'),
                ],
              )),
          drawer: CustomDrawer(),
          body: TabBarView(children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: CircleAvatar(
                    radius: 50.0,
                    backgroundImage: AssetImage('images/syamim2.jpeg'),
                  ),
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
                  'FLUTTER DEVELOPER',
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
                Card(
                  color: Colors.white,
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.home_filled,
                      color: Colors.teal,
                      size: 30,
                    ),
                    title: Text(
                      'Cyberjaya, Selangor',
                      style: TextStyle(color: Colors.teal.shade900),
                    ),
                  ),
                ),
                Card(
                  color: Colors.white,
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Colors.teal,
                      size: 30,
                    ),
                    title: Text('+6019 990 8542',
                        style: TextStyle(color: Colors.teal.shade900)),
                  ),
                ),
                Card(
                  color: Colors.white,
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.email,
                      color: Colors.teal,
                      size: 30,
                    ),
                    title: Text('syamimanuwar@gmail.com',
                        style: TextStyle(color: Colors.teal.shade900)),
                  ),
                ),
              ],
            ),
            Column(children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: CircleAvatar(
                  radius: 50.0,
                  backgroundImage: AssetImage('images/syamim2.jpeg'),
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
                'ABOUT ME',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 15.0,
                  color: Colors.teal.shade100,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                  height: 20.0,
                  width: 120.0,
                  child: Divider(
                    color: Colors.teal.shade100,
                  )),
              Center(
                child: Expanded(
                  child: Container(
                    color: Colors.white,
                    width: 360.0,
                    height: 340.0,
                    child: ListView(shrinkWrap: true, children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(12.0),
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
              ),
            ]),
          ]),
        ),
      );
}
