import 'package:geolocator/geolocator.dart';

class LocationService {
  Future<Position> getCurrentLocation() async {
    bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      throw LocationServiceException('Location services are disabled.');
    }

    return await Geolocator.getCurrentPosition();
  }
}

class LocationServiceException implements Exception {
  final String message;
  LocationServiceException(this.message);
}
