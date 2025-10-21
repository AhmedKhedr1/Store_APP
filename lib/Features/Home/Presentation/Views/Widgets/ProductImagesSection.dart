// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:store_app/core/utils/Assets.dart';

class ProductImagesSection extends StatelessWidget {
  ProductImagesSection({super.key});
  List<String> images = [
    Assets.jacketimage,
    Assets.jacketimage2,
    Assets.jacketimage3
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          images.length,
          (index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: Image.asset(
                images[index],
                width: 161,
                height: 248,
                fit: BoxFit.cover,
              ),
            );
          },
        ),
      ),
    );
  }
}
