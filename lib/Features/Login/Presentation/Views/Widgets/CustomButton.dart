import 'package:flutter/material.dart';
import 'package:store_app/Constant.dart';

class CustomButton extends StatelessWidget {
  CustomButton({super.key, required this.onPressed, this.title, this.height,this.width});
  void Function()? onPressed;
  String? title;
  double? height;
  double? width;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: TextButton.styleFrom(
          backgroundColor: KPrimaryColor,
          foregroundColor: Colors.white,
          minimumSize: Size(width ?? 344, height ?? 50),
        ),
        onPressed: onPressed,
        child: Text(title ?? 'Continue', style: TextStyle(fontSize: 16)));
  }
}
