import 'package:flutter/material.dart';

class GraduateHousing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.deepPurple,
        title: new Text("Graduate Student Housing"),
      ),
      body: new GHousingBody(),
    );
  }
}

class GHousingBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new ListView(
      children: <Widget>[
        new Column(
          children: <Widget>[
            new Align(
              alignment: Alignment.center,
              child: new Image.asset(
                "images/graduatehousing.jpg",
                height: 240.0,
              ),
            ),
            new Card(
              child: new Column(
                children: <Widget>[
                  new ListTile(
                    leading:
                        new Icon(Icons.school, color: Colors.deepPurple),
                    title: new Text(
                        "Graduate Division - Graduate Student Housing"),
                    subtitle: new Text("Redwood Grove"),
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
  "Graduate Student Housing is an intimate community housing just 82 students, and is home to a diverse group, including students from all over the United States and the world. The apartments are set in a beautifully landscaped natural environment conveniently located adjacent to Science Hill, home to many of UCSC's main academic facilities. Each apartment has four single bedrooms, living room, kitchen, dining room, and bathroom. Ground floor apartments have decks, while upper apartments have private balconies.";
}
