import 'package:flutter/material.dart';
class CategoryBox extends StatelessWidget {
  const CategoryBox({
    super.key,
    required this.bannertitle,
  });

  final String bannertitle;

  @override
  Widget build(BuildContext context) {
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
      child: Center(child: Text(bannertitle,style: TextStyle(color: Colors.white,
          fontWeight: FontWeight.w500,fontSize: 20),)),
      width: 120.0,
    );
  }
}