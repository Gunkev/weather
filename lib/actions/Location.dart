import 'package:geolocator/geolocator.dart';

class Location {

  Location({this.latitude, this.longitude});

  double latitude;
  double longitude;

  // get current location of a person in an area  with a low accuracy
  Future<void> getCurrentLocation() async {
    try {
      Position position = await Geolocator().getLastKnownPosition(desiredAccuracy: LocationAccuracy.low);
      print(position);
      latitude = position.latitude;
      longitude = position.longitude;
    }
    catch(e) {
      print(e);
    }
  }
}