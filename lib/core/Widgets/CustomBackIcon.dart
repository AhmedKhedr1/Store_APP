
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
          icon: Icon(Icons.arrow_back_ios)),
    );
  }
}
