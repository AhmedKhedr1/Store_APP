import 'package:flutter/material.dart';
import 'package:store_app/Constant.dart';
import 'package:store_app/Features/Home/Presentation/Views/Widgets/CategoriesviewBody.dart';

class Categoriesview extends StatelessWidget {
  const Categoriesview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KBackgroundColor,
      body: Categoriesviewbody(),
    );
  }
}