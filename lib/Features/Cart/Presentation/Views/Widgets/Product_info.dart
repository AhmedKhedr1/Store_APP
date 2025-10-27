import 'package:flutter/material.dart';
import 'package:store_app/Features/Home/Presentation/Views/Widgets/AddandMinusButton.dart';
import 'package:store_app/core/utils/Assets.dart';

class ProductInfo extends StatelessWidget {
  const ProductInfo({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 12),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Text(
                "Men's Harrington Jacket",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff272727),
                ),
              ),
              SizedBox(
                width: 44,
              ),
              Text(
                '\$148',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              )
            ],
          ),
          Row(
            children: [
              Text(
                'Size - ',
                style: TextStyle(
                  fontSize: 15,
                  color: Color(0xff8E8E8E),
                ),
              ),
              Text(
                'M',
                style: TextStyle(
                  fontSize: 15,
                  color: Color(0xff272727),
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(width: 24),
              Text(
                'Color - ',
                style: TextStyle(
                  fontSize: 15,
                  color: Color(0xff8E8E8E),
                ),
              ),
              Text(
                'Lemon',
                style: TextStyle(
                  fontSize: 15,
                  color: Color(0xff272727),
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                width: 32,
              ),
              AddandMinusButton(
                image: Assets.add,
                height: 24,
                width: 24,
                onTap: () {},
              ),
              SizedBox(
                width: 4,
              ),
              AddandMinusButton(
                image: Assets.minus,
                height: 24,
                width: 24,
                onTap: () {},
              )
            ],
          ),
        ],
      ),
    );
  }
}
