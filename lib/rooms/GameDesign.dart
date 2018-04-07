import 'package:flutter/material.dart';
import 'package:bsoe_tour/generic_room.dart';

class GameDesign extends StatelessWidget {
    final _desc =
      "The Game Lab is among the most distinctive teaching labs at UC Santa Cruz. Here, undergraduate game majors work in teams of 4 to 15 students to create a substantial computer game over their entire senior year. Game Lab games have won awards at game festivals such as IndieCade and the Google Play Indie Games awards, and are publicly released on platforms such as ltch.io, the Apple App Store, and the Google Play Store. The lab features high end computer workstations with VR-capable graphics cards";

  @override
  Widget build(BuildContext context) {
    return new Room(false, "Game Design Lab", Colors.green, "Baskin Engineering 1 Room 368", "CS: Game Design", _desc, "https://goo.gl/maps/zg8v3JJoJxQ2", Icons.videogame_asset, "images/gamedesign.jpg");
  }
}

