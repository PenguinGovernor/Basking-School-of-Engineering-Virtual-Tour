import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:share/share.dart';

class Room extends StatelessWidget {
  final bool _isAndroid;
  final String _roomName;
  final Color _color;
  final IconData _icon;
  final String _gmapLink;
  final String _category;
  final String _roomNumber;
  final String _desc;
  final String _image;
  
  
  Room(this._isAndroid,this._roomName,this._color,this._roomNumber,this._category,this._desc,this._gmapLink,this._icon,this._image);


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: _color,
        title: new Text(_roomName),
        actions: <Widget>[
          new IconButton(
            icon: _isAndroid ? new Icon(Icons.share, color: Colors.white,) : new Icon(CupertinoIcons.share, color: Colors.white),
            color: Colors.white,
            onPressed: () {
              Share.share("Checkout the $_roomName on Google Maps!\n$_gmapLink");
            },
          )
        ],
      ),

    body: new ListView(

      children: <Widget>[
        new Image.asset(
          '$_image',
          height: 250.0,
        ),
        new ListTile(
          leading: new Icon(_icon, color: _color,),
          title: new Text("$_category"),
          subtitle: new Text("$_roomNumber"),
        ),
        new Container(
            padding: new EdgeInsets.all(10.0),
            child: new Column(
              children: <Widget>[
                new Text(
                  "$_desc",
                )
              ],
            ))
      ],

      




    ),

    );
  }



}