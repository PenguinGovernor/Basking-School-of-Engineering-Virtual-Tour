import 'package:flutter/material.dart';
import 'package:bsoe_tour/generic_room.dart';

class LinuxLab extends StatelessWidget {
    final _desc = "BE 105 and BE109 are two of the few 24-hour computer labs on campus. Most Computer Science and Computer Engineering students will spend their time here during lab sections fortheir lower-division Computer Science and Computer Engineering courses. Here students learn how to access the UNIX servers hosted by the School of Engineering so they can access their work remotely. In addition, classes such as robot automation and assembly language are held here.";

  @override
  Widget build(BuildContext context) {
    return new Room(false, "Linux Lab", Colors.orange,"Baskin Engineering 1 Room 105", "Computer Science", _desc, "https://goo.gl/maps/L2YQXCkRijS2", Icons.computer, "images/linuxlab.jpg");
  }
}

class LinuxBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new ListView(
      children: <Widget>[
        new Column(
          children: <Widget>[
            new Align(
              alignment: Alignment.center,
              child: new Image.asset(
                "images/linuxlab.jpg",
                height: 240.0,
              ),
            ),
            new Card(
              child: new Column(
                children: <Widget>[
                  new ListTile(
                    leading: new Icon(Icons.computer, color: Colors.orange),
                    title: new Text("Computer Science - Linux Lab"),
                    subtitle: new Text("Baskin Engineering 1 Room 105"),
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

  final _desc = "BE 105 and BE109 are two of the few 24-hour computer labs on campus. Most Computer Science and Computer Engineering students will spend their time here during lab sections fortheir lower-division Computer Science and Computer Engineering courses. Here students learn how to access the UNIX servers hosted by the School of Engineering so they can access their work remotely. In addition, classes such as robot automation and assembly language are held here.";
}
