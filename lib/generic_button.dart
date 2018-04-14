import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SlugButton extends StatelessWidget {
  final Color buttonColor;
  final String text;
  final String routeName;

  SlugButton({this.buttonColor, this.text, this.routeName});

  @override
  Widget build(BuildContext context) {
    if (Theme.of(context).platform == TargetPlatform.iOS) {
      return new CupertinoButton(
        onPressed: () {
          Navigator.pushNamed(context, this.routeName);
        },
        color: this.buttonColor,
        child: new Text(
          this.text,
          style: new TextStyle(color: Colors.white),
        ),
      );
    }

    return new RaisedButton(
      onPressed: () {
        Navigator.pushNamed(context, this.routeName);
      },
      color: this.buttonColor,
      child: new Text(
        this.text,
        style: new TextStyle(color: Colors.white),
      ),
    );
  }
}
