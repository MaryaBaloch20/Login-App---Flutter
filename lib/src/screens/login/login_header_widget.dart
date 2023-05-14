import 'package:flutter/material.dart';
import 'package:login_app_authentication_firebase/src/constants/colors.dart';
import 'package:login_app_authentication_firebase/src/constants/image_strings.dart';
import 'package:login_app_authentication_firebase/src/constants/text_strings.dart';

class LoginHeaderWidget extends StatelessWidget {
  const LoginHeaderWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image(
          image: const AssetImage(mLoginImage),
          height: size.height * 0.2,
        ),
        const Text(
          mLoginTitle,
          style: TextStyle(
              fontSize: 34.0, fontWeight: FontWeight.w700, color: blackColor),
        ),
        const Text(mLoginSubTitle,
            style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.normal,
                color: blackColor),
            textAlign: TextAlign.center),
      ],
    );
  }
}
