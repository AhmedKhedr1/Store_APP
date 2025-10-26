import 'package:flutter/material.dart';
import 'package:store_app/Features/Cart/Presentation/Views/Widgets/CouponTextField.dart';
import 'package:store_app/Features/Cart/Presentation/Views/Widgets/Payment_info.dart';
import 'package:store_app/Features/Login/Presentation/Views/Widgets/CustomButton.dart';
import 'package:store_app/core/Widgets/CustomBackIcon.dart';
import 'package:store_app/core/utils/Assets.dart';

class CartviewBody extends StatelessWidget {
  const CartviewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CustomBackIcon(),
              SizedBox(
                width: 128,
              ),
              Text(
                'Cart',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900),
              ),
            ],
          ),
          SizedBox(
            height: 34,
          ),
          Align(
            alignment: AlignmentGeometry.centerRight,
            child: Text(
              'Remove All',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
            ),
          ),
          Container(
            height: 80,
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            margin: EdgeInsets.only(top: 16, bottom: 8),
            decoration: BoxDecoration(
                color: Color(0xffF4F4F4),
                borderRadius: BorderRadius.circular(8)),
            child: Row(
              children: [
                Image.asset(
                  Assets.jacketimage,
                  height: 64,
                  width: 64,
                  fit: BoxFit.cover,
                )
              ],
            ),
          ),
          Spacer(),
          PaymentInfo(),
          SizedBox(
            height: 31,
          ),
          CouponTextField(),
          SizedBox(
            height: 42,
          ),
          Center(
            child: CustomButton(
              width: double.infinity,
              onPressed: () {},
              title: 'Checkout',
            ),
          )
        ],
      ),
    ));
  }
}

/*
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
 */
