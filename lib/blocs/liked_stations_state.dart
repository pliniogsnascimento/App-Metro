import 'package:train_station/models/station.dart';

class LikedStationsState {
  List<Station> stations;

  LikedStationsState._();

  factory LikedStationsState.initial() {
    return LikedStationsState._()..stations = <Station>[];
  }
}