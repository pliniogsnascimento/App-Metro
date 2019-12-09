import 'package:flutter/cupertino.dart';
import 'package:train_station/models/station.dart';

class LikedStationsEvent {}

class AddStation extends LikedStationsEvent {
  Station station;

  AddStation({@required Station station});
}

class RemoveStation extends LikedStationsEvent {
  
}