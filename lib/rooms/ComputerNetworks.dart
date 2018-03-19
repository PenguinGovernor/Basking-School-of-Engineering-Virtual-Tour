import 'package:flutter/material.dart';

class ComputerNetworks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.blue,
        title: new Text("Computer Networks Lab"),
      ),
      body: new CompNetBody(),
    );
  }
}

class CompNetBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new ListView(
      children: <Widget>[
        new Column(
          children: <Widget>[
            new Align(
              alignment: Alignment.center,
              child: new Image.asset(
                "images/compnet.jpg",
                height: 240.0,
              ),
            ),
            new Card(
              child: new Column(
                children: <Widget>[
                  new ListTile(
                    leading: new Icon(Icons.computer, color: Colors.blue),
                    title: new Text(
                        "Computer Engineering - Computer Networks Lab"),
                    subtitle: new Text("Baskin Engineering 1 Room 301A"),
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
      "BE301A Computer Networks Lab: This lab is used by the University's Computer Networking and Electrical Engineering courses. Students in these courses receive hands-on experience with real-world networking equipment and concepts to prepare them for careers as network engineers. They use software such as Wireshark to observe packets as they travel through a computer network to understand how communication between routers, switches, and computers occurs on Local Area Networks as well as the Internet. Additionally, students are introduced to emerging concepts, such as Software Defined Networking, to prepare them for the Internet of the future.";
}
