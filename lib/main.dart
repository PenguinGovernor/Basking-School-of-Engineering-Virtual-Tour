import 'package:flutter/material.dart';
import 'package:map_view/map_view.dart';
import './pages/HomePage.dart';
import './pages/SelectionPage.dart';
import './rooms/Mesa.dart';

void main() {
  MapView.setApiKey("AIzaSyAGPwHFwynyK8RIkLdkZlNpNOS8jAyYexc");
  runApp(new BaskinTour());
}

class BaskinTour extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new HomePage(),
      routes: <String, WidgetBuilder>{
        "/SelectionPage": (BuildContext context) => new SelectionPage(),
        "/MesaPage": (BuildContext context) => new MesaPage()
      },
    );
  }
}
