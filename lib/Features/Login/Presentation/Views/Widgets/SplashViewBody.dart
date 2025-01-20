import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:store_app/core/utils/AppRouter.dart';
import 'package:store_app/core/utils/Assets.dart';

class Splashviewbody extends StatefulWidget {
  const Splashviewbody({super.key});

  @override
  State<Splashviewbody> createState() => _SplashviewbodyState();
}

class _SplashviewbodyState extends State<Splashviewbody> {
  @override
  void initState() {
    // TODO: implement initState
    NavigateToSigninView();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(child: Image.asset(Assets.kLogo)),
      ],
    );
  }


  // navigation funcation
  void NavigateToSigninView() {
    Future.delayed(
      const Duration(seconds: 2),
      () {
        GoRouter.of(context).push(Approuter.KSigninView);
      },
    );
  }
}
