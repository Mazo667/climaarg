import 'package:climaarg/domain/entities/weather.dart';

class Location {
  final String id;
  final double dist;
  final int lid;
  final int fid;
  final String name;
  final String province;
  final String lat;
  final String lon;
  final String zoom;
  final int updated;
  final Weather weather;
  final dynamic? forecast;

  Location({
    required this.id,
    required this.dist,
    required this.lid,
    required this.fid,
    required this.name,
    required this.province,
    required this.lat,
    required this.lon,
    required this.zoom,
    required this.updated,
    required this.weather,
    this.forecast,
  });
}
