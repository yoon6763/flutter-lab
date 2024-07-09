import 'package:geolocator/geolocator.dart';
import 'package:permission_handler/permission_handler.dart';

class Location {

  double latitude;
  double longitude;

  Future<void> getCurrentLocation() async {
    try {
      Map<Permission, PermissionStatus> status =
      await [Permission.location].request();

      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low);

      latitude = position.latitude;
      longitude = position.longitude;

      print(position);
    } catch (e) {
      print(e);
    }
  }
}