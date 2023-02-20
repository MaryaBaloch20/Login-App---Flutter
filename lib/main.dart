import 'package:flutter/material.dart';
import 'package:login_app_authentication_firebase/src/utils/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: MyAppTheme.lightTheme,
      darkTheme: MyAppTheme.darkTheme,
      themeMode: ThemeMode.system,
    );
  }
}
