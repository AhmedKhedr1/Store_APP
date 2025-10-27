import 'package:flutter/material.dart';
import 'package:store_app/core/utils/Assets.dart';

class PaymentMethod extends StatelessWidget {
  const PaymentMethod({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.only(left: 17, top: 14, bottom: 17),
          decoration: BoxDecoration(
              color: Color(0xffF4F4F4), borderRadius: BorderRadius.circular(8)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Payment Method',
                style: TextStyle(
                  color: Color(0xff8E8E8E),
                ),
              ),
              SizedBox(
                height: 6,
              ),
              Row(
                children: [
                  Text(
                    '**** 4187',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 16),
                  ),
                  SizedBox(
                    width: 11,
                  ),
                  Image.asset(Assets.mastercard)
                ],
              )
            ],
          ),
        ),
        Positioned(
            right: 10,
            top: 26,
            child: Image.asset(
              Assets.arrow_right,
              width: 24,
              height: 24,
            ))
      ],
    );
  }
}
