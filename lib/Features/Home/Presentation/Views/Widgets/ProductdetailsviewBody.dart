import 'package:flutter/material.dart';
import 'package:store_app/core/Widgets/CustomBackIcon.dart';
import 'package:store_app/core/Widgets/CustomFavButton.dart';

class ProductdetailsviewBody extends StatelessWidget {
  const ProductdetailsviewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.only(right: 24, left: 24, top: 24),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [CustomBackIcon(), CustomFavButton()],
            ),
            
          ],
        ),
      ),
    );
  }
}
