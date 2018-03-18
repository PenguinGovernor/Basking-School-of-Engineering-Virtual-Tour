import 'package:flutter/material.dart';

class MesaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.red,
        title: new Text("Mesa Engineering Program"),
      ),
      body: new MesaPageBody(),
    );
  }
}

class MesaPageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new ListView(
      children: <Widget>[
        new Column(
          children: <Widget>[
            new Align(
              alignment: Alignment.center,
              child: new Image.asset(
                "images/mep.jpg",
                height: 240.0,
              ),
            ),
            new Card(
              child: new Column(
                children: <Widget>[
                  new ListTile(
                    leading: new Icon(Icons.account_balance, color: Colors.red),
                    title: new Text("Organazations - Mesa Engineering Program"),
                    subtitle: new Text("Baskin Engineering 1 Room 399"),
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
      "The MESA Engineering Program, also known as the Multicultural Engineering Program at the University of California Santa Cruz campus, is the university level component of the statewide Mathematics, Engineering, Science Achievement (MESA) - a program of the University of California Office of the President."
      "\n\nAt UC Santa Cruz, MEP is supported by the Baskin School of Engineering with its goal to promote diversity and facilitate the retention and graduation of a diverse population of students, especially groups which continue to remain the most underrepresented in engineering studies. The program received the 2004 UC Santa Cruz Excellence Through Diversity Award which is presented to programs or individuals for efforts which promote a diverse and inclusive environment."
      "\n\nThe School of Engineering (SoE) strives to maintain an environment that stimulates excellence in scholarship and service along with a commitment to diversity through the coordinated efforts and services of the Multicultural Engineering Program (MEP). Also known as the MESA Engineering Program, MEP is the university level component of the statewide system Mathematics, Engineering, Science Achievement (MESA) program of the University of California Office of the President."
      "\n\nAt UC Santa Cruz, MEP is an integral part of the Undergraduate Advising Unit–providing advice in academic, career, social and cultural areas for students in the SoE community."
      "MEP provides a variety of academic and personal support services to encourage the academic success and graduation of aspiring engineering students who are first in their family to attend college or first to enroll in computer science or engineering studies, or from family backgrounds of limited financial resources and less educational opportunities. The MEP learning community augments students’ undergraduate experience by engaging their full participation in services and activities which ensure that students gain access and achieve success, and by leveraging a strong support network that encourages their matriculation into graduate school.";
}
