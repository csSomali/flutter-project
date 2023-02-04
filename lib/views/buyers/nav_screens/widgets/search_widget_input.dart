import 'package:flutter/material.dart';

class SearchInputWidget extends StatelessWidget {
  const SearchInputWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: const TextField(
        decoration: InputDecoration(
            fillColor: Colors.white,
            filled: true,
            hintText: "search",
            border: OutlineInputBorder(borderSide: BorderSide.none),
            prefixIcon: Icon(Icons.search,color: Color.fromARGB(255, 253, 143, 53),)),
      ),
    );
  }
}