import 'package:flutter/material.dart';
import 'package:store_app/Constant.dart';
import 'package:store_app/Features/Home/Presentation/Views/Widgets/CategoryproductviewBody.dart';

class Categoryproductview extends StatelessWidget {
  const Categoryproductview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KBackgroundColor,
      body: Categoryproductviewbody(),
    );
  }
}
