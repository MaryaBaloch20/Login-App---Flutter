import 'package:flutter/material.dart';
import 'package:login_app_authentication_firebase/src/constants/sizes.dart';
import 'package:login_app_authentication_firebase/src/screens/login/login_form_widget.dart';

import '../../constants/colors.dart';
import '../../constants/image_strings.dart';
import '../../constants/text_strings.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(defaultSize),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Section 1
                Image(
                  image: const AssetImage(mLoginImage),
                  height: size.height * 0.2,
                ),
                const Text(
                  mLoginTitle,
                  style: TextStyle(
                      fontSize: 34.0,
                      fontWeight: FontWeight.w700,
                      color: blackColor),
                ),
                const Text(mLoginSubTitle,
                    style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.normal,
                        color: blackColor),
                    textAlign: TextAlign.center),

                // Section 2
                const LoginForm()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
