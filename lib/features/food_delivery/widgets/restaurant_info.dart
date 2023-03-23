import 'package:flutter/material.dart';
class RestaurantInfo extends StatelessWidget {
  const RestaurantInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 16),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.only(topLeft: Radius.zero,topRight: Radius.zero, bottomLeft: Radius.circular(24), bottomRight: Radius.circular(24)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Container(
                height: 100,
                width: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  image: DecorationImage(
                    image: AssetImage('assets/images/southindian.jpeg'),
                    fit: BoxFit.cover,
                  )
                ),
              )
            ],
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Homechef- Anamika Verma'),
                  SizedBox(height: 10),
                  Text('Please order food. You\'ll savor every bite to the fullest.', textAlign: TextAlign.left,),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Rating- 4 stars'),
                      Text('Delivery in 38 mins'),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
