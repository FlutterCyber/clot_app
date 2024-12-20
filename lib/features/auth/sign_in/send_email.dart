import 'package:clot_app/core/constants/color.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
class SendEmail extends StatelessWidget {
  const SendEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:CustomColor.mainColor,
      body: Padding(
        padding: const EdgeInsets.all(22.0),
        child: Center(
          child: SizedBox(
            height: 400,
            width: double.infinity,
            child: Column(
              children: [
                const Image(
                  image: AssetImage("assets/images/send_email.png",),
                ),
                const SizedBox(
                  height: 30,
                ),
                 Text(
                  "We Sent you an Email to reset \nyour password.".tr(),
                  style: const TextStyle(color: Colors.white, fontSize: 30),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: 159,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: CustomColor.buttonColor,
                      minimumSize: const Size(double.infinity, 50),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(
                        context,
                        "/sign_in_email",
                      );
                    },
                    child:  Center(
                      child: Text(
                        "Return to Login ".tr(),
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
