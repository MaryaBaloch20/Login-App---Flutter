import 'package:flutter/material.dart';
import 'package:login_app_authentication_firebase/src/screens/onboarding%20screens/onboarding_screen.dart';
import 'package:login_app_authentication_firebase/src/screens/splash%20screen/splash_screen.dart';
import 'package:login_app_authentication_firebase/src/screens/welcome%20screen/welcome_screen.dart';
import 'package:login_app_authentication_firebase/src/utils/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: MyAppTheme.lightTheme,
      darkTheme: MyAppTheme.darkTheme,
      themeMode: ThemeMode.system,
      home: SplashScreen(),
    );
  }
}
