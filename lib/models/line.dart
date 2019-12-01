import 'package:train_station/models/station.dart';
import 'package:meta/meta.dart';

class Line {
  String name;
  String image;
  List<Station> stations;

  Line({@required this.name, @required this.image, @required this.stations});
}
