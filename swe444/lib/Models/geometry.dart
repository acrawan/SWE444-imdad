
import 'package:swe444/Models/location.dart';

class Geometry {
  final Location location;


  Geometry({required this.location});

  factory Geometry.fromJson(Map<dynamic, dynamic> parsedJson) {
    return Geometry(
        location: Location.fromJson(parsedJson['location'])
    );
  }
}