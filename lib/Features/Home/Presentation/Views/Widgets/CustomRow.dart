// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class CustomRow extends StatelessWidget {
  CustomRow({
    super.key,
    required this.text,
    required this.onTap,
    this.TextColor,
  });
  final String text;
  void Function() onTap;
  Color? TextColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 17,
              color: TextColor ?? Colors.black),
        ),
        GestureDetector(
          onTap: onTap,
          child: Text(
            'See All',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
        ),
      ],
    );
  }
}
