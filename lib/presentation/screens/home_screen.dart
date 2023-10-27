import 'package:climaarg/presentation/views/views.dart';
import 'package:climaarg/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key, required this.pageIndex});

  static const name = 'HomeScreen';
  final int pageIndex;

  final viewRoutes = const <Widget>[
    CitiesWeather(),
    Placeholder(),
    Placeholder(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: pageIndex,
        children: viewRoutes,
      ),
      bottomNavigationBar: CustomBottomNavigation(currentIndex: pageIndex),
    );
  }
}
