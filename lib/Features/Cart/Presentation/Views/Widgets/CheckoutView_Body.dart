import 'package:flutter/material.dart';
import 'package:store_app/Features/Cart/Presentation/Views/Widgets/Payment_info.dart';
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
                  width: 128,
                ),
                Text(
                  'Checkout',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900),
                ),
              ],
            ),
            Spacer(),
            PaymentInfo(),
            SizedBox(
              height: 75,
            )
          ],
        ),
      ),
    );
  }
}
