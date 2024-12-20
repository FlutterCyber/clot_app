import 'package:clot_app/app.dart';
import 'package:clot_app/core/constants/color.dart';
import 'package:clot_app/core/route/rout_names.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Scaffold(
        backgroundColor: CustomColor.mainColor,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const SizedBox(
                height: 30,
              ),
              Image.asset(
                "assets/images/avatar.png",
              ),
              Container(
                padding: const EdgeInsets.all(12),
                width: double.infinity,
                height: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: CustomColor.greyColor,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                     Text(
                      "Gilbert Jones".tr(),
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                         Text(
                          "Glbertjones001@gmail.com".tr(),
                          style: const TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child:  Text(
                            "Edit".tr(),
                            style: const TextStyle(
                              color: CustomColor.buttonColor,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                     Text(
                      "121-224-7890".tr(),
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  elevatedButton("language", () {
                    Navigator.pushNamed(context, RouteNames.languagePage);
                  }),
                  elevatedButton("Address", () {
                    Navigator.pushNamed(context, RouteNames.addressEdit);
                  }),
                  elevatedButton("Wishlist", () {
                    Navigator.pushNamed(context, RouteNames.wishlist);
                  }),
                  elevatedButton("Payment", () {
                    Navigator.pushNamed(context, RouteNames.paymentPage);
                  }),
                  elevatedButton("Help", () {}),
                ],
              ),
              TextButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(
                        context, RouteNames.signInEmail);
                  },
                  child: const Text(
                    "Sign Out",
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

//! Widget
Widget elevatedButton(String text, VoidCallback onPressed) {
  return Padding(
    padding: const EdgeInsets.only(top: 10),
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: CustomColor.greyColor,
        minimumSize: const Size(double.infinity, 56),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text.tr(),
            style: const TextStyle(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.w600),
          ),
          const Icon(
            IconsaxPlusBroken.arrow_right_3,
            color: CustomColor.whiteColor,
          ),
        ],
      ),
    ),
  );
}
