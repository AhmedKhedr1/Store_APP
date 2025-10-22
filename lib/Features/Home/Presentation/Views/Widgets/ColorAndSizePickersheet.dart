import 'package:flutter/material.dart';
import 'package:store_app/Features/Home/Presentation/Views/Widgets/SheetHeader.dart';

class ColorAndSizePickersheet extends StatelessWidget {
  const ColorAndSizePickersheet({super.key, required this.SheetTilte});
  final String SheetTilte;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(top: 12, right: 24, left: 24),
        height: 390,
        width: double.infinity,
        decoration: BoxDecoration(),
        child: Column(
          children: [
            SheetHeader(
              title: SheetTilte,
            )
          ],
        ));
  }
}
