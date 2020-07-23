import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:white_spot/pages/landingPage.dart';
import 'package:white_spot/pages/loginPage.dart';
import 'package:white_spot/pages/otpPage.dart';
import 'package:white_spot/pages/resetPasswordPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      builder: (context, widget) => ResponsiveWrapper.builder(
          ClampingScrollWrapper.builder(context, widget),
          breakpoints: [
            ResponsiveBreakpoint.autoScaleDown(411, name: "Pixel 2"),
            ResponsiveBreakpoint.resize(768, name: "ipad", scaleFactor: 1.3),
          ]),
      initialRoute: "/",
      routes: {
        "/": (context) => LandingPage(),
        "/otp": (context) => OTPPage(),
        "/resetPassword": (context) => ResetPasswordPage(),
        "/login": (context) => LoginPage()
      },
    );
  }
}
