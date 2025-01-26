import 'package:flutter/material.dart';
import 'package:store_app/Constant.dart';
import 'package:store_app/Features/Profile/Presentation/View/Widgets/CustomProfileImage.dart';
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

class UserSettings extends StatelessWidget {
  UserSettings({super.key, required this.buttoninfo, required this.onPressed});
  final String buttoninfo;
  void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Container(
        height: 56,
        width: double.infinity,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: KLightColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              buttoninfo,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            IconButton(onPressed: onPressed, icon: Icon(Icons.chevron_right))
          ],
        ),
      ),
    );
  }
}
