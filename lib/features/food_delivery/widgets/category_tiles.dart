import 'package:flutter/material.dart';
import 'package:homerunn/features/food_delivery/screens/food_home_screen.dart';

import '../../home/widgets/category_box.dart';

class CategoryTiles extends StatelessWidget {
  final List<Map> bannertitles = [
  {'name': 'Food', 'image': '', 'page': FoodHomeScreen.routeName},
  {'name': 'Grocery', 'image': '', 'page': FoodHomeScreen.routeName},
  {'name': 'Buy and Sell', 'image': '', 'page': FoodHomeScreen.routeName},
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top:15,left:5,right:5),
      height: 120.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: bannertitles.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(child: CategoryBox(bannertitle: bannertitles[index]['name']), onTap: (){
            Navigator.pushNamed(context, FoodHomeScreen.routeName);
          });

        },
      ),
    );
  }
}


