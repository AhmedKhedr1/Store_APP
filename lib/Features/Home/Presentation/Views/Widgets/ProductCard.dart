import 'package:flutter/material.dart';
import 'package:store_app/Constant.dart';
import 'package:store_app/Features/Home/data/Product_model.dart';
import 'package:store_app/core/Widgets/CustomFavButton.dart';

class ProductCard extends StatelessWidget {
  ProductCard(
      {super.key,
      required this.OnTap,
      required this.productModel,
      this.image_height});
  void Function() OnTap;
  final ProductModel productModel;
  double? image_height;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: OnTap,
      child: Card(
        color: KLightColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        elevation: 0,
        child: Container(
          padding: EdgeInsets.only(left: 5, bottom: 8),
          height: 265,
          width: 160,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Image.asset(
                    productModel.image,
                    height: image_height ?? 200,
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
                height: 4,
              ),
              Text(
                productModel.name,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 4,
              ),
              Text('\$${productModel.price}',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold))
            ],
          ),
        ),
      ),
    );
  }
}
