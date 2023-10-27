import 'package:climaarg/domain/entities/forecast.dart';
import 'package:climaarg/infraestructure/models/locationdb_response.dart';

import '../../domain/entities/weather.dart';

class LocationMapper {
  static Location locationToEntity(LocationResponse response) => Location(
      id: response.id,
      dist: response.dist,
      lid: response.lid,
      fid: response.fid,
      name: response.name,
      province: response.province,
      lat: response.lat,
      lon: response.lon,
      zoom: response.zoom,
      updated: response.updated,
      weather: Weather(
          description: response.weather.description,
          id: response.weather.id,
          pressure: response.weather.pressure,
          st: response.weather.st,
          temp: response.weather.temp,
          tempDesc: response.weather.tempDesc,
          visibility: response.weather.visibility,
          windSpeed: response.weather.windSpeed,
          humidity: response.weather.humidity));
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
