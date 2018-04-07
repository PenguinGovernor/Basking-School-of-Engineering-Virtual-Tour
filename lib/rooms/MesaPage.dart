import 'package:bsoe_tour/generic_room.dart';
import 'package:flutter/material.dart';

class MesaPage extends StatelessWidget {

    final _desc =
      "The MESA Engineering Program, also known as the Multicultural Engineering Program at the University of California Santa Cruz campus, is the university level component of the statewide Mathematics, Engineering, Science Achievement (MESA) - a program of the University of California Office of the President."
      "\n\nAt UC Santa Cruz, MEP is supported by the Baskin School of Engineering with its goal to promote diversity and facilitate the retention and graduation of a diverse population of students, especially groups which continue to remain the most underrepresented in engineering studies. The program received the 2004 UC Santa Cruz Excellence Through Diversity Award which is presented to programs or individuals for efforts which promote a diverse and inclusive environment."
      "\n\nThe School of Engineering (SOE) strives to maintain an environment that stimulates excellence in scholarship and service along with a commitment to diversity through the coordinated efforts and services of the Multicultural Engineering Program (MEP). Also known as the MESA Engineering Program, MEP is the university level component of the statewide system Mathematics, Engineering, Science Achievement (MESA) program of the University of California Office of the President."
      "\n\nAt UC Santa Cruz, MEP is an integral part of the Undergraduate Advising Unit–providing advice in academic, career, social and cultural areas for students in the SoE community."
      "MEP provides a variety of academic and personal support services to encourage the academic success and graduation of aspiring engineering students who are first in their family to attend college or first to enroll in computer science or engineering studies, or from family backgrounds of limited financial resources and less educational opportunities. The MEP learning community augments students’ undergraduate experience by engaging their full participation in services and activities which ensure that students gain access and achieve success, and by leveraging a strong support network that encourages their matriculation into graduate school.";

  @override
  Widget build(BuildContext context) {
    return new Room(false,"Mesa Engineering Program", Colors.red, "Baskin Engineering 1 Room 399", "Organazations", _desc, "https://goo.gl/maps/ap9muZyQMEB2", Icons.account_balance,"images/mep.jpg");
  }

}