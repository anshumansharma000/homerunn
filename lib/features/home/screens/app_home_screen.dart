import 'package:flutter/material.dart';
import 'package:homerunn/features/home/widgets/banner_carausel.dart';
import 'package:homerunn/features/home/widgets/category_tiles.dart';
import 'package:homerunn/features/home/widgets/search_engine.dart';
class AppHomeScreen extends StatelessWidget {
  const AppHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Good Evening Aditya!',style: TextStyle(fontSize: 20),),
                SizedBox(width:10),
                CircleAvatar(backgroundImage:AssetImage('assets/images/southindian.jpeg') ,),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(children: [
              Icon(Icons.location_on_sharp,color: Color(0xFF696969),),
              SizedBox(width: 8),
              Text('Delivering to Palm Olympia',style: TextStyle(color: Color(0xFF696969)),),
            ],),
          ),
          SizedBox(height:10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            child: SearchEngine(),
          ),
          CategoryTile(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 8),
            child: FoodBannerCarousel(),
          ),
        ],
      )),
    );
  }
}
