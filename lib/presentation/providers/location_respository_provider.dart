// Este repositorio es inmutable
import 'package:climaarg/infraestructure/datasources/weatherdb_datasource.dart';
import 'package:climaarg/infraestructure/repository/location_repository_impl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final locationRepositoryProvider = Provider((ref) {
  return LocationRepositoryImpl(locationDatasource: LocationDbDatasource());
});
