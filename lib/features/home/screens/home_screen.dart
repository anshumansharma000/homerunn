import 'package:flutter/material.dart';
import 'package:homerunn/features/home/widgets/banner_carausel.dart';
import 'package:homerunn/features/home/widgets/circular_widget.dart';
import 'package:homerunn/features/home/widgets/kitchen_card.dart';
import 'package:homerunn/features/home/widgets/search_engine.dart';

class Home_Screen extends StatelessWidget {
  static const routeName = "/homeScreen";

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    final fontSize = (width) * 0.045;
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Text(
                            "Good Evening Aditya!",
                            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 24),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    child: Text("Deilivering to"),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    child: DropdownButtonHideUnderline(
                      child: SizedBox(
                        width: 250,
                        child: DropdownButton(
                          value: "current location",
                          items: [
                            DropdownMenuItem(
                              child: Text("Current Location"),
                              value: "current location",
                            ),
                            DropdownMenuItem(child: Text("Set Location"), value: "set location",)
                          ],
                          onChanged: (_) {
                          },
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                    child: SearchEngine(),
                  ),
                  FoodBannerCarousel(),

                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Cuisines",
                        ),
                        TextButton(onPressed: () {}, child: Text("View all"))
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          CircularWidget(text: 'North Indian', image:'assets/images/northindian.jpg'),
                          CircularWidget(text: 'South Indian', image:'assets/images/southindian.jpeg'),
                          CircularWidget(text: 'Continental',image:'assets/images/continental.jpeg'),
                          CircularWidget(text: 'Chinese',image:'assets/images/chinese.jpeg'),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Home Kitchens",
                        ),
                        TextButton(onPressed: () {}, child: Text("View all"))
                      ],
                    ),
                  ),
                  KitchenCard(fontSize: fontSize),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}



