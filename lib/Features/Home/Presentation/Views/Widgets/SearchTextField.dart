import 'package:flutter/material.dart';
import 'package:store_app/core/utils/Assets.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 4),
          prefixIcon: Image.asset(Assets.KSearch),
          fillColor: Colors.grey.withOpacity(0.15),
          filled: true,
          hintText: 'Search',
          hintStyle: TextStyle(),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(28),
              borderSide: BorderSide.none),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(28),
              borderSide: BorderSide.none),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(28),
              borderSide: BorderSide.none)),
    );
  }
}
