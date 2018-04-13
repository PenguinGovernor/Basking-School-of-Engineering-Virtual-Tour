import 'package:flutter/material.dart';
import 'package:bsoe_tour/generic_room.dart';

class ComputerNetworks extends StatelessWidget {
  final _desc =
      "BE301A Computer Networks Lab: This lab is used by the University's Computer Networking and Electrical Engineering courses. Students in these courses receive hands-on experience with real-world networking equipment and concepts to prepare them for careers as network engineers. They use software such as Wireshark to observe packets as they travel through a computer network to understand how communication between routers, switches, and computers occurs on Local Area Networks as well as the Internet. Additionally, students are introduced to emerging concepts, such as Software Defined Networking, to prepare them for the Internet of the future.";

  @override
  Widget build(BuildContext context) {
    return new Room(
        isAndroid: false,
        roomName: "Computer Networks Lab",
        color: Colors.blue,
        roomNumber: "Baskin Engineering 1 Room 301A",
        category: "Computer Engineering",
        desc: _desc,
        gmapLink: "https://goo.gl/maps/p9Ad1aoFfeR2",
        icon: Icons.computer,
        image: "images/compnet.jpg");
  }
}
