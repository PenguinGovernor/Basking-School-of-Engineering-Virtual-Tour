import 'package:flutter/material.dart';

class SelectionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.amber,
        title: new Text("Major Selection"),
      ),
      body: new SelectionPageBody(),
    );
  }
}

class SelectionPageBody extends StatefulWidget {
  SelectionPageBodyState createState() {
    var state = new SelectionPageBodyState();
    state.onLoad();
    return state;
  }

  // SelectionPageBodyState createState() => new SelectionPageBodyState();
}

enum majorList {
  gradDivision,
  computerScience,
  computerSciencGame,
  computerEngineering,
  eletricalEngineering,
  tim,
  bioEngineering
}

class SelectionPageBodyState extends State<SelectionPageBody> {
  var boolList = new List(majorList.values.length);

  void onLoad() {
    for (var i = 0; i < majorList.values.length; i++) {
      boolList[i] = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return new ListView(
      children: <Widget>[
        new Column(
          children: <Widget>[
            const Text(
              "Please select your\nmajors and areas of interest:",
              textAlign: TextAlign.center,
              textScaleFactor: 1.5,
            ),
            new CheckboxListTile(
              title: new Text("Graduate Division"),
              activeColor: Colors.amber,
              secondary: const Icon(Icons.school,color: Colors.blueAccent),
              value: boolList[majorList.gradDivision.index],
              onChanged: (value) {
                setState(() {
                  boolList[majorList.gradDivision.index] = value;
                });
              },
            ),
            new CheckboxListTile(
              title: new Text("Computer Science"),
              value: boolList[majorList.computerScience.index],
              activeColor: Colors.amber,
              secondary: new Icon(Icons.computer, color: Colors.blueAccent),
              onChanged: (value) {
                setState(() {
                  boolList[majorList.computerScience.index] = value;
                });
              },
            ),
            new CheckboxListTile(
              title: new Text("CS: Game Design"),
              value: boolList[majorList.computerSciencGame.index],
              activeColor: Colors.amber,
              secondary: new Icon(Icons.videogame_asset, color: Colors.blueAccent),
              onChanged: (value) {
                setState(() {
                  boolList[majorList.computerSciencGame.index] = value;
                });
              },
            ),
            new CheckboxListTile(
              title: new Text("Computer Engineering"),
              value: boolList[majorList.computerEngineering.index],
              activeColor: Colors.amber,
              secondary: new Icon(Icons.computer, color: Colors.blueAccent),
              onChanged: (value) {
                setState(() {
                  boolList[majorList.computerEngineering.index] = value;
                });
              },
            ),
            new CheckboxListTile(
              title: new Text("Eletrical Engineering"),
              value: boolList[majorList.eletricalEngineering.index],
              activeColor: Colors.amber,
              secondary: new Icon(Icons.flash_on, color: Colors.blueAccent),
              onChanged: (value) {
                setState(() {
                  boolList[majorList.eletricalEngineering.index] = value;
                });
              },
            ),
            new CheckboxListTile(
              title: new Text("Technology Information Management"),
              value: boolList[majorList.tim.index],
              activeColor: Colors.amber,
              secondary: new Icon(Icons.work, color: Colors.blueAccent),
              onChanged: (value) {
                setState(() {
                  boolList[majorList.tim.index] = value;
                });
              },
            ),
          ],
        )
      ],
    );
  }
}
