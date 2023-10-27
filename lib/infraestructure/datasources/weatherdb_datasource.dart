import 'package:climaarg/domain/datasources/location_datasource.dart';
import 'package:climaarg/domain/entities/forecast.dart';
import 'package:climaarg/infraestructure/mappers/location_mapper.dart';
import 'package:climaarg/infraestructure/models/locationdb_response.dart';
import 'package:dio/dio.dart';

class LocationDbDatasource extends LocationDatasource {
  final dio = Dio(BaseOptions(
    baseUrl: 'https://ws.smn.gob.ar/',
  ));

  @override
  Future<List<Location>> getActualWeather() async {
    final response = await dio.get('map_items/weather');
    final locationResponse = locationResponseFromJson(response.data);
    final List<Location> locations = locationResponse
        .map((res) => LocationMapper.locationToEntity(res))
        .toList();
    return locations;
  }

  @override
  Future<List<Location>> getForecastDay1() {
    // TODO: implement getForecastDay1
    throw UnimplementedError();
  }

  @override
  Future<List<Location>> getForecastDay2() {
    // TODO: implement getForecastDay2
    throw UnimplementedError();
  }

  @override
  Future<List<Location>> getForecastDay3() {
    // TODO: implement getForecastDay3
    throw UnimplementedError();
  }

  @override
  Future<List<Location>> getForecastDay4() {
    // TODO: implement getForecastDay4
    throw UnimplementedError();
  }
}
