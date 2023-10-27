import 'package:climaarg/domain/entities/forecast.dart';

abstract class LocationDatasource {
  Future<List<Location>> getForecastDay1();
  Future<List<Location>> getForecastDay2();
  Future<List<Location>> getForecastDay3();
  Future<List<Location>> getForecastDay4();
  Future<List<Location>> getActualWeather();
}
