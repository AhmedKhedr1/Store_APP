
import 'package:flutter/material.dart';
import 'package:store_app/Constant.dart';

class AddandMinusButton extends StatelessWidget {
  const AddandMinusButton({
    super.key,
    required this.image,
    required this.onTap,
  });
  final String image;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          height: 40,
          width: 40,
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
