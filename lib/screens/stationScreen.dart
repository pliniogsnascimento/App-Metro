import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:train_station/widgets/headerBackButton.dart';

class StationScreenState extends State<StationScreen> {

  final Set<Marker> _markers = {
    Marker(
        markerId: MarkerId("1"),
        position: LatLng(-23.5843897, -46.5819115),
        infoWindow: InfoWindow(
          title: "Estação Vila Prudente"
        ),
        icon: BitmapDescriptor.defaultMarker
      )
  };

  Completer<GoogleMapController> _controller = Completer();

  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(-23.579, -46.5798),
    zoom: 14.4746,
  );

  static final CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(37.43296265331129, -122.08832357078792),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Wrap(
          children: <Widget>[
            HeaderBackButton('Estação Vila Prudent'),
            // Text("e"),
          ],
        ),
        backgroundColor: Colors.blue,
      ),
      body: GoogleMap(
        mapType: MapType.normal,
        markers: _markers,
        initialCameraPosition: _kGooglePlex,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
      ),
      // floatingActionButton: FloatingActionButton.extended(
      //   onPressed: _createMarkers,
      //   label: Text('Create marker'),
      //   icon: Icon(Icons.directions_boat),
      // ),
    );
  }

  // void _createMarkers() {
  //   setState(() {
  //     _markers.add(Marker(
  //       markerId: MarkerId("1"),
  //       position: LatLng(-23.5843897, -46.5819115),
  //       infoWindow: InfoWindow(
  //         title: "Estação Vila Prudente"
  //       ),
  //       icon: BitmapDescriptor.defaultMarker
  //     ));
  //   });
  // }
  
}

class StationScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => StationScreenState();

}