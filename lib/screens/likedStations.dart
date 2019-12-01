import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LikedStationsState extends State<LikedStations> {
  @override
  Widget build(BuildContext context) {

    
    return ListView.builder(
      itemCount: (15 * 2) + 1,
      itemBuilder: (context, i) {
        if(i == 0) return _buildHeader();

        if(i.isOdd) return Container(
          color: Colors.white,
          child: Divider(
            thickness: 1.5,
          )
        );
        
        return Container(
          decoration: BoxDecoration(
            color: Colors.white
          ),
          child: 
          ListTile(
            title: Text("Alto do Ipiranga"),
            subtitle: Text("Linha Verde"),
          )
        );
      } 
    );
  }

  Widget _buildHeader() {
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
            onPressed: () {},
          ),
          Text(
            "Estações salvas",
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

}

class LikedStations extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => LikedStationsState();
}

