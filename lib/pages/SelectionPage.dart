import 'package:flutter/material.dart';
import 'package:map_view/map_view.dart';

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
  var mapView = new MapView();

  bool isValidSet() {
    for (var i = 0; i < checkedItems.length; i++) {
      if (checkedItems[i] == true) {
        return true;
      }
    }
    return false;
  }

  void setMarkers(List items) {
    mapView.onMapReady.listen((_) {
      // Always set Mesa
      mapView.addMarker(
        new Marker("mesa", "MESA Engineering Program", 37.000258, -122.062930,
            color: Colors.red),
      );

      // If computer engineering
      if (items[majorList.computerEngineering.index]) {
        mapView.addMarker(new Marker(
            "mech", "Mechatronics Lab", 37.000189, -122.063545,
            color: Colors.orange));
        mapView.addMarker(new Marker(
            "cnl", "Computer Networks Lab", 37.000271, -122.063057,
            color: Colors.orange));
      }

      // If computer science
      if (items[majorList.computerScience.index]) {
        mapView.addMarker(new Marker("ll", "Linux Lab", 37.0002225, -122.063148,
            color: Colors.green));

        mapView.addMarker(new Marker(
            "cvl", "Computer Vision Lab", 37.000888, -122.063382,
            color: Colors.green));
      }

      // If cs gd
      if (items[majorList.computerSciencGame.index]) {
        mapView.addMarker(
            new Marker("gdl", "Game Design Lab", 37.000419, -122.062715, color: Colors.deepPurple));
      }

    // If ee 
    if(items[majorList.eletricalEngineering.index]) {
      mapView.addMarker(
        new Marker("dl", "DANSER Lab", 37.000929, -122.063308, color: Colors.blue)
      );
      mapView.addMarker(
        new Marker("ee101", "Eletrical Engineering 101 Lab", 37.000358, -122.063413, color: Colors.blue)
      );
      mapView.addMarker(
        new Marker("aol", "Applied Optics Lab", 37.000495, -122.062870, color: Colors.blue)
      );
    }

    });
  }

  void showMap() {
    // Show the map
    mapView.show(
        new MapOptions(
            mapViewType: MapViewType.normal,
            showUserLocation: true,
            initialCameraPosition: new CameraPosition(
                new Location(37.000369, -122.06323709999998), 18.5),
            title: "Virtual Tour"),
        toolbarActions: [new ToolbarAction("Close", 1)]);

    // Set the markers
    setMarkers(checkedItems);

    // Close when the button is closed
    mapView.onToolbarAction.listen((id) {
      if (id == 1) {
        mapView.dismiss();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return new FloatingActionButton(
        backgroundColor: Colors.blue,
        tooltip: "Start the tour",
        child: new Icon(Icons.arrow_forward),
        onPressed: () {
          if (isValidSet()) {
            print("Good to go!");
            showMap();
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
