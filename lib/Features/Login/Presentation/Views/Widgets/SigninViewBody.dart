import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:store_app/Constant.dart';
import 'package:store_app/Features/Login/Presentation/Views/Widgets/CustomButton.dart';
import 'package:store_app/Features/Login/Presentation/Views/Widgets/CustomTextFormField.dart';
import 'package:store_app/core/utils/AppRouter.dart';

class Signinviewbody extends StatelessWidget {
  const Signinviewbody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 27),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 99,
                ),
                Text(
                  'Sign in',
                  style: TextStyle(
                      color: KSecondaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 32),
                ),
                SizedBox(
                  height: 32,
                ),
                CustomTextFormField(
                  hinttext: 'Email Address',
                  controller: TextEditingController(),
                ),
                
                CustomTextFormField(
                  hinttext: 'Password',
                  controller: TextEditingController(),
                ),
                SizedBox(
                  height: 16,
                ),
                CustomButton(),
                //Text button
                SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    Text(
                      'Dont have an account ? ',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        GoRouter.of(context).push(Approuter.KSignupView);
                      },
                      child: Text(
                        ' Create One',
                        style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
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
