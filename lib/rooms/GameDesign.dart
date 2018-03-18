import 'package:flutter/material.dart';

class GameDesign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.green,
        title: new Text("Game Design Lab"),
      ),
      body: new GameLabBody(),
    );
  }
}

class GameLabBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new ListView(
      children: <Widget>[
        new Column(
          children: <Widget>[
            new Align(
              alignment: Alignment.center,
              child: new Image.asset(
                "images/gamedesign.jpg",
                height: 240.0,
              ),
            ),
            new Card(
              child: new Column(
                children: <Widget>[
                  new ListTile(
                    leading:
                        new Icon(Icons.videogame_asset, color: Colors.green),
                    title: new Text("CS: Game Design - Game Design Lab"),
                    subtitle: new Text("Baskin Engineering 1 Room 368"),
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
      "The Game Lab is among the most distinctive teaching labs at UC Santa Cruz. Here, undergraduate game majors work in teams of 4 to 15 students to create a substantial computer game over their entire senior year. Game Lab games have won awards at game festivals such as IndieCade and the Google Play Indie Games awards, and are publicly released on platforms such as ltch.io, the Apple App Store, and the Google Play Store. The lab features high end computer workstations with VR-capable graphics cards";
}
