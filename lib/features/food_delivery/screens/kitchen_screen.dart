import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:homerunn/features/food_delivery/widgets/restaurant_info.dart';

import '../widgets/menu_box.dart';
import '../widgets/menu_chips.dart';

class RestaurantScreen extends StatefulWidget {
  static const String routeName = '/restaurant';
  const RestaurantScreen({Key? key}) : super(key: key);

  @override
  State<RestaurantScreen> createState() => _RestaurantScreenState();
}

class _RestaurantScreenState extends State<RestaurantScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(CupertinoIcons.back,size: 36,),
        backgroundColor: Colors.grey.shade200,
        foregroundColor: Colors.black,
        elevation: 0,
        toolbarHeight: 60,
        title: Text('Anamika\'s Kitchen'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 24),
            child: Icon(Icons.search, size: 32,),
          )
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              RestaurantInfo(),
              SizedBox(height: 20),
              MenuChips(),
              MenuBox(),
            ],
          ),
        ),
      ),
    );
  }
}
