import 'package:flutter/material.dart';
import 'package:store_app/Constant.dart';
import 'package:store_app/Features/Home/Presentation/Views/Widgets/Bottom_Nav_Button.dart';
import 'package:store_app/Features/Home/Presentation/Views/Widgets/ProductdetailsviewBody.dart';

class Productdetailsview extends StatelessWidget {
  const Productdetailsview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KBackgroundColor,
      body: ProductdetailsviewBody(),
      bottomNavigationBar: BottomNavButton(
        price: '\$148',
        title: 'Add to Bag',
      ),
    );
  }
}
