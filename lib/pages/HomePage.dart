import 'package:flutter/material.dart';

class HomePage extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.amber,
        title: new Text("Baskin School of Engineering Virtual Tour"),
      ),
      body: new HomePageBody(),
      floatingActionButton: new HomePageButton(),
    );
  }
}

class HomePageBody extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    const String _info = "\nWe will show you a wide variety of research labs, club activities, and instructional"
    "labs that you may soon become a part of based on what majors you are interested in.\n\n"
     "Click the arrow to get the tour started!";
     
    return new ListView(
      children: <Widget>[
        new Column(
          children: <Widget>[
            new Image.asset(
              "images/cyberslug.png",
              height: 240.0,
            
              ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Expanded(
                  child: new Text(
                    "Welcome to the\nJack Baskin School of Engineering!",
                    textScaleFactor: 1.5,
                    textAlign: TextAlign.center,
                  ),
                )
              ],
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Expanded(
                  child: const Text(
                    _info,
                    textAlign: TextAlign.center,
                    textScaleFactor: 1.0,
                    )
                )
              ],
            )


          ],
        )
      ],
    );
  }
}

class HomePageButton extends StatelessWidget
{
  
  Widget build(BuildContext context)
  {
    return new FloatingActionButton(
      backgroundColor: Colors.blue,
      onPressed: () {
        
      },
      child: new Icon(
        Icons.arrow_forward
      ),

    );
  }
}