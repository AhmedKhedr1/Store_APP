import 'package:flutter/material.dart';
import 'package:store_app/Features/Home/Presentation/Views/Widgets/ProductCard.dart';
import 'package:store_app/core/Widgets/CustomBackIcon.dart';

class Categoryproductviewbody extends StatelessWidget {
  const Categoryproductviewbody({super.key});

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
                SizedBox(height: 24),
              ],
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
              padding: EdgeInsets.only(right: 24, left: 24, bottom: 8),
              child: GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                padding: EdgeInsets.zero,
                scrollDirection: Axis.vertical,
                itemCount: 8,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: .61,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                ),
                itemBuilder: (context, index) {
                  return ProductCard(
                    OnTap: () {},
                  );
                },
              )),
        ),
      ],
    );
  }
}
