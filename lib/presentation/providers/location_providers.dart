import 'package:climaarg/domain/entities/forecast.dart';
import 'package:climaarg/presentation/providers/location_respository_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final nowLocationWeatherProvider =
    StateNotifierProvider<LocationNotifier, List<Location>>((ref) {
  final fetchLocation =
      ref.watch(locationRepositoryProvider).getActualWeather();
  return LocationNotifier(fetchMoreMovies: fetchLocation);
});

typedef MovieCallback = Future<List<Location>>;

class LocationNotifier extends StateNotifier<List<Location>> {
  bool isLoading = false;
  MovieCallback fetchMoreMovies;

  LocationNotifier({required this.fetchMoreMovies}) : super([]);

  Future<void> loadLocation() async {
    final List<Location> locations = await fetchMoreMovies;
    state = [...state, ...locations];
  }
}
