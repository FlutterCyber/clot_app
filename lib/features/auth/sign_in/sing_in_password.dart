import 'package:clot_app/core/constants/color.dart';
import 'package:clot_app/features/auth/widgets/custom_button.dart';
import 'package:clot_app/features/auth/widgets/log_in_forms.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import '../../../core/route/rout_names.dart';

class SignInPassword extends StatelessWidget {
  const SignInPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.mainColor,
      body: Padding(
        padding: const EdgeInsets.only(right: 20, left: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Text(
              "Sign in".tr(),
              style: const TextStyle(
                color: Colors.white,
                fontSize: 32,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            LogInForms(text: "Password".tr(), hideText: true,),
            const SizedBox(
              height: 20,
            ),
            CustomButton(
                onPressed: () {
                  Navigator.pushNamed(context, RouteNames.bottomNavBar);
                },
                text: "Continue".tr()),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                 Text(
                  "Forgot Password ?".tr(),
                  style: const TextStyle(color: Colors.white, fontSize: 15),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, RouteNames.resetPage);
                  },
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.white, // Sets the text color
                    textStyle: const TextStyle(
                      fontSize: 16, // Example for font size (optional)
                      fontWeight:
                          FontWeight.bold, // Example for bold text (optional)
                    ),
                  ),
                  child:  Text(
                    "Reset".tr(),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 280,
            ),
          ],
        ),
      ),
    );
  }
}
