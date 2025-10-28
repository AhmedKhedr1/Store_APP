import 'package:flutter/material.dart';
import 'package:store_app/Constant.dart';

class BottomNavButton extends StatelessWidget {
  const BottomNavButton({
    super.key,
    required this.price,
    required this.title, required this.onTap,
  });
  final String price, title;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 24, vertical: 20),
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        width: double.infinity,
        height: 54,
        decoration: BoxDecoration(
            color: KPrimaryColor, borderRadius: BorderRadius.circular(100)),
        child: Row(
          children: [
            Text(
              price,
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            Spacer(),
            Text(
              title,
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
