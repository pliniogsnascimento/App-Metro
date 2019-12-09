import 'package:train_station/models/line.dart';
import 'package:train_station/models/station.dart';

class LineState {
  List<Line> lines;

  LineState._();

  factory LineState.initial() {
    return LineState._()..lines = <Line>[];
  }
}