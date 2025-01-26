import 'package:flutter/material.dart';
import 'package:store_app/Constant.dart';
import 'package:store_app/Features/Profile/Presentation/View/Widgets/SettingsviewBody.dart';
import 'package:store_app/core/Widgets/CustomBottomAppBar.dart';

class Settingsview extends StatelessWidget {
  const Settingsview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KBackgroundColor,
      body: Settingsviewbody(),
      bottomNavigationBar: CustomBottomAppBar(),
    );
  }
}
