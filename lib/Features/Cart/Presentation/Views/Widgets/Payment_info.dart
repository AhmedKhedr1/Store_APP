import 'package:flutter/material.dart';

class PaymentInfo extends StatelessWidget {
  const PaymentInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Text(
              'Subtotal',
              style: TextStyle(
                color: Color(0xff949494),
                fontSize: 17,
              ),
            ),
            const Spacer(),
            const Text(
              '\$148',
              style: TextStyle(
                color: Color(0xff272727),
                fontWeight: FontWeight.bold,
                fontSize: 17,
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),
        Row(
          children: const [
            Text(
              'Shipping Cost',
              style: TextStyle(
                color: Color(0xff949494),
                fontSize: 17,
              ),
            ),
            Spacer(),
            Text(
              '\$8.00',
              style: TextStyle(fontSize: 17),
            ),
          ],
        ),
        const SizedBox(height: 12),
        Row(
          children: const [
            Text(
              'Tax',
              style: TextStyle(
                color: Color(0xff949494),
                fontSize: 17,
              ),
            ),
            Spacer(),
            Text(
              '\$0.00',
              style: TextStyle(fontSize: 17),
            ),
          ],
        ),
        const SizedBox(height: 12),
        Row(
          children: const [
            Text(
              'Total',
              style: TextStyle(
                color: Color(0xff949494),
                fontSize: 17,
              ),
            ),
            Spacer(),
            Text(
              '\$156',
              style: TextStyle(
                color: Color(0xff272727),
                fontWeight: FontWeight.bold,
                fontSize: 17,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
