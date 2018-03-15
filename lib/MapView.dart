import 'package:map_view/map_view.dart';
import 'package:flutter/material.dart';

// Helper Enum
enum majorList {
  gradDivision,
  computerScience,
  computerSciencGame,
  computerEngineering,
  eletricalEngineering,
  tim,
  bioEngineering
}

class BsoeMap {
  MapView customMapView;
  MapOptions mapOptions;
  List<ToolbarAction> toolbarOptions;
  int exitRoom;

  setMapOptions() {
    mapOptions = new MapOptions(
        mapViewType: MapViewType.normal,
        showUserLocation: true,
        initialCameraPosition: new CameraPosition(
            new Location(37.000369, -122.06323709999998), 18.5),
        title: "Virtual Tour");
  }

  setToolBar() {
    exitRoom = -1;
    toolbarOptions = new List<ToolbarAction>();
    toolbarOptions.add(new ToolbarAction("Guide", 2));
    toolbarOptions.add(new ToolbarAction("Exit", 1));
  }

  handleToolbar(int id) {
    if (id == 1) {
      dismissMap();
    }
  }

  setMarkers(List items) {
    // Alwasys set mesa
    customMapView.addMarker(
      new Marker("mesa", "MESA Engineering Program", 37.000258, -122.062930,
          color: Colors.red),
    );

    // If computer engineering
    if (items[majorList.computerEngineering.index]) {
      customMapView.addMarker(new Marker(
          "mech", "Mechatronics Lab", 37.000189, -122.063545,
          color: Colors.orange));
      customMapView.addMarker(new Marker(
          "cnl", "Computer Networks Lab", 37.000271, -122.063057,
          color: Colors.orange));
    }

    // If computer science
    if (items[majorList.computerScience.index]) {
      customMapView.addMarker(new Marker(
          "ll", "Linux Lab", 37.0002225, -122.063148,
          color: Colors.green));

      customMapView.addMarker(new Marker(
          "cvl", "Computer Vision Lab", 37.000888, -122.063382,
          color: Colors.green));
    }

    // If cs gd
    if (items[majorList.computerSciencGame.index]) {
      customMapView.addMarker(new Marker(
          "gdl", "Game Design Lab", 37.000419, -122.062715,
          color: Colors.deepPurple));
    }

    // If ee
    if (items[majorList.eletricalEngineering.index]) {
      print("SET EE\n\n\n\n");
      customMapView.addMarker(new Marker(
          "dl", "DANSER Lab", 37.000929, -122.063308,
          color: Colors.blue));
      customMapView.addMarker(new Marker(
          "ee101", "Eletrical Engineering 101 Lab", 37.000358, -122.063413,
          color: Colors.blue));
      customMapView.addMarker(new Marker(
          "aol", "Applied Optics Lab", 37.000495, -122.062870,
          color: Colors.blue));
    }

    // If graduate
    if (items[majorList.gradDivision.index]) {
      customMapView.addMarker(new Marker(
          "ga", "Graduate Advising Office", 36.9896204, -122.0649923,
          color: Colors.yellow));
      customMapView.addMarker(new Marker(
          "gsh", "Graduate Student Housing", 37.0000333, -122.0642744,
          color: Colors.yellow));
    }

    // If bioengineering
    if (items[majorList.bioEngineering.index]) {
      customMapView.addMarker(new Marker(
          "cgl", "Computational Genomics Lab", 37.000901, -122.063175,
          color: Colors.teal));
      customMapView.addMarker(new Marker(
          "hgi", "Human Genomics Institute", 37.000919, -122.063080,
          color: Colors.teal));
      customMapView.addMarker(new Marker(
          "npl", "Nanopore Lab", 37.000309, -122.063426,
          color: Colors.teal));
    }
  }

  showMap() {
    customMapView.show(mapOptions, toolbarActions: toolbarOptions);
  }

    updateMap(List markers) {
    customMapView = new MapView();

    setMapOptions();
    setToolBar();

    showMap();

    customMapView.onMapReady.listen((_) {
      setMarkers(markers);
    });
    customMapView.onToolbarAction.listen((id) {
      handleToolbar(id);
    });

  }

  dismissMap() {
    customMapView.dismiss();
  }
}
