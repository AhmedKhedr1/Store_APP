
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:store_app/Constant.dart';
import 'package:store_app/core/utils/AppRouter.dart';

class CustomBottomAppBar extends StatelessWidget {
  const CustomBottomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: KBackgroundColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(onPressed: () {
            GoRouter.of(context).go(Approuter.KHomeView);
          }, icon: Icon(Icons.home_filled)),
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),
          IconButton(onPressed: () {}, icon: Icon(Icons.receipt)),
          IconButton(onPressed: () {
            GoRouter.of(context).push(Approuter.KSettingsView);
          }, icon: Icon(Icons.person)),
        ],
      ),
    );
  }
}
