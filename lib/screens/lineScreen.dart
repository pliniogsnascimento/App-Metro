import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:requests/requests.dart';
import 'package:train_station/models/line.dart';
import 'package:train_station/models/station.dart';
import 'package:train_station/models/stations.dart';
import 'package:http/http.dart';
import 'package:train_station/screens/stationScreen.dart';

class LineScreen extends StatelessWidget {

  Line line;

  LineScreen({Key key, @required this.line}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.blue,
      body: ListView.builder(
        itemCount: (line.stations.length * 2) + 1,
        itemBuilder: (context, i) {
          if(i == 0) return _buildHeader(context);

          if(i.isOdd) return Container(
            color: Colors.white,
            child: Divider(
              thickness: 1.5,
            )
          );
          
          final index = i ~/ 2;

          if(index < line.stations.length) {
            return Container(
              decoration: BoxDecoration(
                color: Colors.white
              ),
              child: ListTile(
                title: Text(line.stations[index].name),
                subtitle: Text("Linha " + line.name),
                // trailing: IconButton(
                //   icon: Icon(
                //     Icons.favorite_border,
                //     color: null,
                //   ),
                //   onPressed: () { },
                // ),
                onTap: () { _loadStation(context, line.stations[index]); },
              )
            );
          }

          
        } 
      ),
    );
    
    
  }

  Widget _buildHeader(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 30.0, 
        bottom: 8.0
      ),
      child: Row(
        children: <Widget>[
          IconButton(
            icon: Icon(
              Icons.keyboard_arrow_left,
              color: Colors.white,
              size: 30
            ),
            onPressed: () { Navigator.pop(context); },
          ),
          Text(
            "Linha " + line.name,
            style: TextStyle(
              color: Colors.white,
              fontSize: 26.0,
              fontFamily: "Calibre-Semibold",
              letterSpacing: 1.0,
              shadows: [
                Shadow(
                  blurRadius: 10.0,
                  color: Colors.black38,
                  offset: Offset(2.0, 2.0),
                ),
              ]
            )
          ),
        ],
      )
    );
  }

  _loadStation(context, Station station) async {
    Station fetchedStation = await _fetchStation(station.id);

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => StationScreen(station: fetchedStation)
      )
    );
  }

  Future<Station> _fetchStation(String id) async {
    var r = await Requests.get("https://maps.googleapis.com/maps/api/place/details/json?place_id=$id&fields=name,rating,formatted_phone_number,geometry,opening_hours,formatted_address&key=AIzaSyCZec20K7Bwqt26_ku-DVl1eapOX5uarHo");
    r.raiseForStatus();
    Map<String, dynamic> stationJson = r.json();

    Station station = Station(
      name: stationJson['result']['name'],
      address: stationJson['result']['formatted_address'],
      latitude: stationJson['result']['geometry']['location']['lat'],
      longitude: stationJson['result']['geometry']['location']['lng']
    );

    return station;
  }

}

// class LineScreen extends StatefulWidget {

//   Line line;

//   @override
//   State<StatefulWidget> createState() => LineScreenState();
// }

