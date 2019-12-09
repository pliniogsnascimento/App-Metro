import 'package:meta/meta.dart';

class Station {
  String id;
  String name;
  double latitude;
  double longitude;
  String address;
  String phoneNumber;

  Station(
    {
      this.id, 
      @required this.name, 
      this.latitude,
      this.longitude,
      this.address,
      this.phoneNumber
    }
  );
}
