import 'package:flutter/material.dart';
import 'package:bsoe_tour/generic_room.dart';

class Nanopore extends StatelessWidget {
  final _desc =
      "The Nanopore project at UC Santa Cruz has pioneered the use of ion channels for the analysis of single RNAand DNA molecules. Nanopore technology makes it possible to measure DNA structure and dynamics with precision at the angstrom level. Thus, it is possible to rapidly discriminate between nearly identical strands of DNA and investigate their physical properties. Nanopore technology is well suited to analysis of the terminal ends of double-stranded DNA, and it is amenable to high throughputexperiments. In the future, it may be possible to develop a durable solid-state or protein-based nanopore device that would allow the measurement of several different genomic factors from one cell without amplification: Gene expression Single-nucleotide polymorphisms (SNPs), common, minute variations in genes that can be used to track familial inheritance Point mutations in single or DNA molecules Using machine learning tools developed at UCSC, each molecule could be identified in real time and in less than 50 milliseconds Such a device would have broad clinical utility in diagnosing inherited traits such as hearing disorders and drugsensitivity and in tracking disease progression at the level of single cells.";

  @override
  Widget build(BuildContext context) {
    return new Room(
        isAndroid: false,
        roomName: "Nanopore Lab",
        color: Colors.purple,
        roomNumber: "Baskin Engineering 1 Room 217",
        category: "Bioengineering",
        desc: _desc,
        gmapLink: "https://goo.gl/maps/a3YEtuuqP3T2",
        icon: Icons.nature_people,
        image: "images/nanopore.jpg");
  }
}
