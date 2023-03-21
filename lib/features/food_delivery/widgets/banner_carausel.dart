import 'package:flutter/material.dart';
import 'package:homerunn/features/food_delivery/services/food_delivery_api_services.dart';
import 'package:provider/provider.dart';

import '../../../common/providers/loading_provider.dart';

class FoodBannerCarousel extends StatefulWidget {
  @override
  State<FoodBannerCarousel> createState() => _FoodBannerCarouselState();
}

class _FoodBannerCarouselState extends State<FoodBannerCarousel> {
  final List<String> bannerImages = [
    'https://cdn1.vectorstock.com/i/1000x1000/07/40/fast-food-best-daily-offer-banner-template-vector-26320740.jpg',
    'https://cdn1.vectorstock.com/i/1000x1000/07/40/fast-food-best-daily-offer-banner-template-vector-26320740.jpg',
    'https://cdn1.vectorstock.com/i/1000x1000/07/40/fast-food-best-daily-offer-banner-template-vector-26320740.jpg',
    'https://cdn1.vectorstock.com/i/1000x1000/07/40/fast-food-best-daily-offer-banner-template-vector-26320740.jpg',
  ];
  var carousels;
  FoodApiServices foodApiServices = FoodApiServices();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getCarousels();
  }
  void getCarousels() async{
    final loadingProvider = Provider.of<LoadingProvider>(context, listen: false);
    loadingProvider.isLoading = true;
    carousels = await foodApiServices.getCarousels(context);
    setState(() {});
    loadingProvider.isLoading = false;
  }
  @override
  Widget build(BuildContext context) {
    final isLoading = Provider.of<LoadingProvider>(context).isLoading;
    return isLoading ? Container(
      height: 200,
    ) : Container(
      height: 200.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: carousels?.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: EdgeInsets.symmetric(horizontal: 8.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.0),
              image: DecorationImage(
                image: NetworkImage(carousels[index].carouselPhoto),
                fit: BoxFit.cover,
              ),
            ),
            width: 320,
          );
        },
      ),
    );
  }
}


