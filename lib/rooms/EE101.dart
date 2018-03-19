import 'package:flutter/material.dart';

class EE101 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.indigo,
        title: new Text("Eletrical Engineering 101 Lab"),
      ),
      body: new EE101Body(),
    );
  }
}

class EE101Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new ListView(
      children: <Widget>[
        new Column(
          children: <Widget>[
            new Align(
              alignment: Alignment.center,
              child: new Image.asset(
                "images/ee101.jpg",
                height: 240.0,
              ),
            ),
            new Card(
              child: new Column(
                children: <Widget>[
                  new ListTile(
                    leading: new Icon(Icons.flash_on, color: Colors.indigo),
                    title: new Text("Eletrical Engineering - EE 101 Lab"),
                    subtitle: new Text("Baskin Engineering 1 Room 150"),
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
      "The circuits lab (Baskin 150) is used for beginning instruction in analog electronics, both for EE 101/L(Circuits) and BME 51AB (Applied Electronics for Bioengineers). The class shown here is one section of BME51A, doing their first amplifier lab: building an instrumentation amplifier for a pressure sensor for measuring air pressure in a blood-pressure Cuff. All the bioengineering concentrations are required to complete BME 51 as it provides a relatively quick way to gain practical engineering design experience and to understand the basics of interfacing biological systems to computers.";
}
