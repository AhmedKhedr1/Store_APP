import 'package:flutter/material.dart';
import 'package:store_app/Constant.dart';
import 'package:store_app/Features/Notifications/Presentation/Views/Widgets/Notifications_ViewBody.dart';

class NotificationsView extends StatelessWidget {
  const NotificationsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: KBackgroundColor,
        automaticallyImplyLeading: false,
        title: Text(
          'Notifications',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        centerTitle: true,
      ),
      backgroundColor: KBackgroundColor,
      body: NotificationsViewbody(),
    );
  }
}
/* Row(
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
                    minimumSize: Size(200, 54)),
                onPressed: () {},
                child: Text(
                  'Explore Categories',
                  style: TextStyle(fontSize: 16),
                ))
          ],
        ),
      ],
    ); */
