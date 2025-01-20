import 'package:flutter/material.dart';
import 'package:store_app/Constant.dart';
import 'package:store_app/Features/Login/Presentation/Views/Widgets/SplashViewBody.dart';

class Splashview extends StatelessWidget {
  const Splashview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:KPrimaryColor,
      body: Splashviewbody(),
    );
  }
}