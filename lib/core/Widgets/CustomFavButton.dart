import 'package:flutter/material.dart';
import 'package:store_app/core/utils/Assets.dart';

class CustomFavButton extends StatelessWidget {
  const CustomFavButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: Image.asset(
        Assets.KFavourite,
        height: 20,
        width: 20,
        fit: BoxFit.fill,
      ),
    );
  }
}
