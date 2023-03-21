import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:homerunn/constants/global_variables.dart';
import 'package:homerunn/features/food_delivery/models/Carousel.dart';
import 'package:homerunn/features/food_delivery/models/Kitchen.dart';
import  'package:http/http.dart' as http;

import '../../../constants/response_handler.dart';

class FoodApiServices{
  Future<List<dynamic>> getCarousels (BuildContext context) async {
    List<dynamic> carouselList = [];
    http.Response res = await http.get(Uri.parse('$api_uri/carousels'),
    headers: {
      'Content-Type': 'application/json; charset=UTF-8',
    }
    );
    if (context.mounted) {
      httpResponseHandler(
          context: context,
          onSuccess: () {
            for (var item in jsonDecode(res.body)['data']) {
              carouselList.add(
                Carousel.fromJson(item)
              );
        }
      }, response: res);
    }
    return carouselList;
  }
  Future<List<dynamic>> getKitchens (BuildContext context) async {
    List<dynamic> kitchensList = [];
    http.Response res = await http.get(Uri.parse('$api_uri/kitchens'),
        headers: {
          'Content-Type': 'application/json; charset=UTF-8',
        }
    );
    if (context.mounted) {
      httpResponseHandler(
          context: context,
          onSuccess: () {
            for (var item in jsonDecode(res.body)['data']) {
              kitchensList.add(
                  Kitchen.fromJson(item)
              );
            }
          }, response: res);
    }
    return kitchensList;
  }
}