import 'coordinate_model.dart';

class SavedRoute {
  final String id; // Unique ID for the route
  final String name; // Name of the route
  final Coordinate startPoint; // Start point
  final Coordinate endPoint; // End point
  final List<Coordinate> routePoints; // The list of coordinates along the route
  final DateTime dateCreated; // Timestamp when the route was saved

  SavedRoute({
    required this.id,
    required this.name,
    required this.startPoint,
    required this.endPoint,
    required this.routePoints,
    required this.dateCreated,
  });

  // From JSON (for deserializing)
  factory SavedRoute.fromJson(Map<String, dynamic> json) {
    return SavedRoute(
      id: json['id'],
      name: json['name'],
      startPoint: Coordinate.fromJson(json['startPoint']),
      endPoint: Coordinate.fromJson(json['endPoint']),
      routePoints: (json['routePoints'] as List)
          .map((point) => Coordinate.fromJson(point))
          .toList(),
      dateCreated: DateTime.parse(json['dateCreated']),
    );
  }

  // To JSON (for serializing)
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'startPoint': startPoint.toJson(),
      'endPoint': endPoint.toJson(),
      'routePoints': routePoints.map((point) => point.toJson()).toList(),
      'dateCreated': dateCreated.toIso8601String(),
    };
  }
}
