import 'package:flutter/material.dart';
import 'package:bsoe_tour/MapView.dart';
import 'package:flutter/cupertino.dart';
import 'package:bsoe_tour/generic_button.dart';

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
          "\nSelect a point of interest to learn more about BSOE labs and facilities.\nPress the map icon to display an interactive map along with any sections you have selected.\n\n",
          textAlign: TextAlign.center,
          textScaleFactor: 1.2,
          style: new TextStyle(fontStyle: FontStyle.italic),
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
                    child: new SlugButton(
                      buttonColor: Colors.red,
                      text: "MESA Engineering Program",
                      routeName: "/MesaPage",
                    )),
                new Padding(
                  padding: new EdgeInsets.all(1.0),
                ),
                new MergeSemantics(
                  child: new ListTile(
                    title: new Text("Show rooms on map?"),
                    trailing: new CupertinoSwitch(
                      value: selectedMajors[majorList.orgs.index],
                      activeColor: Colors.red,
                      onChanged: (bool state) {
                        setState(() {
                          selectedMajors[majorList.orgs.index] = state;
                        });
                      },
                    ),
                  ),
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
                    child: new SlugButton(
                      routeName: "/LinuxLab",
                      buttonColor: Colors.orange,
                      text: "Linux Lab",
                    )),
                new Padding(
                  padding: new EdgeInsets.all(1.0),
                ),
                new Align(
                    alignment: Alignment.topLeft,
                    child: new SlugButton(
                      routeName: "/ComputerVision",
                      text: "Computer Vision Lab",
                      buttonColor: Colors.orange,
                    )),
                new Padding(
                  padding: new EdgeInsets.all(1.0),
                ),
                new MergeSemantics(
                  child: new ListTile(
                    title: new Text("Show rooms on map?"),
                    trailing: new CupertinoSwitch(
                      value: selectedMajors[majorList.computerScience.index],
                      activeColor: Colors.orange,
                      onChanged: (bool state) {
                        setState(() {
                          selectedMajors[majorList.computerScience.index] =
                              state;
                        });
                      },
                    ),
                  ),
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
                    child: new SlugButton(
                      text: "Game Design Lab",
                      routeName: "/GameDesign",
                      buttonColor: Colors.green,
                    )),
                new Padding(
                  padding: new EdgeInsets.all(1.0),
                ),
                new MergeSemantics(
                  child: new ListTile(
                    title: new Text("Show rooms on map?"),
                    trailing: new CupertinoSwitch(
                      value: selectedMajors[majorList.computerSciencGame.index],
                      activeColor: Colors.green,
                      onChanged: (bool state) {
                        setState(() {
                          selectedMajors[majorList.computerSciencGame.index] =
                              state;
                        });
                      },
                    ),
                  ),
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
                    child: new SlugButton(
                      routeName: "/MechLab",
                      buttonColor: Colors.blueAccent,
                      text: "Mechatronics Lab",
                    )),
                new Padding(
                  padding: new EdgeInsets.all(1.0),
                ),
                new Align(
                    alignment: Alignment.topLeft,
                    child: new SlugButton(
                      routeName: "/ComputerNetworks",
                      buttonColor: Colors.blueAccent,
                      text: "Computer Networks Lab",
                    )),
                new Padding(
                  padding: new EdgeInsets.all(1.0),
                ),
                new MergeSemantics(
                  child: new ListTile(
                    title: new Text("Show rooms on map?"),
                    trailing: new CupertinoSwitch(
                      value:
                          selectedMajors[majorList.computerEngineering.index],
                      activeColor: Colors.blue,
                      onChanged: (bool state) {
                        setState(() {
                          selectedMajors[majorList.computerEngineering.index] =
                              state;
                        });
                      },
                    ),
                  ),
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
                    child: new SlugButton(
                      routeName: "/EE101",
                      buttonColor: Colors.indigo,
                      text: "EE 101 Lab",
                    )),
                new Padding(
                  padding: new EdgeInsets.all(1.0),
                ),
                new Align(
                    alignment: Alignment.topLeft,
                    child: new SlugButton(
                      routeName: "/DANSER",
                      buttonColor: Colors.indigo,
                      text: "DANSER Lab",
                    )),
                new Padding(
                  padding: new EdgeInsets.all(1.0),
                ),
                new Align(
                    alignment: Alignment.topLeft,
                    child: new SlugButton(
                      routeName: "/AOL",
                      buttonColor: Colors.indigo,
                      text: "Applied Optics Lab",
                    )),
                new Padding(
                  padding: new EdgeInsets.all(1.0),
                ),
                new MergeSemantics(
                  child: new ListTile(
                    title: new Text("Show rooms on map?"),
                    trailing: new CupertinoSwitch(
                      value:
                          selectedMajors[majorList.eletricalEngineering.index],
                      activeColor: Colors.indigo,
                      onChanged: (bool state) {
                        setState(() {
                          selectedMajors[majorList.eletricalEngineering.index] =
                              state;
                        });
                      },
                    ),
                  ),
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
                  child: new SlugButton(
                    routeName: "/Nanopore",
                    buttonColor: Colors.purple,
                    text: "Nanopore Lab",
                  ),
                ),
                new Padding(
                  padding: new EdgeInsets.all(1.0),
                ),
                new Align(
                    alignment: Alignment.topLeft,
                    child: new SlugButton(
                      routeName: "/CompGenLab",
                      buttonColor: Colors.purple,
                      text: "Computational Genomics Lab",
                    )),
                new Padding(
                  padding: new EdgeInsets.all(1.0),
                ),
                new Align(
                    alignment: Alignment.topLeft,
                    child: new SlugButton(
                      routeName: "/HGI",
                      buttonColor: Colors.purple,
                      text: "Human Genomics Institute",
                    )),
                new Padding(
                  padding: new EdgeInsets.all(1.0),
                ),
                new MergeSemantics(
                  child: new ListTile(
                    title: new Text("Show rooms on map?"),
                    trailing: new CupertinoSwitch(
                      value: selectedMajors[majorList.bioEngineering.index],
                      activeColor: Colors.purple,
                      onChanged: (bool state) {
                        setState(() {
                          selectedMajors[majorList.bioEngineering.index] =
                              state;
                        });
                      },
                    ),
                  ),
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
                    child: new SlugButton(
                      routeName: "/GraduateHousing",
                      buttonColor: Colors.deepPurple,
                      text: "Graduate Student Housing",
                    )),
                new Padding(
                  padding: new EdgeInsets.all(1.0),
                ),
                new Align(
                    alignment: Alignment.topLeft,
                    child: new SlugButton(
                      routeName: "/GraduateAdvising",
                      buttonColor: Colors.deepPurple,
                      text: "Graduate Advising Office",
                    )),
                new Padding(
                  padding: new EdgeInsets.all(1.0),
                ),
                new MergeSemantics(
                  child: new ListTile(
                    title: new Text("Show rooms on map?"),
                    trailing: new CupertinoSwitch(
                      value: selectedMajors[majorList.gradDivision.index],
                      activeColor: Colors.deepPurple,
                      onChanged: (bool state) {
                        setState(() {
                          selectedMajors[majorList.gradDivision.index] = state;
                        });
                      },
                    ),
                  ),
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
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
