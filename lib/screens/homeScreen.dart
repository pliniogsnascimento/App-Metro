import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:train_station/models/line.dart';
import 'package:train_station/models/station.dart';
import 'package:train_station/widgets/listCards.dart';

class HomeScreenState extends State<HomeScreen> {
  List<String> _stations = <String>[
    'Vila Prudente',
    'Metrô Tamanduateí',
    'Sacomã',
    'Alto do Ipiranga',
    'Santos Imigrantes',
    'Chácara Klabin',
    'Ana Rosa',
    'Paraíso',
    'Brigadeiro',
    'Trianon MASP',
    'Sei lá',
    'Vila Mariana'
  ];

  List<Line> _lines = <Line>[
    Line(
      name: 'Azul',
      image: 'assets/metro.jpg',
      stations: <Station>[
        Station(name: 'Vila Prudente'),
        Station(name: 'Metrô Tamanduateí'),
        Station(name: 'Sacomã'),
        Station(name: 'Alto do Ipiranga'),
        Station(name: 'Santos Imigrantes'),
        Station(name: 'Chácara Klabin'),
        Station(name: 'Ana Rosa'),
        Station(name: 'Paraíso'),
        Station(name: 'Brigadeiro'),
        Station(name: 'Trianon MASP'),
        Station(name: 'Sei lá'),
        Station(name: 'Vila Mariana')
      ],
    ),
    Line(
      name: 'Amarela', 
      image: 'assets/metro.jpg',
      stations: <Station>[
        Station(name: 'Vila Prudente'),
        Station(name: 'Metrô Tamanduateí'),
        Station(name: 'Sacomã'),
        Station(name: 'Alto do Ipiranga'),
        Station(name: 'Santos Imigrantes'),
        Station(name: 'Chácara Klabin'),
        Station(name: 'Ana Rosa'),
        Station(name: 'Paraíso'),
        Station(name: 'Brigadeiro'),
        Station(name: 'Trianon MASP'),
        Station(name: 'Sei lá'),
        Station(name: 'Vila Mariana')
      ]
    ),
    Line(
      name: 'Verde', 
      image: 'assets/metro.jpg',
      stations: <Station>[
        Station(name: 'Vila Prudente'),
        Station(name: 'Metrô Tamanduateí'),
        Station(name: 'Sacomã'),
        Station(name: 'Alto do Ipiranga'),
        Station(name: 'Santos Imigrantes'),
        Station(name: 'Chácara Klabin'),
        Station(name: 'Ana Rosa'),
        Station(name: 'Paraíso'),
        Station(name: 'Brigadeiro'),
        Station(name: 'Trianon MASP'),
        Station(name: 'Sei lá'),
        Station(name: 'Vila Mariana')
      ]
    )
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
              left: 20.0, 
              right: 12.0, 
              top: 60.0, 
              bottom: 8.0
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("SP Trem",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 46.0,
                    fontFamily: "Calibre-Semibold",
                    letterSpacing: 1.0,
                    shadows: [
                      Shadow(
                        blurRadius: 10.0,
                        color: Colors.black38,
                        offset: Offset(2.0, 2.0)
                      )
                    ]
                  )
                ),
                IconButton(
                  icon: Icon(
                    Icons.dehaze,
                    color: Colors.white,
                    size: 30.0,
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/likedStations');
                  },
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Row(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xFFff6e6e),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 22.0, vertical: 6.0
                      ),
                      child: Text("Grande SP",
                        style: TextStyle(
                          color: Colors.white
                        )
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 15.0,
                ),
                Text("25+ Estações",
                    style: TextStyle(
                      color: Colors.blueAccent
                    )
                )
              ],
            ),
          ),
          Expanded(
            child: ListView(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.horizontal(
                      left: Radius.circular(15.0)
                    )
                  ),
                  height: 450,
                  margin: EdgeInsets.symmetric(vertical: 20.0),
                  child: ListCards(_lines, _seeStations)
                )
              ],
            )
          ),
        ],
      )
    );
  }

  _seeStations(BuildContext context) {
    Navigator.pushNamed(context, '/lineScreen');
  }
}

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeScreenState();
  }
  
}

