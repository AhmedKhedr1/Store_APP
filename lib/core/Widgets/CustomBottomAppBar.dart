import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:store_app/Constant.dart';
import 'package:store_app/core/utils/AppRouter.dart';
import 'package:store_app/core/utils/Assets.dart';

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
          IconButton(
              onPressed: () {
                GoRouter.of(context).go(Approuter.KHomeView);
              },
              icon: Image.asset(Assets.KHome)),
          IconButton(onPressed: () {}, icon: Image.asset(Assets.KNotification)),
          IconButton(onPressed: () {}, icon: Image.asset(Assets.KCart)),
          IconButton(
              onPressed: () {
                GoRouter.of(context).push(Approuter.KSettingsView);
              },
              icon: Image.asset(Assets.KProfileicon)),
        ],
      ),
    );
  }
}
