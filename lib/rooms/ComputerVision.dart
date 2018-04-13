import 'package:flutter/material.dart';
import 'package:bsoe_tour/generic_room.dart';

class ComputerVision extends StatelessWidget {
  final _desc =
      "We do research on different aspects of computer vision, sensor signal processing, and human-machine interface. Most of our projects are guided by applications in assistive technology for people who are blind or have a visual impairment. The laboratory, formed in 2001 by R. Manduchi and H. Tao, is part of the Department of Computer Engineeringat UC Santa Cruz. Our research is or has been supported by grants from NSF NIH";

  @override
  Widget build(BuildContext context) {
    return new Room(
        isAndroid: false,
        roomName: "Computer Vision Lab",
        color: Colors.orange,
        roomNumber: "Baskin Engineering 2 Room 209",
        category: "Computer Science",
        desc: _desc,
        gmapLink: "https://goo.gl/maps/pmfgaXssnju",
        icon: Icons.computer,
        image: "images/computervision.jpg");
  }
}
