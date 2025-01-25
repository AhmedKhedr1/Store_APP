import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:store_app/Features/Home/Presentation/Views/Widgets/SearchTextField.dart';
import 'package:store_app/Features/Home/Presentation/Views/Widgets/categoryListView.dart';
import 'package:store_app/Features/Home/Presentation/Views/Widgets/customAppBar.dart';
import 'package:store_app/core/utils/Assets.dart';

class Homeviewbody extends StatefulWidget {
  const Homeviewbody({super.key});

  @override
  State<Homeviewbody> createState() => _HomeviewbodyState();
}

class _HomeviewbodyState extends State<Homeviewbody> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            SizedBox(
              height: 24,
            ),
            customAppBar(),
            SizedBox(
              height: 24,
            ),
            SearchTextField(),
            SizedBox(
              height: 24,
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Categories',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                    Text(
                      'See All',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
                categoryListView()
              ],
            )
          ],
        ),
      ),
    );
  }
}
