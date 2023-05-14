import 'package:flutter/material.dart';
import 'package:login_app_authentication_firebase/src/constants/sizes.dart';
import 'package:login_app_authentication_firebase/src/screens/login/login_form_widget.dart';
import 'package:login_app_authentication_firebase/src/screens/login/login_header_widget.dart';

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
                // Header
                LoginHeaderWidget(size: size),

                //Form
                const LoginForm()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
