import 'package:flutter/material.dart';

class CategoryTile extends StatelessWidget {
  final List<String> bannertitle = [
    'Food',
    'Grocery',
    'Buy & Sell'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top:15,left:5,right:5),
      height: 120.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: bannertitle.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: EdgeInsets.symmetric(horizontal: 8.0),
            decoration: BoxDecoration(color: Color(0xFF696969),
              borderRadius: BorderRadius.circular(16.0),
            image:DecorationImage(image: AssetImage('assets/images/northindian.jpg'),fit: BoxFit.cover,
              opacity: 0.9,
              // fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.3),
                BlendMode.darken,)
              ),
            ),
            child: Center(child: Text(bannertitle[index],style: TextStyle(color: Colors.white,
            fontWeight: FontWeight.w500,fontSize: 20),)),
             width: 120.0,
          );

        },
      ),
    );
  }
}
