import 'package:flutter/material.dart';

class DANSER extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          backgroundColor: Colors.indigo,
          title: new Text("DANSER Lab"),
        ),
        body: new DanserBody());
  }
}

class DanserBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new ListView(
      children: <Widget>[
        new Column(
          children: <Widget>[
            new Align(
              alignment: Alignment.center,
              child: new Image.asset(
                "images/danser.png",
                height: 240.0,
              ),
            ),
            new Card(
              child: new Column(
                children: <Widget>[
                  new ListTile(
                    leading: new Icon(Icons.flash_on, color: Colors.indigo),
                    title: new Text("Eletrical Engineering - DANSER Lab"),
                    subtitle: new Text("Baskin Engineering 2 Room 308"),
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
      "DANSER is the Dynamics, Autonomous Navigation, Surface Engineering and Robotics Lab at University of California, Santa Cruz. Our lab builds structurally compliant robots for applications including exosuits, exoskeletons, manipulators, prosthetics, and rovers. Tensegrity is a design principle that features compression elements suspended within a network of tension elements. his fusion results in a hybrid soft-rigid structure that easily complies with external stresses by distributing loads throughout the entire tension network. This paradigm is particularly useful for developing robots that mimic musculoskeletal kinematics and dynamics. We have chosen to apply these ideas to our own biomechanically oriented projects";
}
