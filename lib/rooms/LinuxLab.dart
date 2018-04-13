import 'package:flutter/material.dart';
import 'package:bsoe_tour/generic_room.dart';

class LinuxLab extends StatelessWidget {
  final _desc =
      "BE 105 and BE109 are two of the few 24-hour computer labs on campus. Most Computer Science and Computer Engineering students will spend their time here during lab sections fortheir lower-division Computer Science and Computer Engineering courses. Here students learn how to access the UNIX servers hosted by the School of Engineering so they can access their work remotely. In addition, classes such as robot automation and assembly language are held here.";

  @override
  Widget build(BuildContext context) {
    return new Room(
        isAndroid: false,
        roomName: "Linux Lab",
        color: Colors.orange,
        roomNumber: "Baskin Engineering 1 Room 105",
        category: "Computer Science",
        desc: _desc,
        gmapLink: "https://goo.gl/maps/L2YQXCkRijS2",
        icon: Icons.computer,
        image: "images/linuxlab.jpg");
  }
}
