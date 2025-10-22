import 'package:flutter/material.dart';
import 'package:store_app/Constant.dart';
import 'package:store_app/Features/Home/Presentation/Views/Widgets/ColorAndSizePickersheet.dart';
import 'package:store_app/Features/Home/Presentation/Views/Widgets/ProductOptionSelector.dart';
import 'package:store_app/Features/Home/Presentation/Views/Widgets/QuantityButton.dart';

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
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Column(
        children: [
          ProductOptionSelector(
            text: 'Size',
            trailing: Text(
              'S',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            ontap: () {
              showModalBottomSheet(
                context: context,
                backgroundColor: KBackgroundColor,
                builder: (context) => ColorAndSizePickersheet(
                  SheetTilte: 'Size',
                ),
              );
            },
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
            ontap: () {
              showModalBottomSheet(
                context: context,
                backgroundColor: KBackgroundColor,
                builder: (context) => ColorAndSizePickersheet(
                  SheetTilte: 'Color',
                ),
              );
            },
          ),
          QuantityButton()
        ],
      ),
    );
  }
}
