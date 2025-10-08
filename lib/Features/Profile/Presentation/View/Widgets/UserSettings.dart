import 'package:flutter/material.dart';
import 'package:store_app/Constant.dart';
import 'package:store_app/core/utils/Assets.dart';

class UserSettings extends StatelessWidget {
  UserSettings({super.key, required this.buttoninfo, required this.onPressed});
  final String buttoninfo;
  void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Container(
        height: 60,
        width: double.infinity,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: KLightColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              buttoninfo,
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
            ),
            IconButton(onPressed: onPressed, icon: Image.asset(Assets.arrow_right,))
          ],
        ),
      ),
    );
  }
}
