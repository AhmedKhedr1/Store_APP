import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:store_app/core/utils/Assets.dart';

class CustomBackIcon extends StatelessWidget {
  const CustomBackIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[200], // Background color
        shape: BoxShape.circle, // Makes the container circular
      ),
      child: IconButton(
          onPressed: () {
            GoRouter.of(context).pop();
          },
          icon: RotatedBox(
              quarterTurns: 2, child: Image.asset(Assets.arrow_right))),
    );
  }
}
