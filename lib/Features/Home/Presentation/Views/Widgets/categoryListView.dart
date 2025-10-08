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
      height: 100,
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
                  radius: 28,
                  backgroundImage: AssetImage(
                    categorylist[index].image,
                  ), // Replace with your image path
                ),
                SizedBox(
                  height: 8,
                ),
                Text(categorylist[index].name),
              ],
            ),
          );
        },
      ),
    );
  }
}
