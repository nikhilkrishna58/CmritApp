import 'package:flutter/material.dart';

void main() => runApp(drawer());

class drawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Container(
          constraints: BoxConstraints.expand(height: 90.0, width: 120),
          child: Image(
            image: AssetImage("Images/FinalCmritLogo.png"),
          ),
        ),
      ),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.all(20),
          children: <Widget>[
            Card(
              child: Column(
                children: <Widget>[
                  Card(
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            height: 30,
                            width: 10,
                            color: Colors.lightGreen,
                          ),
                        )
                      ],
                    ),
                  ),
                  Image(
                    image: AssetImage("Images/CollegeMainPhoto.jpg"),
                  )
                ],
              ),
            ),
            Card(
              child: Column(
                children: <Widget>[
                  Card(
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            height: 30,
                            width: 10,
                            color: Colors.lightGreen,
                          ),
                        )
                      ],
                    ),
                  ),
                  Image(
                    image: AssetImage("Images/FinalCmritLogo.png"),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Center(
                    child: Container(
                      constraints:
                          BoxConstraints.expand(height: 110.0, width: 300),
                      child: Image(
                        image: AssetImage("Images/FinalCmritLogo.png"),
                      ),
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        "MENU",
                        style: TextStyle(
                            fontSize: 23, fontWeight: FontWeight.w300),
                      ),
                    ],
                  ),
                ],
              ),
              decoration: BoxDecoration(
                color: Colors.grey,
              ),
            ),
            Card(
              child: ListTile(
                title: Text('Notice Board'),
                trailing: Icon(Icons.notification_important),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                },
              ),
            ),
            Card(
              child: ListTile(
                title: Text('Attendance'),
                trailing: Icon(Icons.turned_in),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
            ),
            Card(
              child: ListTile(
                title: Text('Score-card'),
                trailing: Icon(Icons.score),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
            ),
            Card(
              child: ListTile(
                title: Text('Club Activities'),
                trailing: Icon(Icons.business_center),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
            ),
            Card(
              child: ListTile(
                title: Text('College Media'),
                trailing: Icon(Icons.photo_library),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
            ),
            Card(
              child: ListTile(
                title: Text('Lost & Found'),
                trailing: Icon(Icons.question_answer),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
            ),
            Card(
              child: ListTile(
                title: Text('Help'),
                trailing: Icon(Icons.mail),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
