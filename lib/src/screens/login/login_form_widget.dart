import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../constants/sizes.dart';
import '../../constants/text_strings.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: mFormHeight - 10),
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.person_outline_outlined),
                labelText: mLoginEmail,
                hintText: mLoginEmailHint,
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: mFormHeight - 20),
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.fingerprint_outlined),
                labelText: mLoginPassword,
                hintText: mLoginPasswordHint,
                suffixIcon: IconButton(
                    onPressed: null, icon: Icon(Icons.remove_red_eye_sharp)),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: mFormHeight - 20),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {},
                child: const Text(mLoginForgotPasswordText),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: blackColor,
                  padding:
                      const EdgeInsets.symmetric(vertical: defaultButtonSize),
                ),
                child: Text(loginButtonText.toUpperCase()),
              ),
            )
          ],
        ),
      ),
    );
  }
}
