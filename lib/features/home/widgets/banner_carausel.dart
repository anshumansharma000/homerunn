import 'package:flutter/material.dart';

class FoodBannerCarousel extends StatelessWidget {
  final List<String> bannerImages = [
    'https://cdn1.vectorstock.com/i/1000x1000/07/40/fast-food-best-daily-offer-banner-template-vector-26320740.jpg',
    'https://cdn1.vectorstock.com/i/1000x1000/07/40/fast-food-best-daily-offer-banner-template-vector-26320740.jpg',
    'https://cdn1.vectorstock.com/i/1000x1000/07/40/fast-food-best-daily-offer-banner-template-vector-26320740.jpg',
    'https://cdn1.vectorstock.com/i/1000x1000/07/40/fast-food-best-daily-offer-banner-template-vector-26320740.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: bannerImages.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: EdgeInsets.symmetric(horizontal: 8.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.0),
              image: DecorationImage(
                image: NetworkImage(bannerImages[index]),
                fit: BoxFit.cover,
              ),
            ),
            width: 320.0,
          );
        },
      ),
    );
  }
}
