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
      width: 100,
      height: 100,
      margin: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
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