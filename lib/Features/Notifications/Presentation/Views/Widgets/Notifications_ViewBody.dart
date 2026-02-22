// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:store_app/core/utils/Assets.dart';

class NotificationsViewbody extends StatelessWidget {
  NotificationsViewbody({super.key});
  List<String> NotificationList = [
    'Gilbert, you placed and order check your order history for full details',
    'Gilbert, Thank you for shopping with us we have canceled order #24568.',
    'Gilbert, your Order #24568 has been  confirmed check  your order history for full details'
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(NotificationList.length,
       (index){
        return Container(
          margin: EdgeInsets.symmetric(horizontal: 24,vertical: 8),
          padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
          decoration: BoxDecoration(color: Color(0xfff4f4f4),
          borderRadius: BorderRadius.circular(8)
          ),
          child: Row(
            children: [
              Image.asset(Assets.notificationbing),
              SizedBox(width: 24,),
              Expanded(child: Text(NotificationList[index],
              style: TextStyle(fontSize: 15,
              fontWeight: FontWeight.w400
              ),
              softWrap: true,
              ))
            ],
          ),
        );
       }),
    );
  }
}
