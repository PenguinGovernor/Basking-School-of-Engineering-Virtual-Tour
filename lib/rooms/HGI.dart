import 'package:flutter/material.dart';
import 'package:bsoe_tour/generic_room.dart';

class HGI extends StatelessWidget {
  final _desc =
      "On June 22, 2000, UCSC and the other members of the International Human Genome Project consortium completed the first working draft of the human genome assembly, forever ensuring free public access to the genome and the information contains. A few weeks later, on July 7, 2000, the newly assembled genome was released on the web at http://genome.ucsc.edu, along with the initial prototype of a graphical viewing tool, the UCSC Genome Browser. UC Santa Cruz possesses particular strength in bioinformatics--the myriad of ways to probe and analyze biological data by using computational, mathematical, and statistical approaches. The largest product of this expertise is the UCSC Genome Browser, which serves as an interactive web-based microscope that allows researchers to view all 23 chromosomes of the humaJ genome at any scale, from a full chromosome down to an individual nucleotide. The genome sequences on display have been analyzed and annotated, and they are aligned with the genomes of dozens of other species that are also displayed on the UCSC browser. Biomedical researchers throughout the world use this browser extensively as they seek to understand the vast amount of information contained in the genome sequences, to probe them with new experimental and informatics methodologies, and ultimately to decode the genetic program of life. Far from simply displaying the genetic code, the UCSC browser brings the code to life by aligning relevant areas with experimental and computational data and images. It also links to international databases, giving researchers instant access to deeper information about the genome. An experienced user can form a hypothesis and verify it in minutes using this tool. The browser platform has multiple potential uses that can improve diagnosis, prevention, and cures for disease.\nSpin-offs include the following:\nThe HIV Data Browser\nThe UCSC Cancer Genomics Browser\nThe data collection center for the international ENCODE project";

  @override
  Widget build(BuildContext context) {
    return new Room(
        webViewUrl: "https://ucscgenomics.soe.ucsc.edu/",
        isAndroid: false,
        roomName: "Human Genomics Institute",
        color: Colors.purple,
        roomNumber: "Baskin Engineering 2 Room 501",
        category: "Bioengineering",
        desc: _desc,
        gmapLink: "https://goo.gl/maps/k8oQDwHNRQy",
        icon: Icons.nature_people,
        image: "images/baskin.jpg");
  }
}
