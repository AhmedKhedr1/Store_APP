import 'package:flutter/material.dart';
import 'package:store_app/Constant.dart';
import 'package:store_app/core/utils/Assets.dart';

class NotificationsViewbody extends StatelessWidget {
  const NotificationsViewbody({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(Assets.Notifications),
            SizedBox(
              height: 24,
            ),
            Text(
              'No Notification yet',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
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
                child:
                    Text('Explore Categories', style: TextStyle(fontSize: 16)))
          ],
        ),
      ],
    );
  }
}
