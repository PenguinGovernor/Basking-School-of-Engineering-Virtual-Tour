import 'package:flutter/material.dart';
import 'package:bsoe_tour/generic_room.dart';

class GraduateAdvising extends StatelessWidget {
  final _desc =
      "The BSOE Graduate Advising office is available to help students, staff, and faculty with academic policy pertaining to graduate education at UCSC. This unit is responsible for processing petitions , TA assignments, committee nominations, advancement to candidacy, intake of theses and dissertations, conducting the degree checks to award all master's and doctoral degrees, graduate, and navigating academic performance and progress.\nHow To Meet With a Graduate Advisor:\nAdvisors are available for both drop-in advising and appointments and are located in Oakes Academic Building, Room 221. If you anticipate needing more than 10 minutes with an advisor we recommend making an appointment. You can schedule an appointment by visiting the Contacts & Hours page and select Schedule an Appointment with the advisor for your program. When visiting the Graduate Advising Office, you will be asked to sign in with your name, the advisor you wish to see, and if it is a scheduled or drop-in appointment Drop-In advising hours are limited, so please plan ahead as we can fill up quickly during peak times in the quarter. Advising By Email: When emailing the BSOE Advising staff please email from your UCSC email account an include your name, program, student ID and your question Please do not email advisors to request an appointment. We are happy to help with many things, but it is the student's responsibility to come prepared.\nPlease always refer to the Graduate Advising website as answers to many of your questions can be found here. We look forward to meeting with you soon!";

  @override
  Widget build(BuildContext context) {
    return new Room(
        webViewUrl: "https://grad.soe.ucsc.edu/",
        isAndroid: false,
        roomName: "Graduate Advising Office",
        color: Colors.deepPurple,
        roomNumber: "Oakes Academic Building Room 221",
        category: "Graduate Division",
        desc: _desc,
        gmapLink: "https://goo.gl/maps/wXfHPRYCo7y",
        icon: Icons.school,
        image: "images/baskin.jpg");
  }
}
