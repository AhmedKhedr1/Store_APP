import 'package:flutter/material.dart';
import 'package:store_app/Constant.dart';
import 'package:store_app/core/Widgets/CustomFavButton.dart';
import 'package:store_app/core/utils/Assets.dart';

class ProductCard extends StatelessWidget {
   ProductCard({super.key,required this.OnTap});
void Function() OnTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:OnTap ,
      child: Card(
        color: KLightColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        elevation: 0,
        child: Container(
          padding: EdgeInsets.only(left: 8, bottom: 12),
          height: 265,
          width: 160,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Image.asset(
                    Assets.KTestImage,
                    height: 200,
                    width: 154,
                  ),
                  Positioned(
                    top: -4,
                    right: -10,
                    child: CustomFavButton(),
                  ),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                'Men\'s Harrington jacket',
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 4,
              ),
              Text('\$148.00',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold))
            ],
          ),
        ),
      ),
    );
  }
}
