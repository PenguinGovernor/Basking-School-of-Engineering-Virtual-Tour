import 'package:flutter/material.dart';
import 'package:bsoe_tour/MapView.dart';

enum majorList {
  gradDivision,
  computerScience,
  computerSciencGame,
  computerEngineering,
  eletricalEngineering,
  tim,
  bioEngineering,
  orgs
}

List<bool> selectedMajors = new List<bool>(majorList.values.length);

class SelectionPage extends StatefulWidget {
  @override
  _SelectionPageState createState() => new _SelectionPageState();
}

class _SelectionPageState extends State<SelectionPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Major Directory"),
        backgroundColor: Colors.amber,
      ),
      body: new SelectionPageBody(),
      floatingActionButton: new Fab(),
    );
  }
}

class Fab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new FloatingActionButton(
      child: new Icon(Icons.map, color: Colors.white),
      onPressed: () {
        var map = new BsoeMap();
        map.updateMap(selectedMajors);
      },
    );
  }
}

class SelectionPageBody extends StatefulWidget {
  @override
  _SelectionPageBodyState createState() {
    var a = new _SelectionPageBodyState();
    a.initList();
    return a;
  }
}

class _SelectionPageBodyState extends State<SelectionPageBody> {
  initList() {
    for (int i = 0; i < majorList.values.length; i++) {
      selectedMajors[i] = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return new ListView(
      children: <Widget>[
        new Text(
          "\nSelect a point of interest to learn more about BSOE Labs and Facilities\nPress the map icon to display an interactive map along with any sections you have selected\n\n",
          textAlign: TextAlign.center,
          textScaleFactor: 1.2,
          style: new TextStyle(
               fontStyle: FontStyle.italic),
        ),

        // Organazations
        new Container(
          alignment: Alignment.centerLeft,
          child: new Card(
            child: new Column(
              children: <Widget>[
                new ListTile(
                  title: new Text("Organazations"),
                  leading: new Icon(
                    Icons.account_balance,
                    color: Colors.red,
                  ),
                ),
                new Align(
                  alignment: Alignment.topLeft,
                  child: new RaisedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/MesaPage");
                    },
                    color: Colors.redAccent,
                    child: new Text(
                      "MESA Engineering Program",
                      style: new TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                new Padding(
                  padding: new EdgeInsets.all(1.0),
                ),
                new CheckboxListTile(
                  title: new Text("Show rooms on map?"),
                  value: selectedMajors[majorList.orgs.index],
                  activeColor: Colors.red,
                  onChanged: (bool state) {
                    setState(() {
                      selectedMajors[majorList.orgs.index] = state;
                    });
                  },
                )
              ],
            ),
          ),
        ),
        new Padding(padding: new EdgeInsets.all(1.0)),

        // Computer Science
        new Container(
          alignment: Alignment.centerLeft,
          child: new Card(
            child: new Column(
              children: <Widget>[
                new ListTile(
                  title: new Text("Computer Science"),
                  leading: new Icon(
                    Icons.computer,
                    color: Colors.orange,
                  ),
                ),
                new Align(
                  alignment: Alignment.topLeft,
                  child: new RaisedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/LinuxLab");
                    },
                    color: Colors.orangeAccent,
                    child: new Text(
                      "Linux Lab",
                      style: new TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                new Padding(
                  padding: new EdgeInsets.all(1.0),
                ),
                new Align(
                  alignment: Alignment.topLeft,
                  child: new RaisedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/ComputerVision");
                    },
                    color: Colors.orangeAccent,
                    child: new Text(
                      "Computer Vision Lab",
                      style: new TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                new Padding(
                  padding: new EdgeInsets.all(1.0),
                ),
                new CheckboxListTile(
                  title: new Text("Show rooms on map?"),
                  value: selectedMajors[majorList.computerScience.index],
                  activeColor: Colors.orange,
                  onChanged: (bool state) {
                    setState(() {
                      selectedMajors[majorList.computerScience.index] = state;
                    });
                  },
                )
              ],
            ),
          ),
        ),

        new Padding(padding: new EdgeInsets.all(1.0)),
        // CS: GD
        new Container(
          alignment: Alignment.centerLeft,
          child: new Card(
            child: new Column(
              children: <Widget>[
                new ListTile(
                  title: new Text("Computer Science: Game Design"),
                  leading: new Icon(
                    Icons.videogame_asset,
                    color: Colors.green,
                  ),
                ),
                new Align(
                  alignment: Alignment.topLeft,
                  child: new RaisedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/GameDesign");
                    },
                    color: Colors.green,
                    child: new Text(
                      "Game Design Lab",
                      style: new TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                new Padding(
                  padding: new EdgeInsets.all(1.0),
                ),
                new CheckboxListTile(
                  title: new Text("Show rooms on map?"),
                  value: selectedMajors[majorList.computerSciencGame.index],
                  activeColor: Colors.green,
                  onChanged: (bool state) {
                    setState(() {
                      selectedMajors[majorList.computerSciencGame.index] =
                          state;
                    });
                  },
                )
              ],
            ),
          ),
        ),
        new Padding(padding: new EdgeInsets.all(1.0)),
        // Computer Engineering
        new Container(
          alignment: Alignment.centerLeft,
          child: new Card(
            child: new Column(
              children: <Widget>[
                new ListTile(
                  title: new Text("Computer Engineering"),
                  leading: new Icon(
                    Icons.computer,
                    color: Colors.blue,
                  ),
                ),
                new Align(
                  alignment: Alignment.topLeft,
                  child: new RaisedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/MechLab");
                    },
                    color: Colors.blueAccent,
                    child: new Text(
                      "Mechatronics Lab",
                      style: new TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                new Padding(
                  padding: new EdgeInsets.all(1.0),
                ),
                new Align(
                  alignment: Alignment.topLeft,
                  child: new RaisedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/ComputerNetworks");
                    },
                    color: Colors.blueAccent,
                    child: new Text(
                      "Computer Networks Lab",
                      style: new TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                new Padding(
                  padding: new EdgeInsets.all(1.0),
                ),
                new CheckboxListTile(
                  title: new Text("Show rooms on map?"),
                  value: selectedMajors[majorList.computerEngineering.index],
                  activeColor: Colors.blue,
                  onChanged: (bool state) {
                    setState(() {
                      selectedMajors[majorList.computerEngineering.index] =
                          state;
                    });
                  },
                )
              ],
            ),
          ),
        ),

        new Padding(padding: new EdgeInsets.all(1.0)),

        // Eltrical Engineering
        new Container(
          alignment: Alignment.centerLeft,
          child: new Card(
            child: new Column(
              children: <Widget>[
                new ListTile(
                  title: new Text("Electrical Engineering"),
                  leading: new Icon(
                    Icons.flash_on,
                    color: Colors.indigo,
                  ),
                ),
                new Align(
                  alignment: Alignment.topLeft,
                  child: new RaisedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/EE101");
                    },
                    color: Colors.indigo,
                    child: new Text(
                      "EE 101 Lab",
                      style: new TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                new Padding(
                  padding: new EdgeInsets.all(1.0),
                ),
                new Align(
                  alignment: Alignment.topLeft,
                  child: new RaisedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/DANSER");
                    },
                    color: Colors.indigo,
                    child: new Text(
                      "DANSER Lab",
                      style: new TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                new Padding(
                  padding: new EdgeInsets.all(1.0),
                ),
                new Align(
                  alignment: Alignment.topLeft,
                  child: new RaisedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/AOL");
                    },
                    color: Colors.indigo,
                    child: new Text(
                      "Applied Optics Lab",
                      style: new TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                new Padding(
                  padding: new EdgeInsets.all(1.0),
                ),
                new CheckboxListTile(
                  title: new Text("Show rooms on map?"),
                  value: selectedMajors[majorList.eletricalEngineering.index],
                  activeColor: Colors.indigo,
                  onChanged: (bool state) {
                    setState(() {
                      selectedMajors[majorList.eletricalEngineering.index] =
                          state;
                    });
                  },
                )
              ],
            ),
          ),
        ),

        // Bio Engineering
        new Container(
          alignment: Alignment.centerLeft,
          child: new Card(
            child: new Column(
              children: <Widget>[
                new ListTile(
                  title: new Text("Bioengineering"),
                  leading: new Icon(
                    Icons.nature_people,
                    color: Colors.purple,
                  ),
                ),
                new Align(
                  alignment: Alignment.topLeft,
                  child: new RaisedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/Nanopore");
                    },
                    color: Colors.purple,
                    child: new Text(
                      "Nanopore Lab",
                      style: new TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                new Padding(
                  padding: new EdgeInsets.all(1.0),
                ),
                new Align(
                  alignment: Alignment.topLeft,
                  child: new RaisedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/CompGenLab");
                    },
                    color: Colors.purple,
                    child: new Text(
                      "Computational Genomics Lab",
                      style: new TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                new Padding(
                  padding: new EdgeInsets.all(1.0),
                ),
                new Align(
                  alignment: Alignment.topLeft,
                  child: new RaisedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/HGI");
                    },
                    color: Colors.purple,
                    child: new Text(
                      "Human Genomics Institute",
                      style: new TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                new Padding(
                  padding: new EdgeInsets.all(1.0),
                ),
                new CheckboxListTile(
                  title: new Text("Show rooms on map?"),
                  value: selectedMajors[majorList.bioEngineering.index],
                  activeColor: Colors.purple,
                  onChanged: (bool state) {
                    setState(() {
                      selectedMajors[majorList.bioEngineering.index] = state;
                    });
                  },
                )
              ],
            ),
          ),
        ),

        new Padding(padding: new EdgeInsets.all(1.0)),
        // Graduate
        new Container(
          alignment: Alignment.centerLeft,
          child: new Card(
            child: new Column(
              children: <Widget>[
                new ListTile(
                  title: new Text("Graduate Division"),
                  subtitle:
                      new Text("You may have to zoom out to see these pins"),
                  leading: new Icon(
                    Icons.school,
                    color: Colors.deepPurple,
                  ),
                ),
                new Align(
                  alignment: Alignment.topLeft,
                  child: new RaisedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/GraduateHousing");
                    },
                    color: Colors.deepPurple,
                    child: new Text(
                      "Graduate Student Housing",
                      style: new TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                new Padding(
                  padding: new EdgeInsets.all(1.0),
                ),
                new Align(
                  alignment: Alignment.topLeft,
                  child: new RaisedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/GraduateAdvising");
                    },
                    color: Colors.deepPurple,
                    child: new Text(
                      "Graduate Advising Office",
                      style: new TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                new Padding(
                  padding: new EdgeInsets.all(1.0),
                ),
                new CheckboxListTile(
                  title: new Text("Show rooms on map?"),
                  value: selectedMajors[majorList.gradDivision.index],
                  activeColor: Colors.deepPurple,
                  onChanged: (bool state) {
                    setState(() {
                      selectedMajors[majorList.gradDivision.index] = state;
                    });
                  },
                )
              ],
            ),
          ),
        ),

        new Padding(padding: new EdgeInsets.all(1.0)),
        // tim
        new Container(
          alignment: Alignment.centerLeft,
          child: new Card(
            child: new Column(
              children: <Widget>[
                new ListTile(
                  title: new Text("Technology Information Management"),
                  subtitle: new Text("This section contains no rooms"),
                  leading: new Icon(
                    Icons.work,
                    color: Colors.teal,
                  ),
                ),
                new Padding(
                  padding: new EdgeInsets.all(1.0),
                ),
                new CheckboxListTile(
                  title: new Text("Show rooms on map?"),
                  value: selectedMajors[majorList.tim.index],
                  activeColor: Colors.teal,
                  onChanged: (bool state) {
                    setState(() {
                      selectedMajors[majorList.tim.index] = state;
                    });
                  },
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
