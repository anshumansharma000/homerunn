import 'package:flutter/material.dart';
class CircularWidget extends StatelessWidget {
  final String text;
  final String image;
  const CircularWidget({
    super.key, required this.text, required this.image
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text(text, style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),)),
      width: 120,
      height: 120,
      margin: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(60),
        image: DecorationImage(
        image: AssetImage(image),
        opacity: 0.9,
        fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
            Colors.black.withOpacity(0.3),
            BlendMode.darken,
          ),
      ),
      ),
    );
  }
}