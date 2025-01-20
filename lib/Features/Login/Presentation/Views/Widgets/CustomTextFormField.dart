import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {super.key, required this.controller, required this.hinttext});
  final TextEditingController? controller;
  final String hinttext;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: TextFormField(
        maxLines: 1,
        controller: TextEditingController(),
        decoration: InputDecoration(
          fillColor: Colors.grey.withOpacity(0.15),
          filled: true,
          hintText: hinttext,
          hintStyle: TextStyle(color: Colors.grey, fontSize: 16),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4),
              borderSide: BorderSide.none),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4),
              borderSide: BorderSide.none),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4),
              borderSide: BorderSide.none),
        ),
      ),
    );
  }
}
