import 'package:flutter/material.dart';

class SearchEngine extends StatelessWidget {
  const SearchEngine({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  TextField(
      decoration: InputDecoration(
        hintText: 'Search',
        prefixIcon: Icon(Icons.search),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
          borderSide: BorderSide.none,
        ),
        filled: true,
        contentPadding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
        fillColor: Colors.grey[200],
      ),
    );

  }
}

