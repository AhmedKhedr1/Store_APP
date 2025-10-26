import 'package:flutter/material.dart';
import 'package:store_app/Constant.dart';
import 'package:store_app/core/utils/Assets.dart';

class CouponTextField extends StatelessWidget {
  const CouponTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: TextField(
        decoration: InputDecoration(
            filled: true,
            fillColor: Color(0xffF4F4F4),
            prefixIcon: Image.asset(Assets.discount),
            suffixIcon: Padding(
              padding: const EdgeInsets.only(right: 8),
              child: arrowButton(),
            ),
            hintText: 'Enter Coupon Code',
            hintStyle: TextStyle(color: Color(0xff8E8E8E)),
            contentPadding: const EdgeInsets.symmetric(vertical: 16),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide.none),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide.none)),
      ),
    );
  }
}

class arrowButton extends StatelessWidget {
  const arrowButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(color: KPrimaryColor, shape: BoxShape.circle),
        child: Image.asset(
          Assets.arrow_right,
          color: Colors.white,
          height: 12,
          width: 12,
        ));
  }
}
