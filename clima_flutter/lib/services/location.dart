import 'package:geolocator/geolocator.dart';

class Location {
  double? latitude;
  double? longitude;

  Future<void> getCurrentLocation() async {
    try {
      LocationPermission permission;

      permission = await Geolocator.requestPermission();

      // Position position = await Geolocator.getCurrentPosition(// deprecated
      //     desiredAccuracy: LocationAccuracy.low);
      Position position = await Geolocator.getCurrentPosition(
          locationSettings: const LocationSettings(
        accuracy: LocationAccuracy.high, 
      ));

      latitude = position.latitude;
      longitude = position.longitude;
    } catch (e) {
      print(e);
    }
  }
}
