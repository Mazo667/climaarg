// To parse this JSON data, do
//
//     final locationResponse = locationResponseFromJson(jsonString);

import 'dart:convert';

List<LocationResponse> locationResponseFromJson(String str) =>
    List<LocationResponse>.from(
        json.decode(str).map((x) => LocationResponse.fromJson(x)));

String locationResponseToJson(List<LocationResponse> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class LocationResponse {
  final String id;
  final double dist;
  final int lid;
  final int fid;
  final int intNumber;
  final String name;
  final String province;
  final String lat;
  final String lon;
  final String zoom;
  final int updated;
  final WeatherResponse weather;
  final dynamic forecast;

  LocationResponse({
    required this.id,
    required this.dist,
    required this.lid,
    required this.fid,
    required this.intNumber,
    required this.name,
    required this.province,
    required this.lat,
    required this.lon,
    required this.zoom,
    required this.updated,
    required this.weather,
    required this.forecast,
  });

  factory LocationResponse.fromJson(Map<String, dynamic> json) =>
      LocationResponse(
        id: json["_id"],
        dist: json["dist"]?.toDouble(),
        lid: json["lid"],
        fid: json["fid"],
        intNumber: json["int_number"],
        name: json["name"],
        province: json["province"],
        lat: json["lat"],
        lon: json["lon"],
        zoom: json["zoom"],
        updated: json["updated"],
        weather: WeatherResponse.fromJson(json["weather"]),
        forecast: json["forecast"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "dist": dist,
        "lid": lid,
        "fid": fid,
        "int_number": intNumber,
        "name": name,
        "province": province,
        "lat": lat,
        "lon": lon,
        "zoom": zoom,
        "updated": updated,
        "weather": weather.toJson(),
        "forecast": forecast,
      };
}

class WeatherResponse {
  final int humidity;
  final double? pressure;
  final double? st;
  final double visibility;
  final int? windSpeed;
  final int id;
  final String description;
  final double temp;
  final WingDeg wingDeg;
  final String tempDesc;

  WeatherResponse({
    required this.humidity,
    required this.pressure,
    required this.st,
    required this.visibility,
    required this.windSpeed,
    required this.id,
    required this.description,
    required this.temp,
    required this.wingDeg,
    required this.tempDesc,
  });

  factory WeatherResponse.fromJson(Map<String, dynamic> json) =>
      WeatherResponse(
        humidity: json["humidity"],
        pressure: json["pressure"]?.toDouble(),
        st: json["st"]?.toDouble(),
        visibility: json["visibility"]?.toDouble(),
        windSpeed: json["wind_speed"],
        id: json["id"],
        description: json["description"],
        temp: json["temp"]?.toDouble(),
        wingDeg: wingDegValues.map[json["wing_deg"]]!,
        tempDesc: json["tempDesc"],
      );

  Map<String, dynamic> toJson() => {
        "humidity": humidity,
        "pressure": pressure,
        "st": st,
        "visibility": visibility,
        "wind_speed": windSpeed,
        "id": id,
        "description": description,
        "temp": temp,
        "wing_deg": wingDegValues.reverse[wingDeg],
        "tempDesc": tempDesc,
      };
}

enum WingDeg {
  CALMA,
  ESTE,
  NORESTE,
  NOROESTE,
  NORTE,
  OESTE,
  SUDESTE,
  SUDOESTE,
  SUR
}

final wingDegValues = EnumValues({
  "Calma": WingDeg.CALMA,
  "Este": WingDeg.ESTE,
  "Noreste": WingDeg.NORESTE,
  "Noroeste": WingDeg.NOROESTE,
  "Norte": WingDeg.NORTE,
  "Oeste": WingDeg.OESTE,
  "Sudeste": WingDeg.SUDESTE,
  "Sudoeste": WingDeg.SUDOESTE,
  "Sur": WingDeg.SUR
});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
