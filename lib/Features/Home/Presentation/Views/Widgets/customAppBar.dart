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
        CircleAvatar(
          radius: 20,
          backgroundImage: AssetImage(Assets.KprofileImage),
        ),
        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
              color: KPrimaryColor, borderRadius: BorderRadius.circular(28)),
          child: IconButton(onPressed: () {},
           icon: Icon(
            Icons.shopping_bag_outlined,
            color: Colors.white,
            size: 18,
           )),
        )
      ],
    );
  }
}
