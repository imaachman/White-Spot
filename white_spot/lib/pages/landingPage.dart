import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:white_spot/components/background.dart';
import 'package:white_spot/components/button.dart';
import 'package:white_spot/pages/otpPage.dart';
import 'package:white_spot/pages/resetPasswordPage.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Background(),
            Column(
              children: [
                HeightBox(100.0),
                Container(
                  height: 400.0,
                  width: 400.0,
                  child: Image(
                    image: AssetImage("assets/images/girlSaving.png"),
                    fit: BoxFit.cover,
                  ),
                ),
                "Come on Let's Save"
                    .text
                    .size(36.0)
                    .extraBold
                    .textStyle(GoogleFonts.montserrat())
                    .make(),
                HeightBox(15.0),
                "Choice is upto you"
                    .text
                    .xl3
                    .hairLine
                    .color(Colors.grey[600])
                    .textStyle(GoogleFonts.montserrat())
                    .make(),
                HeightBox(50.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Button(
                      buttonText: "LOGIN",
                      page: "/login",
                    ),
                    Button(
                      buttonText: "SIGN UP",
                      page: "/otp",
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
