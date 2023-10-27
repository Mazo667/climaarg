import 'package:climaarg/domain/datasources/location_datasource.dart';
import 'package:climaarg/domain/entities/forecast.dart';
import 'package:climaarg/domain/repositories/location_repository.dart';

class LocationRepositoryImpl extends LocationRepository {
  final LocationDatasource locationDatasource;

  LocationRepositoryImpl({required this.locationDatasource});

  @override
  Future<List<Location>> getActualWeather() {
    return locationDatasource.getActualWeather();
  }

  @override
  Future<List<Location>> getForecastDay1() {
    return locationDatasource.getForecastDay1();
  }

  @override
  Future<List<Location>> getForecastDay2() {
    return locationDatasource.getForecastDay2();
  }

  @override
  Future<List<Location>> getForecastDay3() {
    return locationDatasource.getForecastDay3();
  }

  @override
  Future<List<Location>> getForecastDay4() {
    return locationDatasource.getForecastDay4();
  }
}
