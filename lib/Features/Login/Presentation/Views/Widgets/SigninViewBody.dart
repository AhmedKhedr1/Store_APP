import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:store_app/Constant.dart';
import 'package:store_app/Features/Login/Presentation/Views/Widgets/CustomButton.dart';
import 'package:store_app/Features/Login/Presentation/Views/Widgets/CustomTextFormField.dart';
import 'package:store_app/core/utils/AppRouter.dart';
import 'package:store_app/core/utils/Assets.dart';

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
                CustomButton(onPressed: () {
                  GoRouter.of(context).push(Approuter.KHomeView);
                },),
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
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                CustomRegisterButton(
                    Buttontext: 'Continue With Apple',
                    Buttonimage: Assets.kAppleLogo),
                CustomRegisterButton(
                    Buttontext: 'Continue With Google',
                    Buttonimage: Assets.kGoogleLogo),
                CustomRegisterButton(
                    Buttontext: 'Continue With Facebook',
                    Buttonimage: Assets.kFaceBookLogo),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CustomRegisterButton extends StatelessWidget {
  CustomRegisterButton(
      {super.key, required this.Buttontext, required this.Buttonimage});
  final String Buttontext;
  final String Buttonimage;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Container(
        height: 50,
        decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.2),
            borderRadius: BorderRadius.circular(100)),
        child: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Row(
            children: [
              Image.asset(
                Buttonimage,
              ),
              SizedBox(
                width: 40,
              ),
              Text(
                Buttontext,
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
              )
            ],
          ),
        ),
      ),
    );
  }
}
