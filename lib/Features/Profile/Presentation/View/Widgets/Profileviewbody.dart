import 'package:flutter/material.dart';
import 'package:store_app/Features/Profile/Presentation/View/Widgets/CustomProfileImage.dart';
import 'package:store_app/Features/Profile/Presentation/View/Widgets/SettingsTile.dart';
import 'package:store_app/Features/Profile/Presentation/View/Widgets/UserinfoBox.dart';

class Profileviewbody extends StatelessWidget {
  const Profileviewbody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: ListView(
          children: [
            Column(
              children: [
                CustomProfileImage(),
                SizedBox(
                  height: 32,
                ),
                UserinfoBox(),
                SizedBox(
                  height: 26,
                ),
                SettingsTile(
                  buttoninfo: 'Address',
                  onPressed: () {},
                ),
                SettingsTile(
                  buttoninfo: 'Wishlist',
                  onPressed: () {},
                ),
                SettingsTile(
                  buttoninfo: 'Payment',
                  onPressed: () {},
                ),
                SettingsTile(
                  buttoninfo: 'Help',
                  onPressed: () {},
                ),
                SettingsTile(
                  buttoninfo: 'Support',
                  onPressed: () {},
                ),
                SizedBox(
                  height: 36,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    'Sign Out',
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
