import 'package:login_app_authentication_firebase/src/constants/colors.dart';
import 'package:login_app_authentication_firebase/src/constants/image_strings.dart';
import 'package:login_app_authentication_firebase/src/constants/sizes.dart';
import 'package:login_app_authentication_firebase/src/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../login/login_page.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: whiteColor,
      body: Container(
          padding: EdgeInsets.symmetric(horizontal: defaultSize),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image(
                image: const AssetImage(mLoginImage),
                height: height * 0.5,
              ),
              Column(
                children: const [
                  Text(
                    welcomePageTitle,
                    style: TextStyle(
                        fontSize: 32.0,
                        fontWeight: FontWeight.w700,
                        color: blackColor),
                  ),
                  Text(welcomePageSubTitle,
                      style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.normal,
                          color: blackColor),
                      textAlign: TextAlign.center),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () => Get.to(
                        () => const LoginScreen(),
                      ),
                      style: OutlinedButton.styleFrom(
                        shape: const RoundedRectangleBorder(),
                        side: const BorderSide(color: blackColor),
                        padding: const EdgeInsets.symmetric(
                            vertical: defaultButtonSize),
                      ),
                      child: Text(
                        loginButtonText.toUpperCase(),
                        style: const TextStyle(color: blackColor),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 15.0,
                  ),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: blackColor,
                        elevation: 0.0,
                        shape: const RoundedRectangleBorder(),
                        side: const BorderSide(color: blackColor),
                        padding: const EdgeInsets.symmetric(
                            vertical: defaultButtonSize),
                      ),
                      child: Text(
                        signupButtonText.toUpperCase(),
                        style: const TextStyle(color: whiteColor),
                      ),
                    ),
                  ),
                ],
              )
            ],
          )),
    );
  }
}
