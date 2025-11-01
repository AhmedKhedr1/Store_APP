import 'package:flutter/material.dart';
import 'package:store_app/Features/Cart/Presentation/Views/Widgets/Payment_Method.dart';
import 'package:store_app/Features/Cart/Presentation/Views/Widgets/Payment_info.dart';
import 'package:store_app/Features/Cart/Presentation/Views/Widgets/Shipping_Address.dart';
import 'package:store_app/core/Widgets/CustomBackIcon.dart';

class CheckoutviewBody extends StatelessWidget {
  const CheckoutviewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            Row(
              children: [
                CustomBackIcon(),
                SizedBox(
                  width: 100,
                ),
                Text(
                  'Checkout',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900),
                )
              ],
            ),
            SizedBox(
              height: 42,
            ),
            ShippingAddress(),
            SizedBox(
              height: 16,
            ),
            PaymentMethod(),
            Spacer(),
            PaymentInfo()
          ],
        ),
      ),
    );
  }
}
/*
BottomNavButton(
        price: '\$208',
        title: 'Place Order',
        onTap: () {
          GoRouter.of(context).push(Approuter.KOrderPlacedView);
        },
      ),
 */