import 'package:flutter/material.dart';
import 'package:bsoe_tour/generic_room.dart';

class MechLab extends StatelessWidget {
  final _desc =
      "BEE 115 is home to CMPE118: Introduction to Mechatronics. In this class teams of 3 to 4 students must build a fully autonomous robot from the ground up in 5 weeks meaning that once the power switch is on, the robot must function on its own. The first five weeks students learn about components that are needed to build the robot, such as amplifiers, infrared sensors, bump sensors, and so on. The rest ofthe quarter they focus on building a complete robot. Atthe end of the quarter there's a competition. Previous examples include a competition based on Enders Game, where the robot had to navigate around stars and find the enemys home beacon. Also, robots scored points every time it was hit by an enemys ping-pong ball.";

  @override
  Widget build(BuildContext context) {
    return new Room(
        isAndroid: false,
        roomName: "Mechatronics Lab",
        color: Colors.blue,
        roomNumber: "Baskin Engineering 1 Room 115",
        category: "Computer Engineering",
        desc: _desc,
        gmapLink: "https://goo.gl/maps/uAmKmPfxjb22",
        icon: Icons.computer,
        image: "images/mech.jpg");
  }
}
