import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:store_app/Constant.dart';
import 'package:store_app/Features/Cart/Presentation/Views/Widgets/CheckoutView_Body.dart';
import 'package:store_app/Features/Home/Presentation/Views/Widgets/Bottom_Nav_Button.dart';
import 'package:store_app/core/utils/AppRouter.dart';

class CheckoutView extends StatelessWidget {
  const CheckoutView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KBackgroundColor,
      body: CheckoutviewBody(),
      bottomNavigationBar:
          BottomNavButton(price: '\$208', title: 'Place Order', onTap: () { 
            GoRouter.of(context).push(Approuter.KOrderPlacedView);
           },),
    );
  }
}
