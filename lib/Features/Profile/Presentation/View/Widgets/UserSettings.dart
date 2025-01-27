import 'package:flutter/material.dart';
import 'package:store_app/Constant.dart';

class UserSettings extends StatelessWidget {
  UserSettings({super.key, required this.buttoninfo, required this.onPressed});
  final String buttoninfo;
  void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Container(
        height: 56,
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
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            IconButton(onPressed: onPressed, icon: Icon(Icons.chevron_right))
          ],
        ),
      ),
    );
  }
}
