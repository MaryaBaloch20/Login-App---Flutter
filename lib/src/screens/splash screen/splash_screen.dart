import 'package:login_app_authentication_firebase/src/constants/colors.dart';
import 'package:flutter/material.dart';

import '../../constants/image_strings.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: Stack(
        children: [
          const Positioned(
            top: 0,
            left: 0,
            child: Image(
              image: AssetImage(splashImageCorner),
              height: 200,
            ),
          ),
          Positioned(
            top: 190,
            left: 30,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "LOGIN APP",
                  style: TextStyle(
                      color: brownColor,
                      fontSize: 30,
                      fontWeight: FontWeight.normal),
                ),
                Text("Eat healthy!",
                    style: TextStyle(
                        color: brownColor,
                        fontSize: 32,
                        fontWeight: FontWeight.bold)),
                Text("Stay fit! Be happy!",
                    style: TextStyle(
                        color: brownColor,
                        fontSize: 32,
                        fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          const Positioned(
            bottom: 200,
            left: 15,
            child: Image(
              image: AssetImage(logoImageLarge),
              height: 450,
            ),
          ),
        ],
      ),
    );
  }
}
