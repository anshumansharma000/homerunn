import 'package:flutter/material.dart';
import 'package:homerunn/features/food_delivery/widgets/menu_chip.dart';
class MenuChips extends StatefulWidget {
  const MenuChips({Key? key}) : super(key: key);

  @override
  State<MenuChips> createState() => _MenuChipsState();
}

class _MenuChipsState extends State<MenuChips> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: ListView.builder(itemCount: 4, scrollDirection: Axis.horizontal,
          shrinkWrap: true, primary: false,
          itemBuilder: (BuildContext context, index){
            return MenuChip();
      }),
    );
  }
}
