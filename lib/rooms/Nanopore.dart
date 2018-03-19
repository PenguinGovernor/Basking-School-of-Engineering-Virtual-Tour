import 'package:flutter/material.dart';

class Nanopore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          backgroundColor: Colors.purple,
          title: new Text("Nanopore Lab"),
        ),
        body: new NanoBody());
  }
}

class NanoBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new ListView(
      children: <Widget>[
        new Column(
          children: <Widget>[
            new Align(
              alignment: Alignment.center,
              child: new Image.asset(
                "images/nanopore.jpg",
                height: 240.0,
              ),
            ),
            new Card(
              child: new Column(
                children: <Widget>[
                  new ListTile(
                    leading:
                        new Icon(Icons.nature_people, color: Colors.purple),
                    title: new Text("Bioengineering - Nanopore Lab"),
                    subtitle: new Text("Baskin Engineering 1 Room 217"),
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
      "The Nanopore project at UC Santa Cruz has pioneered the use of ion channels for the analysis of single RNAand DNA molecules. Nanopore technology makes it possible to measure DNA structure and dynamics with precision at the angstrom level. Thus, it is possible to rapidly discriminate between nearly identical strands of DNA and investigate their physical properties. Nanopore technology is well suited to analysis of the terminal ends of double-stranded DNA, and it is amenable to high throughputexperiments. In the future, it may be possible to develop a durable solid-state or protein-based nanopore device that would allow the measurement of several different genomic factors from one cell without amplification: Gene expression Single-nucleotide polymorphisms (SNPs), common, minute variations in genes that can be used to track familial inheritance Point mutations in single or DNA molecules Using machine learning tools developed at UCSC, each molecule could be identified in real time and in less than 50 milliseconds Such a device would have broad clinical utility in diagnosing inherited traits such as hearing disorders and drugsensitivity and in tracking disease progression at the level of single cells.";
}
