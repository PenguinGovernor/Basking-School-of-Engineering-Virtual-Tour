import 'package:bsoe_tour/generic_room.dart';
import 'package:flutter/material.dart';

  final _desc =
      "The main research theme in our group is single particle optics. We develop new, highly sensitive methods to study single particles with optical methods. We use these and other established techniques to gain new understanding of these particles and light-matter interactions in general. Due to the versatility of optical methods, we can investigate different types of particles. Our current focus areas are: single biomolecules (Integrated Optofluidics), single nanomagnets (Nano-magneto-optics, and single photons (Atomic spectroscopy on a chip). We are affiliated with the California Institute for Quantitative Biomedical Research (QB3), the Center for Biomolecular Science and Engineering (CBSE), and the Storage Systems Research Center (SSRC). Professor Schmidt directs the WM. Keck Center for Nanoscale Optofluidics, whose mission is to incorporate nanoscale features in optofluidic devices to enable new studies of bioparticles and biological processes.";


class AOL extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Room(false, "Applied Optics Lab",Colors.indigo,"Baskin Engineering 1 Room 268" , "Eletrical Engineering", _desc, "https://goo.gl/maps/EB3nwgyVjP52", Icons.flash_on, "images/baskin.jpg");
  }
}