import 'package:flutter/material.dart';
import 'package:homerunn/features/food_delivery/screens/food_home_screen.dart';
import 'package:homerunn/features/food_delivery/screens/kitchen_screen.dart';


Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case FoodHomeScreen.routeName:
      return MaterialPageRoute(
          settings: routeSettings, builder: (_) =>  FoodHomeScreen());
    case RestaurantScreen.routeName:
      return MaterialPageRoute(
          settings: routeSettings, builder: (_) =>  RestaurantScreen());
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