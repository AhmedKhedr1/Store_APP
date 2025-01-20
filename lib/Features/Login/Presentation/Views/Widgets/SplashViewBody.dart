import 'package:flutter/material.dart';
import 'package:store_app/core/utils/Assets.dart';

class Splashviewbody extends StatelessWidget {
  const Splashviewbody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(child: Image.asset(Assets.kLogo)),
      ],
    );
  }
}
