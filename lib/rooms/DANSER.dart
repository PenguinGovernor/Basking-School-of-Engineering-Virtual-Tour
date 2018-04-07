import 'package:flutter/material.dart';
import 'package:bsoe_tour/generic_room.dart';

class DANSER extends StatelessWidget {
    final _desc =
      "DANSER is the Dynamics, Autonomous Navigation, Surface Engineering and Robotics Lab at University of California, Santa Cruz. Our lab builds structurally compliant robots for applications including exosuits, exoskeletons, manipulators, prosthetics, and rovers. Tensegrity is a design principle that features compression elements suspended within a network of tension elements. his fusion results in a hybrid soft-rigid structure that easily complies with external stresses by distributing loads throughout the entire tension network. This paradigm is particularly useful for developing robots that mimic musculoskeletal kinematics and dynamics. We have chosen to apply these ideas to our own biomechanically oriented projects";

  @override
  Widget build(BuildContext context) {
    return new Room(false, "DANSER Lab", Colors.indigo, "Baskin Engineering 2 Room 308", "Eletrical Engineering", _desc, "https://goo.gl/maps/cz5wqNM4MEk", Icons.flash_on, "images/danser.png");
  }
}


