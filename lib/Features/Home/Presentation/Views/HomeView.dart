import 'package:flutter/material.dart';
import 'package:store_app/Constant.dart';
import 'package:store_app/Features/Home/Presentation/Views/Widgets/HomeViewBody.dart';
import 'package:store_app/core/Widgets/CustomBottomAppBar.dart';

class Homeview extends StatelessWidget {
  const Homeview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KBackgroundColor,
      body: Homeviewbody(),
      bottomNavigationBar: CustomBottomAppBar(),
    );
  }
}
