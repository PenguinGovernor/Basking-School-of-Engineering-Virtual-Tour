import 'package:flutter/material.dart';
import 'package:bsoe_tour/generic_room.dart';

class CompGenLab extends StatelessWidget {
  final _desc =
      "Our research is currently focused on : Building technology to connect the institutional silos where genome information is now isolated by forging and implementing interoperable standards. We are proud members of the Global Alliance for Genomics and Health, comparing the history of vertebrate genomes.\n\nWant to reconstruct a 65-million-year-old genome from the genomes of its descendants?\nTalk to us! We love the Genome 10K, a project to sequence 10, 000 vertebrate genomes using next-next generation sequencing technology to create more complete, accurate and phased genomes and making it easy to discover and share portable, reproducible, and scalable genomic workflows. We analyze massive genomic datasets using the cloud and build a human reference genome structure that contains all common variation as a universal basis for genomics. We are also completing the library of human and mouse RNAs.";

  @override
  Widget build(BuildContext context) {
    return new Room(
        webViewUrl: "https://cgl.genomics.ucsc.edu/",
        isAndroid: false,
        roomName: "Computational Genomics Lab",
        color: Colors.purple,
        roomNumber: "Baskin Engineering 2 Room 507",
        category: "Bioengineering",
        desc: _desc,
        gmapLink: "https://goo.gl/maps/x77Fb9uRbyR2",
        icon: Icons.nature_people,
        image: "images/compgen.jpg");
  }
}
