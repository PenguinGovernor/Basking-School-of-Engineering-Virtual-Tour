import 'package:flutter/material.dart';
import 'package:bsoe_tour/generic_room.dart';

class EE101 extends StatelessWidget {

    final _desc =
      "The circuits lab (Baskin 150) is used for beginning instruction in analog electronics, both for EE 101/L(Circuits) and BME 51AB (Applied Electronics for Bioengineers). The class shown here is one section of BME51A, doing their first amplifier lab: building an instrumentation amplifier for a pressure sensor for measuring air pressure in a blood-pressure Cuff. All the bioengineering concentrations are required to complete BME 51 as it provides a relatively quick way to gain practical engineering design experience and to understand the basics of interfacing biological systems to computers.";

  @override
  Widget build(BuildContext context) {
    return new Room(false ,"EE 101 Lab", Colors.indigo, "Baskin Engineering 1 Room 150", "Eletrical Engineering", _desc, "https://goo.gl/maps/keydzeyhDoz", Icons.flash_on, "images/ee101.jpg");
  }
}

