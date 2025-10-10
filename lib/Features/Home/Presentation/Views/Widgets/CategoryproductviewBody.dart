// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:store_app/Features/Home/Presentation/Views/Widgets/ProductCard.dart';
import 'package:store_app/Features/Home/data/Product_model.dart';
import 'package:store_app/core/Widgets/CustomBackIcon.dart';
import 'package:store_app/core/utils/Assets.dart';

class Categoryproductviewbody extends StatelessWidget {
  Categoryproductviewbody({super.key});

  final List<ProductModel> HoodiesList = [
    ProductModel(
        image: Assets.Hoodies1,
        name: 'Men\'s Fleece Pullover Hoodie',
        price: 100.00),
    ProductModel(
        image: Assets.Hoodies2,
        name: 'Fleece Pullover Skate Hoodie',
        price: 150.97),
    ProductModel(
        image: Assets.Hoodies3, name: 'Fleece Skate Hoodie', price: 110.00),
    ProductModel(
        image: Assets.Hoodies4,
        name: 'Men\'s Ice-Dye Pullover Hoodie',
        price: 128.97),
    ProductModel(
        image: Assets.MenMonogramHoodie,
        name: 'Men\'s Monogram Hoodie',
        price: 52.97),
    ProductModel(
        image: Assets.MenPulloverBasketballHoodie,
        name: 'Men\s Pullover Basketball Hoodie',
        price: 105.00),
  ];
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 64),
                CustomBackIcon(),
                SizedBox(height: 16),
                Text('Hoodies',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.w900)),
                SizedBox(height: 16),
              ],
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
              padding: EdgeInsets.only(right: 16, left: 16, bottom: 8),
              child: GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                padding: EdgeInsets.zero,
                scrollDirection: Axis.vertical,
                itemCount: HoodiesList.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: .61,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                ),
                itemBuilder: (context, index) {
                  return ProductCard(
                      image_height: 234,
                      OnTap: () {},
                      productModel: HoodiesList[index]);
                },
              )),
        ),
      ],
    );
  }
}
