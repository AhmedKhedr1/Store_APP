import 'package:flutter/material.dart';
import 'package:store_app/Constant.dart';
import 'package:store_app/core/Widgets/CustomBackIcon.dart';
import 'package:store_app/core/utils/Assets.dart';

class CartviewBody extends StatelessWidget {
  const CartviewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 13),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomBackIcon(),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Image.asset(
                    Assets.cart,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Text(
                    'Your Cart is Empty',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: KPrimaryColor,
                        foregroundColor: Colors.white,
                        minimumSize: Size(200, 54),
                      ),
                      onPressed: () {},
                      child: Text('Explore Categories',
                          style: TextStyle(fontSize: 16)))
                ],
              ),
            ],
          ),
          Spacer(),
        ],
      ),
    ));
  }
}
