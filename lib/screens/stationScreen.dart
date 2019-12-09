import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:train_station/models/station.dart';
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

    List<Widget> children = new List();

    children.add(_buildBackground(context));
    children.add(_buildCard());
        
    return MaterialApp(
      home: Stack(
        children: children,
      ),
    );
        
            
  }
        
  Set<Marker> _createMarkers() {
    return {
      Marker(
          markerId: MarkerId("1"),
          position: LatLng(widget.station.latitude, widget.station.longitude),
          infoWindow: InfoWindow(
            title: widget.station.name,
            onTap: () { }   
          ),
          icon: BitmapDescriptor.defaultMarker
        )
      };
  }
        
  _buildBackground(context) {
    return 
    Scaffold(
      appBar: AppBar(
        title: Text(widget.station.name),
        leading: IconButton(
          icon: Icon(
            Icons.keyboard_arrow_left,
            color: Colors.white,
            size: 30
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.blue,
      ),
      body: GoogleMap(
        mapType: MapType.normal,
        markers: _createMarkers(),
        initialCameraPosition: CameraPosition(
          target: LatLng(widget.station.latitude, widget.station.longitude),
          zoom: 14.4746,
        ),
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

  _buildCard() {
    return Container(
      margin: EdgeInsets.only(
        top: 580.0
      ),
      child: SizedBox(
        height: 100,
        child: Card(
          child: Column(
            children: [
              ListTile(
                title: Text(widget.station.address,
                    style: TextStyle(fontWeight: FontWeight.w500)),
                subtitle: Text(widget.station.name),
                leading: Icon(
                  Icons.restaurant_menu,
                  color: Colors.blue[500],
                ),
              )
            ],
          ),
        ),
      ),
    );
    
  }
}

class StationScreen extends StatefulWidget {

  Station station;

  StationScreen({@required this.station});

  @override
  State<StatefulWidget> createState() => StationScreenState();

}