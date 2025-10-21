import 'package:flutter/material.dart';

class RieviewsSection extends StatelessWidget {
  const RieviewsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Reviews',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 12,
        ),
        Text(
          '4.5 Ratings',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 12,
        ),
        Text(
          '213 Reviews',
          style: TextStyle(
              color: Color(
            0xff949494,
          )),
        )
      ],
    );
  }
}
