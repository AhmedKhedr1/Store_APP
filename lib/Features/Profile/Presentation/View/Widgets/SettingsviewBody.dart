import 'package:flutter/material.dart';
import 'package:store_app/Features/Profile/Presentation/View/Widgets/CustomProfileImage.dart';
import 'package:store_app/Features/Profile/Presentation/View/Widgets/UserSettings.dart';
import 'package:store_app/Features/Profile/Presentation/View/Widgets/UserinfoBox.dart';

class Settingsviewbody extends StatelessWidget {
  const Settingsviewbody({super.key});

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
                UserSettings(
                  buttoninfo: 'Address',
                  onPressed: () {},
                ),
                UserSettings(
                  buttoninfo: 'Wishlist',
                  onPressed: () {},
                ),
                UserSettings(
                  buttoninfo: 'Payment',
                  onPressed: () {},
                ),
                UserSettings(
                  buttoninfo: 'Help',
                  onPressed: () {},
                ),
                UserSettings(
                  buttoninfo: 'Support',
                  onPressed: () {},
                ),
                SizedBox(
                  height: 35,
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
