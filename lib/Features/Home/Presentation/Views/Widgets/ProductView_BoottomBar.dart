import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:store_app/Constant.dart';
import 'package:store_app/core/utils/AppRouter.dart';

class ProductView_BoottomBar extends StatelessWidget {
  const ProductView_BoottomBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(Approuter.KCartView);
      },
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
              '\$148',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            Spacer(),
            Text(
              'Add to Bag',
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
