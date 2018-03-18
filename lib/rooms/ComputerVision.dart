import 'package:flutter/material.dart';

class ComputerVision extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(backgroundColor: Colors.orange, title: new Text("Computer Vision Lab"),),
      body: new VisionBody(),
    );
  }
}

class VisionBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new ListView(
      children: <Widget>[
        new Column(
          children: <Widget>[
            new Align(
              alignment: Alignment.center,
              child: new Image.asset(
                "images/computervision.jpg",
                height: 240.0,
              ),
            ),
            new Card(
              child: new Column(
                children: <Widget>[
                  new ListTile(
                    leading: new Icon(Icons.computer, color: Colors.orange),
                    title: new Text("Computer Science - Computer Vision Lab"),
                    subtitle: new Text("Baskin Engineering 2 Room 209"),
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

  final _desc = "We do research on different aspects of computer vision, sensor signal processing, and human-machine interface. Most of our projects are guided by applications in assistive technology for people who are blind or have a visual impairment. The laboratory, formed in 2001 by R. Manduchi and H. Tao, is part of the Department of Computer Engineeringat UC Santa Cruz. Our research is or has been supported by grants from NSF NIH"; 

}
