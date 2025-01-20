import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:store_app/Features/Login/Presentation/Views/Widgets/CustomButton.dart';
import 'package:store_app/Features/Login/Presentation/Views/Widgets/CustomTextFormField.dart';
import 'package:store_app/core/utils/AppRouter.dart';

class Signupviewbody extends StatelessWidget {
  const Signupviewbody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 27, vertical: 63),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200], // Background color
                    shape: BoxShape.circle, // Makes the container circular
                  ),
                  child: IconButton(
                      onPressed: () {
                        GoRouter.of(context).pop();
                      },
                      icon: Icon(Icons.arrow_back_ios)),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Create Account',
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 22,
                ),
                CustomTextFormField(
                    controller: TextEditingController(), hinttext: 'Firstname'),
                CustomTextFormField(
                    controller: TextEditingController(), hinttext: 'Lastname'),
                CustomTextFormField(
                    controller: TextEditingController(),
                    hinttext: 'Email Address'),
                CustomTextFormField(
                    controller: TextEditingController(), hinttext: ' Password'),
                SizedBox(
                  height: 30,
                ),
                CustomButton(),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Text(
                      'Already have account ? ',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        GoRouter.of(context).push(Approuter.KSigninView);
                      },
                      child: Text(
                        'Sign in',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
