import 'package:flutter/material.dart';

class AOL extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.indigo,
        title: new Text("Applied Optics Lab"),
      ),
      body: new AOLBody(),
    );
  }
}

class AOLBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new ListView(
      children: <Widget>[
        new Column(
          children: <Widget>[
            new Align(
              alignment: Alignment.center,
              child: new Image.asset(
                "images/baskin.jpg",
                height: 240.0,
              ),
            ),
            new Card(
              child: new Column(
                children: <Widget>[
                  new ListTile(
                    leading: new Icon(Icons.flash_on, color: Colors.indigo),
                    title:
                        new Text("Eletrical Engineering - Applied Optics Lab"),
                    subtitle: new Text("Baskin Engineering 1 Room 268"),
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
      "The main research theme in our group is single particle optics. We develop new, highly sensitive methods to study single particles with optical methods. We use these and other established techniques to gain new understanding of these particles and light-matter interactions in general. Due to the versatility of optical methods, we can investigate different types of particles. Our current focus areas are: single biomolecules (Integrated Optofluidics), single nanomagnets (Nano-magneto-optics, and single photons (Atomic spectroscopy on a chip). We are affiliated with the California Institute for Quantitative Biomedical Research (QB3), the Center for Biomolecular Science and Engineering (CBSE), and the Storage Systems Research Center (SSRC). Professor Schmidt directs the WM. Keck Center for Nanoscale Optofluidics, whose mission is to incorporate nanoscale features in optofluidic devices to enable new studies of bioparticles and biological processes.";
}
