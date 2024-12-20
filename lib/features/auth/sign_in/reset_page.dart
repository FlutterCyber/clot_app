import 'package:clot_app/core/constants/color.dart';
import 'package:clot_app/core/route/rout_names.dart';
import 'package:clot_app/features/auth/widgets/custom_button.dart';
import 'package:clot_app/features/auth/widgets/log_in_forms.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

import '../widgets/arrow.dart';

class ResetPage extends StatelessWidget {
  const ResetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.mainColor,
      body: Padding(
        padding: const EdgeInsets.only(
          right: 20,
          left: 20,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Arrow(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  RouteNames.signInEmail,
                );
              },
              icon: IconsaxPlusBroken.arrow_left_2,
            ),
            const SizedBox(
              height: 20,
            ),
             Text(
              "Forgot Password".tr(),
              style: const TextStyle(
                color: Colors.white,
                fontSize: 35,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            LogInForms(
              text: "Enter Email address".tr(),
              hideText: false,
            ),
            const SizedBox(
              height: 30,
            ),
            CustomButton(
                onPressed: () {
                  Navigator.pushNamed(context, RouteNames.sendEmailPage);
                },
                text: "Continue".tr()),
            const SizedBox(
              height: 300,
            )
          ],
        ),
      ),
    );
  }
}
