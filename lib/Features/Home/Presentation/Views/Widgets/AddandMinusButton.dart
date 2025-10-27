import 'package:flutter/material.dart';
import 'package:store_app/Constant.dart';

class AddandMinusButton extends StatelessWidget {
  AddandMinusButton(
      {super.key,
      required this.image,
      required this.onTap,
      this.height,
      this.width});
  final String image;
  final Function() onTap;
  double? height;
  double? width;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          height: height ?? 40,
          width: width ?? 40,
          decoration:
              BoxDecoration(color: KPrimaryColor, shape: BoxShape.circle),
          child: Image.asset(
            image,
            height: 12,
            width: 12,
          )),
    );
  }
}
