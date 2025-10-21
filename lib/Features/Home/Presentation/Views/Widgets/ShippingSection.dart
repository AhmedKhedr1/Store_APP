
import 'package:flutter/material.dart';

class ShippingSection extends StatelessWidget {
  const ShippingSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Shipping & Returns',
          style: TextStyle(
              color: Colors.black, fontSize: 19, fontWeight: FontWeight.w900),
        ),
        SizedBox(
          height: 12,
        ),
        Text(
          'Free standard shipping and free 60-day returns',
          style: TextStyle(
            color: Color(
              0xff949494,
            ),
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}