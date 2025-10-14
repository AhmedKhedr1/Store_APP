// ignore_for_file: camel_case_types, override_on_non_overriding_member, file_names, annotate_overrides

import 'package:flutter/material.dart';
import 'package:store_app/Features/Home/data/Category_model.dart';
import 'package:store_app/core/utils/Assets.dart';

class categoryListView extends StatelessWidget {
  categoryListView({super.key, required this.scrollDirection});
  final Axis scrollDirection;
  @override
  final List<CategoryModel> categorylist = [
    CategoryModel(image: Assets.KHoodiesImage, name: 'Hoodies'),
    CategoryModel(image: Assets.KShortsImage, name: 'Shorts'),
    CategoryModel(image: Assets.KShoesImage, name: 'Shoes'),
    CategoryModel(image: Assets.KBagImage, name: 'Bag'),
    CategoryModel(image: Assets.KAccessoriesImage, name: 'Accessories'),
  ];
  Widget build(BuildContext context) {
    return SizedBox(
      height: 108,
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: scrollDirection,
        itemCount: categorylist.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 34,
                  backgroundImage: AssetImage(categorylist[index].image),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(categorylist[index].name)
              ],
            ),
          );
        },
      ),
    );
  }
}
