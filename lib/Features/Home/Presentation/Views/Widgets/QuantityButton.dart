
import 'package:flutter/material.dart';
import 'package:store_app/Features/Home/Presentation/Views/Widgets/AddandMinusButton.dart';
import 'package:store_app/core/utils/Assets.dart';

class QuantityButton extends StatefulWidget {
  const QuantityButton({
    super.key,
  });

  @override
  State<QuantityButton> createState() => _QuantityButtonState();
}

class _QuantityButtonState extends State<QuantityButton> {
  int count = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 6),
      padding: EdgeInsets.only(left: 16, right: 22, top: 8, bottom: 8),
      width: double.infinity,
      decoration: BoxDecoration(
          color: Color(0xffF4F4F4), borderRadius: BorderRadius.circular(100)),
      child: Row(
        children: [
          Text(
            'Quantity',
            style: TextStyle(
                color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500),
          ),
          Spacer(),
          AddandMinusButton(
            image: Assets.add,
            onTap: () {
              setState(() {
                count++;
              });
            },
          ),
          SizedBox(
            width: 14,
          ),
          Text(
            count.toString(),
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
          ),
          SizedBox(
            width: 14,
          ),
          AddandMinusButton(
            image: Assets.minus,
            onTap: () {
              setState(() {
                count--;
              });
            },
          )
        ],
      ),
    );
  }
}
