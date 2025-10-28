import 'package:flutter/material.dart';
import 'package:store_app/Features/Cart/Presentation/Views/Cart_View.dart';
import 'package:store_app/core/utils/Assets.dart';

class CouponTextField extends StatelessWidget {
  const CouponTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        filled: true,
        fillColor: Color(0xffF4F4F4),
        prefixIcon: Image.asset(Assets.discount),
        suffixIcon: Padding(
          padding: const EdgeInsets.only(right: 8),
          child: arrowButton(),
        ),
        hintText: 'Enter Coupon Code',
        hintStyle: TextStyle(
          color: Color(0xff8E8E8E),
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 16),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide.none),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide.none),
      ),
    );
  }
}
