import 'package:flutter/material.dart';
import 'package:store_app/Constant.dart';
import 'package:store_app/Features/Home/Presentation/Views/Widgets/ProductOptionSelector.dart';
import 'package:store_app/core/utils/Assets.dart';

class ProductOptionSection extends StatefulWidget {
  const ProductOptionSection({
    super.key,
  });

  @override
  State<ProductOptionSection> createState() => _ProductOptionSectionState();
}

class _ProductOptionSectionState extends State<ProductOptionSection> {
  int count = 1;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProductOptionSelector(
          text: 'Size',
          trailing: Text(
            'S',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        ProductOptionSelector(
          text: 'Color',
          trailing: Container(
            width: 19,
            height: 19,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(
                  0xffB3B68B,
                )),
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 6),
          padding: EdgeInsets.only(left: 16, right: 22, top: 8, bottom: 8),
          width: double.infinity,
          decoration: BoxDecoration(
              color: Color(0xffF4F4F4),
              borderRadius: BorderRadius.circular(100)),
          child: Row(
            children: [
              Text(
                'Quantity',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
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
        )
      ],
    );
  }
}

class AddandMinusButton extends StatelessWidget {
  const AddandMinusButton({
    super.key,
    required this.image,
    required this.onTap,
  });
  final String image;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          height: 40,
          width: 40,
          decoration:
              BoxDecoration(color: KPrimaryColor, shape: BoxShape.circle),
          child: Image.asset(
            image,
            height: 12,
            width: 12,
          )),
    );
  }
}
