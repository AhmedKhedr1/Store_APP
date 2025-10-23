import 'package:flutter/material.dart';
import 'package:store_app/Constant.dart';
import 'package:store_app/Features/Orders/Presentation/Views/Widgets/Orders_ViewBody.dart';

class Ordersview extends StatelessWidget {
  const Ordersview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: KBackgroundColor,
        automaticallyImplyLeading: false,
        title: Text(
          'Orders',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        centerTitle: true,
      ),
      backgroundColor: KBackgroundColor,
      body: OrdersViewbody(),
    );
  }
}
