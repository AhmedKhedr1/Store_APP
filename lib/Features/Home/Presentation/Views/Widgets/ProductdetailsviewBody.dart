import 'package:flutter/material.dart';
import 'package:store_app/Constant.dart';
import 'package:store_app/Features/Home/Presentation/Views/Widgets/ProductImagesSection.dart';
import 'package:store_app/Features/Home/Presentation/Views/Widgets/ProductOptionSection.dart';
import 'package:store_app/Features/Home/Presentation/Views/Widgets/RieviewsSection.dart';
import 'package:store_app/Features/Home/Presentation/Views/Widgets/ShippingSection.dart';
import 'package:store_app/core/Widgets/CustomBackIcon.dart';
import 'package:store_app/core/Widgets/CustomFavButton.dart';

class ProductdetailsviewBody extends StatelessWidget {
  const ProductdetailsviewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 24, top: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 16),
                  child: IconsBar(),
                ),
                SizedBox(
                  height: 24,
                ),
                ProductImagesSection(),
                SizedBox(
                  height: 24,
                ),
                Text(
                  'Men\'s Harrington Jacket',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  '\$148',
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w900,
                      color: KPrimaryColor),
                ),
                SizedBox(
                  height: 30,
                ),
                ProductOptionSection(),
                SizedBox(
                  height: 26,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Text(
                    'Built for life and made to last, this full-zip corduroy jacket is part of our Nike Life collection. The spacious fit gives you plenty of room to layer underneath, while the soft corduroy keeps it casual and timeless.',
                    style: TextStyle(
                        color: Color(
                          0xff949494,
                        ),
                        fontSize: 14),
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                ShippingSection(),
                SizedBox(
                  height: 24,
                ),
                RieviewsSection()
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class IconsBar extends StatelessWidget {
  const IconsBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomBackIcon(),
        Container(
            decoration: BoxDecoration(
              color: Colors.grey[200], // Background color
              shape: BoxShape.circle, // Makes the container circular
            ),
            child: CustomFavButton())
      ],
    );
  }
}
