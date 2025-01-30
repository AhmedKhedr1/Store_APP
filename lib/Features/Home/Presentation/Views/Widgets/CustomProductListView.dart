
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:store_app/Features/Home/Presentation/Views/Widgets/ProductCard.dart';
import 'package:store_app/core/utils/AppRouter.dart';

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
          return ProductCard(OnTap: () {  
            GoRouter.of(context).push(Approuter.KProductdetailsview);
          },);
        },
      ),
    );
  }
}
