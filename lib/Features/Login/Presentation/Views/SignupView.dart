import 'package:flutter/material.dart';
import 'package:store_app/Constant.dart';
import 'package:store_app/Features/Login/Presentation/Views/Widgets/SignUpViewBody.dart';

class Signupview extends StatelessWidget {
  const Signupview({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: KBackgroundColor,
      body: Signupviewbody(),
    );
  }
}
