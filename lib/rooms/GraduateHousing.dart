import 'package:flutter/material.dart';
import 'package:bsoe_tour/generic_room.dart';

class GraduateHousing extends StatelessWidget {
  final _desc =
      "Graduate Student Housing is an intimate community housing just 82 students, and is home to a diverse group, including students from all over the United States and the world. The apartments are set in a beautifully landscaped natural environment conveniently located adjacent to Science Hill, home to many of UCSC's main academic facilities. Each apartment has four single bedrooms, living room, kitchen, dining room, and bathroom. Ground floor apartments have decks, while upper apartments have private balconies.";

  @override
  Widget build(BuildContext context) {
    return new Room(
        webViewUrl: "https://housing.ucsc.edu/gradhousing/index.html",
        isAndroid: false,
        roomName: "Graduate Student Housing",
        color: Colors.deepPurple,
        roomNumber: "Redwood Grove",
        category: "Graduate Division",
        desc: _desc,
        gmapLink: "https://goo.gl/maps/PEwB1H9zeSD2",
        icon: Icons.school,
        image: "images/graduatehousing.jpg");
  }
}
