// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:store_app/Features/Home/Presentation/Views/Widgets/CustomProductListView.dart';
import 'package:store_app/Features/Home/Presentation/Views/Widgets/CustomRow.dart';
import 'package:store_app/Features/Home/Presentation/Views/Widgets/SearchTextField.dart';
import 'package:store_app/Features/Home/Presentation/Views/Widgets/categoryListView.dart';
import 'package:store_app/Features/Home/Presentation/Views/Widgets/customAppBar.dart';
import 'package:store_app/Features/Home/data/Product_model.dart';
import 'package:store_app/core/utils/AppRouter.dart';
import 'package:store_app/core/utils/Assets.dart';

class Homeviewbody extends StatefulWidget {
  const Homeviewbody({super.key});

  @override
  State<Homeviewbody> createState() => _HomeviewbodyState();
}

class _HomeviewbodyState extends State<Homeviewbody> {
  @override
  final List<ProductModel> TopSellingLsit = [
    ProductModel(
        image: Assets.jacketimage,
        name: 'Men\'s Harrington Jacket',
        price: 148.00),
    ProductModel(
        image: Assets.slidesimage,
        name: 'Max Cirro Men\'s Slides',
        price: 55.00),
    ProductModel(
        image: Assets.coachesimage,
        name: 'Men\'s Coaches Jacket',
        price: 66.97),
  ];
  final List<ProductModel> NewInLsit = [
    ProductModel(
        image: Assets.Nike_Unscriptedimage,
        name: 'Nike Unscripted',
        price: 120.000),
    ProductModel(image: Assets.Nike_SBimage, name: 'Nike SB', price: 100),
    ProductModel(
        image: Assets.Nike_Windrunnerimage,
        name: 'Nike Windrunner',
        price: 52.97),
  ];
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: ListView(
          children: [
            SizedBox(
              height: 14,
            ),
            customAppBar(),
            SizedBox(
              height: 24,
            ),
            SearchTextField(),
            SizedBox(
              height: 24,
            ),
            Column(
              children: [
                CustomRow(
                  text: 'Categories',
                  onTap: () {
                    GoRouter.of(context).push(Approuter.KCategoriesView);
                  },
                ),
                categoryListView(
                  scrollDirection: Axis.horizontal,
                ),
                SizedBox(
                  height: 24,
                ),
                CustomRow(
                  text: 'Top Selling',
                  onTap: () {},
                ),
                SizedBox(
                  height: 16,
                ),
                CustomProductListView(
                  productlist: TopSellingLsit,
                ),
                SizedBox(
                  height: 24,
                ),
                CustomRow(
                  text: 'New in',
                  onTap: () {},
                ),
                CustomProductListView(
                  productlist: NewInLsit,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
