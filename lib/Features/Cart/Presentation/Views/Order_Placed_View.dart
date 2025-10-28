import 'package:flutter/material.dart';
import 'package:store_app/Constant.dart';
import 'package:store_app/Features/Login/Presentation/Views/Widgets/CustomButton.dart';
import 'package:store_app/core/utils/Assets.dart';

class OrderPlacedView extends StatelessWidget {
  const OrderPlacedView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KPrimaryColor,
      body: Column(
        children: [
          SizedBox(
            height: 150,
          ),
          Expanded(
            child: Container(
                decoration: BoxDecoration(color: KPrimaryColor),
                child: Image.asset(
                  Assets.OrderPlacedSuccessfully,
                )),
          ),
          Container(
            height: 370,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(32),
                    topLeft: Radius.circular(32))),
            child: Column(
              children: [
                SizedBox(
                  height: 40,
                ),
                Text(
                  'Order Placed\nSuccessfully',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    height: 1.2,
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  'You will recieve an email confirmation',
                  style: TextStyle(color: Color(0xff8E8E8E), fontSize: 16),
                ),
                SizedBox(
                  height: 78,
                ),
                CustomButton(
                  onPressed: () {},
                  height: 52,
                  width: 342,
                  title: 'See Order details',
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
