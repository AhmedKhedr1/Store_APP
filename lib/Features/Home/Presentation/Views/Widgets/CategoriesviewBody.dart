import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:store_app/Features/Home/data/Category_model.dart';
import 'package:store_app/core/Widgets/CustomBackIcon.dart';
import 'package:store_app/core/utils/AppRouter.dart';
import 'package:store_app/core/utils/Assets.dart';

class Categoriesviewbody extends StatelessWidget {
  Categoriesviewbody({super.key});
  final List<CategoryModel> categorylist = [
    CategoryModel(image: Assets.KHoodiesImage, name: 'Hoodies'),
    CategoryModel(image: Assets.KShortsImage, name: 'Shorts'),
    CategoryModel(image: Assets.KShoesImage, name: 'Shoes'),
    CategoryModel(image: Assets.KBagImage, name: 'Bag'),
    CategoryModel(image: Assets.KAccessoriesImage, name: 'Accessories'),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.only(right: 24, left: 24, top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomBackIcon(),
            SizedBox(
              height: 15,
            ),
            Text(
              'Shop by Categories',
              style: TextStyle(fontWeight: FontWeight.w900, fontSize: 26),
            ),
            SizedBox(
              height: 15,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: categorylist.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () => GoRouter.of(context)
                        .push(Approuter.KCategoryproductview),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: Container(
                        height: 74,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xffF3F3F3)),
                        child: Row(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 16, left: 8),
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30)),
                                child: Image.asset(categorylist[index].image),
                              ),
                            ),
                            Text(
                              categorylist[index].name,
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
