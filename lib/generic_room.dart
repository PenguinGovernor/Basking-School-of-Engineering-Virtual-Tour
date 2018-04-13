import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:share/share.dart';

class Room extends StatelessWidget {
  final bool isAndroid;
  final String roomName;
  final Color color;
  final IconData icon;
  final String gmapLink;
  final String category;
  final String roomNumber;
  final String desc;
  final String image;

  Room(
      {this.isAndroid,
      this.roomName,
      this.color,
      this.roomNumber,
      this.category,
      this.desc,
      this.gmapLink,
      this.icon,
      this.image});

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: color,
        title: new Text(roomName),
        actions: <Widget>[
          new IconButton(
            icon: isAndroid
                ? new Icon(
                    Icons.share,
                    color: Colors.white,
                  )
                : new Icon(CupertinoIcons.share, color: Colors.white),
            color: Colors.white,
            onPressed: () {
              Share.share("Checkout the $roomName on Google Maps!\n$gmapLink");
            },
          )
        ],
      ),
      body: new ListView(
        children: <Widget>[
          new Image.asset(
            '$image',
            height: 250.0,
          ),
          new ListTile(
            leading: new Icon(
              icon,
              color: color,
            ),
            title: new Text("$category"),
            subtitle: new Text("$roomNumber"),
          ),
          new Container(
              padding: new EdgeInsets.all(10.0),
              child: new Column(
                children: <Widget>[
                  new Text(
                    "$desc",
                  )
                ],
              ))
        ],
      ),
    );
  }
}
