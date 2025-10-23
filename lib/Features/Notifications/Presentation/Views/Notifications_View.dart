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
