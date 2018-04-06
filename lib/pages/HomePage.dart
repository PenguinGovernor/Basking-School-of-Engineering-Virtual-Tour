import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class HomePage extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.amber,
        title: new Text("BSOE Slug Tour"),
      ),
      body: new HomePageBody()
    );
  }
}

class HomePageBody extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    const String _info = "\nWe will show you a wide variety of research labs, club activities, and instructional\n"
    "labs.\n\n";

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
                    "Welcome to the\nJack Baskin School of Engineering\nUC Santa Cruz!",
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
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new CupertinoButton(
                  child: new Text("CLICK TO START"),
                  color: CupertinoColors.activeBlue,
                  onPressed: () {
                    Navigator.of(context).pushNamed("/SelectionPage");
                  }
                )
              ],
            )


          ],
        )
      ],
    );
  }
}

