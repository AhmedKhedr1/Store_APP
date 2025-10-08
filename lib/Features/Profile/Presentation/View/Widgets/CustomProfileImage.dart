
import 'package:flutter/material.dart';
import 'package:store_app/core/utils/Assets.dart';

class CustomProfileImage extends StatelessWidget {
  const CustomProfileImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 125, left: 125, top: 70),
      child: Container(
        height: 94,
        width: 94,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(40)),
        child: Image.asset(Assets.KprofileImage,fit: BoxFit.cover,),
      ),
    );
  }
}
