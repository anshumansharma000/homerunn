import 'package:flutter/material.dart';
import 'package:homerunn/features/home/screens/home_screen.dart';


Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case Home_Screen.routeName:
      return MaterialPageRoute(
          settings: routeSettings, builder: (_) =>  Home_Screen());
    default:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const Scaffold(
          body: Center(
            child: Text('Screen does not exist!'),
          ),
        ),
      );
  }
}