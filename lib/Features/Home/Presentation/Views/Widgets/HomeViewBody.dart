import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:store_app/Features/Home/Presentation/Views/Widgets/SearchTextField.dart';
import 'package:store_app/Features/Home/Presentation/Views/Widgets/customAppBar.dart';

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
            customAppBar(),
            SizedBox(
              height: 24,
            ),
            SearchTextField(),
            SizedBox(
              height: 24,
            ),
          ],
        ),
      ),
    );
  }
}
