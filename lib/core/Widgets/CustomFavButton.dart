import 'package:flutter/material.dart';

class CustomFavButton extends StatelessWidget {
  const CustomFavButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: Icon(
        Icons.favorite_outline,
        size: 26,
      ),
    );
  }
}
