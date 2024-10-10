import 'package:flutter_map/flutter_map.dart';

class RouteModel {
  final String id;
  final String name;
  final LatLngBounds startPoint;
  final LatLngBounds endPoint;
  final List<LatLngBounds> waypoints;

  RouteModel({
    required this.id,
    required this.name,
    required this.startPoint,
    required this.endPoint,
    required this.waypoints,
  });
}
