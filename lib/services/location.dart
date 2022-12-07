import 'package:geolocator/geolocator.dart';

class Location {
  late double Longitude;
  late double Latitude;
  Future<void> getCurrentLocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low);
      Longitude=position.longitude;
      Latitude=position.latitude;
    }
    catch(e){
      print(e);
    }
  }
}