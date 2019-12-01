import 'package:flutter/material.dart';
// import 'package:http/http.dart';
import 'package:train_station/screens/homeScreen.dart';
import 'package:train_station/screens/likedStationsScreen.dart';

import 'screens/stationScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Colors.green
      ),
      initialRoute: '/',
      routes: {
        '/likedStations': (context) => LikedStationsScreen()
      },
      home: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(Color.fromRGBO(88, 214, 141, 1).value),
              Color(Color.fromRGBO(118, 215, 196, 1).value)
            ],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            tileMode: TileMode.clamp
          )
        ),
        child: HomeScreen(),
      )
    );
  }
}