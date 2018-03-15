import 'package:flutter/material.dart';
import 'package:bsoe_tour/MapView.dart';

// Helper Enum
enum majorList {
  gradDivision,
  computerScience,
  computerSciencGame,
  computerEngineering,
  eletricalEngineering,
  tim,
  bioEngineering
}

// State that will be utilitzed for the body
final gBodyState = new GlobalKey<SelectionPageBodyState>();

// Main Class
class SelectionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.amber,
        title: new Text("Major Selection"),
      ),
      body: new SelectionPageBody(key: gBodyState),
      floatingActionButton: new SelctionPageFab(),
    );
  }
}

// SelectionPageBody class and state
class SelectionPageBody extends StatefulWidget {
  SelectionPageBody({Key key}) : super(key: key);

  SelectionPageBodyState createState() {
    var state = new SelectionPageBodyState();
    state.onLoad();
    return state;
  }
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
              "\nPlease select your\nmajors and areas of interest:",
              textAlign: TextAlign.center,
              textScaleFactor: 1.5,
            ),
            new CheckboxListTile(
              title: new Text("Graduate Division"),
              activeColor: Colors.amber,
              secondary: const Icon(Icons.school, color: Colors.blueAccent),
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
              secondary:
                  new Icon(Icons.videogame_asset, color: Colors.blueAccent),
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
              title: new Text("Bioengineering"),
              value: boolList[majorList.bioEngineering.index],
              activeColor: Colors.amber,
              secondary:
                  new Icon(Icons.nature_people, color: Colors.blueAccent),
              onChanged: (value) {
                setState(() {
                  boolList[majorList.bioEngineering.index] = value;
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

            // new Text(
            //   "\nTouch the arrow to start the tour!\n",
            //   textAlign: TextAlign.center
            // )
          ],
        )
      ],
    );
  }
}

class SelctionPageFab extends StatefulWidget {
  SelectionPageFabState createState() {
    var state = new SelectionPageFabState();
    state.checkedItems = gBodyState.currentState.boolList;
    return state;
  }
}

class SelectionPageFabState extends State<SelctionPageFab> {
  MaterialColor fabColor = Colors.blueGrey;
  List checkedItems;
  BsoeMap map = new BsoeMap();

  bool isValidSet() {
    for (var i = 0; i < checkedItems.length; i++) {
      if (checkedItems[i] == true) {
        return true;
      }
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return new FloatingActionButton(
        backgroundColor: Colors.blue,
        tooltip: "Start the tour",
        child: new Icon(Icons.map),
        onPressed: () {
          if (isValidSet()) {
            showDialog(
                context: context,
                child: new AlertDialog(
                  title: new Text("Before we start..."),
                  content: new Text(
                      "If you'd like to learn more about a selected point of interest, tap the `Guide` button and if you wish to exit the tour simply hit the `Exit` button\n\n"
                      "If you selected the graduate student points of interest make sure to zoom out until you see both yellow pins!"),
                  actions: <Widget>[
                    new FlatButton(
                      child: new Text("Got it!"),
                      onPressed: () {
                        Navigator.pop(context);
                        map.updateMap(checkedItems);
                        print("Good to go!");
                      },
                    )
                  ],
                ));
          } else {
            print("No good!");
            Scaffold.of(context).showSnackBar(new SnackBar(
                  action: new SnackBarAction(
                    label: "HIDE",
                    onPressed: () => Scaffold.of(context).hideCurrentSnackBar(),
                  ),
                  content: new Text("Please select one or more majors!"),
                ));
          }
        });
  }
}
