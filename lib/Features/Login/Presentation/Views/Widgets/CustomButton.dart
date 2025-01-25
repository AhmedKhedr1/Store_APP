
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:store_app/Constant.dart';
import 'package:store_app/core/utils/AppRouter.dart';

class CustomButton extends StatelessWidget {
   CustomButton({
    super.key,required this.onPressed
  });
void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: TextButton.styleFrom(
          backgroundColor: KPrimaryColor,
          foregroundColor: Colors.white,
          minimumSize: Size(344, 50),
        ),
        onPressed:onPressed,
        child: Text('Continue', style: TextStyle(fontSize: 16)));
  }
}
