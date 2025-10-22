import 'package:flutter/material.dart';
import 'package:store_app/Constant.dart';
import 'package:store_app/Features/Home/Presentation/Views/Widgets/SheetHeader.dart';

class ColorAndSizePickersheet extends StatefulWidget {
  ColorAndSizePickersheet(
      {super.key,
      required this.SheetTilte,
      required this.options,
      this.colorsList});
  final String SheetTilte;
  final List<String> options;
  List<Color>? colorsList;

  @override
  State<ColorAndSizePickersheet> createState() =>
      _ColorAndSizePickersheetState();
}

class _ColorAndSizePickersheetState extends State<ColorAndSizePickersheet> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(top: 12, right: 24, left: 24),
        width: double.infinity,
        height: 400,
        decoration: BoxDecoration(),
        child: Column(
          children: [
            SheetHeader(
              title: widget.SheetTilte,
            ),
            SizedBox(
              height: 12,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                    children: List.generate(
                  widget.options.length,
                  (index) {
                    return optioncard(
                      Title: widget.options[index],
                      isSelected: selectedIndex == index,
                      ontap: () {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                      color: (widget.colorsList != null &&
                              widget.colorsList!.isNotEmpty)
                          ? widget.colorsList![index]
                          : null,
                    );
                  },
                )),
              ),
            ),
          ],
        ));
  }
}

class optioncard extends StatelessWidget {
  optioncard({
    super.key,
    required this.Title,
    required this.ontap,
    this.isSelected = false,
    this.color,
  });
  final String Title;
  final Function() ontap;
  final bool isSelected;
  Color? color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 8),
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 8),
        width: double.infinity,
        height: 56,
        decoration: BoxDecoration(
            color: isSelected ? KPrimaryColor : Color(0xffF4F4F4),
            borderRadius: BorderRadius.circular(100)),
        child: Row(
          children: [
            Text(
              Title,
              style: TextStyle(
                  fontSize: 16,
                  color: isSelected ? Colors.white : Colors.black),
            ),
            Spacer(),
            if (color != null)
              Container(
                margin: EdgeInsets.only(right: 10),
                width: 19,
                height: 19,
                decoration: BoxDecoration(shape: BoxShape.circle, color: color),
              ),
            Icon(
              Icons.check,
              color: isSelected ? Colors.white : Colors.transparent,
            )
          ],
        ),
      ),
    );
  }
}
