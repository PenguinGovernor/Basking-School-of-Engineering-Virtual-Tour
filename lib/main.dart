import 'package:flutter/material.dart';
import 'package:map_view/map_view.dart';
import './pages/HomePage.dart';
import './pages/SelectionPage.dart';
import './rooms/AOL.dart';
import './rooms/CompGenLab.dart';
import './rooms/ComputerVision.dart';
import './rooms/ComputerNetworks.dart';
import './rooms/DANSER.dart';
import './rooms/EE101.dart';
import './rooms/GameDesign.dart';
import './rooms/GraduateAdvising.dart';
import './rooms/GraduateHousing.dart';
import './rooms/HGI.dart';
import './rooms/LinuxLab.dart';
import './rooms/MechLab.dart';
import './rooms/MesaPage.dart';
import './rooms/Nanopore.dart';
import './key.dart';

void main() {
  var preKey = new PenguinKey();
  MapView.setApiKey(preKey.grabKey());
  runApp(new BaskinTour());
}

class BaskinTour extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Slug Tour",
      home: new HomePage(),
      routes: <String, WidgetBuilder>{
        "/SelectionPage": (BuildContext context) => new SelectionPage(),
        "/MesaPage": (BuildContext context) => new MesaPage(),
        "/LinuxLab": (BuildContext context) => new LinuxLab(),
        "/ComputerVision": (BuildContext context) => new ComputerVision(),
        "/GameDesign": (BuildContext context) => new GameDesign(),
        "/MechLab": (BuildContext context) => new MechLab(),
        "/ComputerNetworks": (BuildContext context) => new ComputerNetworks(),
        "/EE101": (BuildContext context) => new EE101(),
        "/DANSER": (BuildContext context) => new DANSER(),
        "/AOL": (BuildContext context) => new AOL(),
        "/Nanopore": (BuildContext context) => new Nanopore(),
        "/CompGenLab": (BuildContext context) => new CompGenLab(),
        "/HGI": (BuildContext context) => new HGI(),
        "/GraduateHousing": (BuildContext context) => new GraduateHousing(),
        "/GraduateAdvising": (BuildContext context) => new GraduateAdvising(),
      },
    );
  }
}
