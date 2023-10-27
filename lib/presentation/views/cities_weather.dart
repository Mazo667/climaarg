import 'package:climaarg/presentation/providers/location_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CitiesWeather extends ConsumerStatefulWidget {
  const CitiesWeather({super.key});

  @override
  ConsumerState createState() => _CitiesWeatherState();
}

class _CitiesWeatherState extends ConsumerState<CitiesWeather> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    ref.read(nowLocationWeatherProvider.notifier).loadLocation();
  }

  @override
  Widget build(BuildContext context) {
    final nowLocationWeather = ref.watch(nowLocationWeatherProvider);
    return ListView.builder(
      itemCount: nowLocationWeather.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(nowLocationWeather[index].name),
          subtitle: Text(nowLocationWeather[index].province),
        );
      },
    );
  }
}
