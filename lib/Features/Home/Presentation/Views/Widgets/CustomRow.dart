
import 'package:flutter/material.dart';

class CustomRow extends StatelessWidget {
   CustomRow({
    super.key, required this.text,required this.onTap
  });
 final String text;
void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
         text,
          style:
              TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
        ),
        GestureDetector(
          onTap:onTap ,
          child: Text(
            'See All',
            style: TextStyle(fontSize: 16),
          ),
        ),
      ],
    );
  }
}
