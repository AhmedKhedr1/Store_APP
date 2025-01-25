import 'package:flutter/material.dart';
import 'package:store_app/Constant.dart';
import 'package:store_app/core/utils/Assets.dart';

class customAppBar extends StatelessWidget {
  const customAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          decoration: BoxDecoration(
            color: KPrimaryColor,
            borderRadius: BorderRadius.circular(25),
          ),
          child: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.shopping_bag_outlined,
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }
}
