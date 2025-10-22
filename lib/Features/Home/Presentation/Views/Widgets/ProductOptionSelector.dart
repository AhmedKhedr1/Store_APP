import 'package:flutter/material.dart';
import 'package:store_app/core/utils/Assets.dart';

class ProductOptionSelector extends StatelessWidget {
  const ProductOptionSelector(
      {super.key, required this.text, required this.trailing, required this.ontap});
  final String text;
  final Widget trailing;
  final Function() ontap;
  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:ontap ,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 6),
        padding: EdgeInsets.only(left: 16, right: 22, top: 16, bottom: 16),
        width: double.infinity,
        decoration: BoxDecoration(
            color: Color(0xffF4F4F4), borderRadius: BorderRadius.circular(100)),
        child: Row(
          children: [
            Text(
              text,
              style: TextStyle(
                  color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500),
            ),
            Spacer(),
            trailing,
            SizedBox(
              width: 26,
            ),
            RotatedBox(quarterTurns: 1, child: Image.asset(Assets.arrow_right))
          ],
        ),
      ),
    );
  }
}
