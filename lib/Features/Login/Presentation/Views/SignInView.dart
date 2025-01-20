import 'package:flutter/material.dart';
import 'package:store_app/Constant.dart';
import 'package:store_app/Features/Login/Presentation/Views/Widgets/SigninViewBody.dart';

class Signinview extends StatelessWidget {
  const Signinview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KBackgroundColor,
      body: Signinviewbody(),
    );
  }
}
