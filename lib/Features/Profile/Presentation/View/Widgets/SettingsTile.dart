// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:store_app/Constant.dart';
import 'package:store_app/core/utils/Assets.dart';

class SettingsTile extends StatelessWidget {
  SettingsTile({super.key, required this.buttoninfo, required this.onPressed});
  final String buttoninfo;
  void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 4),
      padding: EdgeInsets.all(10),
      height: 60,
      width: double.infinity,
      decoration: BoxDecoration(
          color: KLightColor, borderRadius: BorderRadius.circular(8)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            buttoninfo,
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
          ),
          IconButton(
              onPressed: onPressed, icon: Image.asset(Assets.arrow_right))
        ],
      ),
    );
  }
}
