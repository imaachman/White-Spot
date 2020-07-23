import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:white_spot/components/background.dart';
import 'package:white_spot/components/button.dart';
import 'package:white_spot/pages/resetPasswordPage.dart';

class OTPPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Stack(
          children: [
            Background(),
            Column(
              children: [
                HeightBox(150.0),
                "OTP Verification"
                    .text
                    .size(42.0)
                    .extraBold
                    .textStyle(GoogleFonts.montserrat())
                    .make(),
                HeightBox(30.0),
                "Enter the 4-digit code sent to you at "
                    .richText
                    .size(20.0)
                    .hairLine
                    .color(Colors.grey[500])
                    .textStyle(GoogleFonts.montserrat())
                    .withTextSpanChildren([
                      "(407) 800-6404"
                          .textSpan
                          .black
                          .textStyle(GoogleFonts.montserrat())
                          .make()
                    ])
                    .make()
                    .pSymmetric(h: 40.0),
                HeightBox(60.0),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 64.0),
                  child: PinCodeTextField(
                    length: 4,
                    obsecureText: false,
                    onChanged: (_) {},
                    animationType: AnimationType.slide,
                    pinTheme: PinTheme(
                      activeColor: Colors.blueAccent,
                      inactiveColor: Colors.black,
                      shape: PinCodeFieldShape.underline,
                      fieldHeight: 20.0,
                      fieldWidth: 30.0,
                    ),
                    animationDuration: Duration(milliseconds: 300),
                  ),
                ),
                HeightBox(100.0),
                Row(
                  children: [
                    WidthBox(200.0),
                    Button(
                      buttonText: "VERIFY",
                      page: "/resetPassword",
                      icon: Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                      ),
                    ),
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
