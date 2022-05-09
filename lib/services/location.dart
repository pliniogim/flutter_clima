import 'package:geolocator/geolocator.dart';

class CurrentLocation {
  double? latitude;
  double? longitude;

  Future<void> getCurrentLocation() async {
    //Future<LocationPermission> permission = Geolocator.requestPermission();
    //Future<Position> position = Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
    // print(position);
    // print(permission);
    try {
      await Geolocator.requestPermission();
      Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
      latitude = position.latitude;
      longitude = position.longitude;
    } catch(e) {
      //TODO: catch error
      //print(e);
    }
  }
}