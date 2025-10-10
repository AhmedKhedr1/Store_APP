// ignore_for_file: file_names, non_constant_identifier_names
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:store_app/Constant.dart';
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
        image: Assets.MenMonogramHoodie,
        name: 'Men\'s Monogram Hoodie',
        price: 148.00),
    ProductModel(
        image: Assets.jacketimage,
        name: 'Men\'s Harrington Jacket',
        price: 52.97),
    ProductModel(
        image: Assets.coachesimage,
        name: 'Men\'s Coaches Jacket',
        price: 66.97),
    ProductModel(
        image: Assets.slidesimage,
        name: 'Max Cirro Men\'s Slides',
        price: 55.00),
  ];
  final List<ProductModel> NewInLsit = [
    ProductModel(
        image: Assets.MenPulloverBasketballHoodie,
        name: 'Men\'s Pullover Basketball Hoodie',
        price: 105.000),
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
              height: 10,
            ),
            customAppBar(),
            SizedBox(
              height: 16,
            ),
            SearchTextField(),
            SizedBox(
              height: 14,
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
                  height: 10,
                ),
                CustomRow(
                  text: 'Top Selling',
                  onTap: () {},
                ),
                SizedBox(
                  height: 10,
                ),
                CustomProductListView(
                  productlist: TopSellingLsit,
                ),
                SizedBox(
                  height: 10,
                ),
                CustomRow(
                  TextColor: KPrimaryColor,
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
