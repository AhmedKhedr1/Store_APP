// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:store_app/Features/Home/Presentation/Views/Widgets/CustomRow.dart';
import 'package:store_app/Features/Home/Presentation/Views/Widgets/ProductCart.dart';
import 'package:store_app/Features/Home/Presentation/Views/Widgets/SearchTextField.dart';
import 'package:store_app/Features/Home/Presentation/Views/Widgets/categoryListView.dart';
import 'package:store_app/Features/Home/Presentation/Views/Widgets/customAppBar.dart';
import 'package:store_app/core/utils/AppRouter.dart';

class Homeviewbody extends StatefulWidget {
  const Homeviewbody({super.key});

  @override
  State<Homeviewbody> createState() => _HomeviewbodyState();
}

class _HomeviewbodyState extends State<Homeviewbody> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: ListView(
          children: [
            SizedBox(
              height: 24,
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
                CustomProductListView(),
                SizedBox(
                  height: 24,
                ),
                CustomRow(
                  text: 'New in',
                  onTap: () {},
                ),
                CustomProductListView()
              ],
            )
          ],
        ),
      ),
    );
  }
}

class CustomProductListView extends StatelessWidget {
  const CustomProductListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 270,
      width: double.infinity,
      child: ListView.builder(
        padding: EdgeInsets.zero,
        scrollDirection: Axis.horizontal,
        itemCount: 6,
        itemBuilder: (context, index) {
          return ProductCart();
        },
      ),
    );
  }
}
