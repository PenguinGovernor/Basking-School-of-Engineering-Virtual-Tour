import 'package:flutter/material.dart';

class CompGenLab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.purple,
        title: new Text("Computational Genomics Lab"),
      ),
      body: new CompGenBody(),
    );
  }
}

class CompGenBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new ListView(
      children: <Widget>[
        new Column(
          children: <Widget>[
            new Align(
              alignment: Alignment.center,
              child: new Image.asset(
                "images/compgen.jpg",
                height: 240.0,
              ),
            ),
            new Card(
              child: new Column(
                children: <Widget>[
                  new ListTile(
                    leading:
                        new Icon(Icons.nature_people, color: Colors.purple),
                    title: new Text(
                        "Bioengineering - Computational Genomics Lab"),
                    subtitle: new Text("Baskin Engineering 2 Room 507"),
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
  "Our research is currently focused on : Building technology to connect the institutional silos where genome information is now isolated by forging and implementing interoperable standards. We are proud members of the Global Alliance for Genomics and Health, comparing the history of vertebrate genomes.\n\nWant to reconstruct a 65-million-year-old genome from the genomes of its descendants?\nTalk to us! We love the Genome 10K, a project to sequence 10, 000 vertebrate genomes using next-next generation sequencing technology to create more complete, accurate and phased genomes and making it easy to discover and share portable, reproducible, and scalable genomic workflows. We analyze massive genomic datasets using the cloud and build a human reference genome structure that contains all common variation as a universal basis for genomics. We are also completing the library of human and mouse RNAs.";
}
