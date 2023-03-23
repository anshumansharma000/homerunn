import 'package:flutter/material.dart';
class MenuChip extends StatelessWidget {
  const MenuChip({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey.shade300,
          borderRadius: BorderRadius.circular(24),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Text('Breakfast', style: TextStyle(color: Colors.red.shade900),),
        ),
      ),
    );
  }
}
