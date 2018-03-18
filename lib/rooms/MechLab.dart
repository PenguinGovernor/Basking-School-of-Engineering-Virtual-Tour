import 'package:flutter/material.dart';

class MechLab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.blue,
        title: new Text("Mechatronics Lab"),
      ),
      body: new MechBody(),
    );
  }
}

class MechBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new ListView(
      children: <Widget>[
        new Column(
          children: <Widget>[
            new Align(
              alignment: Alignment.center,
              child: new Image.asset(
                "images/mech.jpg",
                height: 240.0,
              ),
            ),
            new Card(
              child: new Column(
                children: <Widget>[
                  new ListTile(
                    leading: new Icon(Icons.computer, color: Colors.blue),
                    title: new Text("Computer Engineering - Mechatronics Lab"),
                    subtitle: new Text("Baskin Engineering 1 Room 115"),
                  )
                ],
              ),
            ),
            new Card(
              color: Colors.white,
              child: new Column(
                children: <Widget>[
                  new Align(
                    alignment: Alignment.topLeft,
                    child: new Text(
                      "Description: ",
                      style: new TextStyle(
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold),
                      textScaleFactor: 1.2,
                    ),
                  ),
                  new Padding(
                    padding: new EdgeInsets.all(1.0),
                  ),
                  new Align(
                    alignment: Alignment.topLeft,
                    child: new Text("$_desc"),
                  )
                ],
              ),
            )
          ],
        )
      ],
    );
  }

  final _desc =
      "BEE 115 is home to CMPE118: Introduction to Mechatronics. In this class teams of 3 to 4 students must build a fully autonomous robot from the ground up in 5 weeks meaning that once the power switch is on, the robot must function on its own. The first five weeks students learn about components that are needed to build the robot, such as amplifiers, infrared sensors, bump sensors, and so on. The rest ofthe quarter they focus on building a complete robot. Atthe end of the quarter there's a competition. Previous examples include a competition based on Enders Game, where the robot had to navigate around stars and find the enemys home beacon. Also, robots scored points every time it was hit by an enemys ping-pong ball.";
}
