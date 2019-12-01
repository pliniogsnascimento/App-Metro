import 'package:meta/meta.dart';

class Station {
  final String id;
  final String name;
  final double latitude;
  final double longitude;
  final String address;
  final String phoneNumber;

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
