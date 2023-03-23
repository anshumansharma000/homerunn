import 'package:flutter/material.dart';

class MenuBox extends StatefulWidget {
  const MenuBox({Key? key}) : super(key: key);

  @override
  State<MenuBox> createState() => _MenuBoxState();
}

class _MenuBoxState extends State<MenuBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          itemCount: 12,
          primary: false,
          shrinkWrap: true,
          itemBuilder: (context, index){
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 80.0),
              child: Text('menu item'),
            );
          }),
    );
  }
}
