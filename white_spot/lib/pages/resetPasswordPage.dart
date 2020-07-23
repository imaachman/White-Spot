import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:white_spot/components/background.dart';
import 'package:white_spot/components/button.dart';

class ResetPasswordPage extends StatelessWidget {
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
                // Row(
                //   children: [
                //     WidthBox(20.0),
                //     Padding(
                //       padding: EdgeInsets.only(top: 50.0),
                //       child: IconButton(
                //         icon: Icon(
                //           Icons.arrow_back,
                //           size: 30.0,
                //         ),
                //         onPressed: () {},
                //       ),
                //     ),
                //   ],
                // ),
                HeightBox(200.0),
                "Reset Password"
                    .text
                    .xl5
                    .bold
                    .textStyle(GoogleFonts.montserrat())
                    .make(),
                HeightBox(75.0),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "NEW PASSWORD",
                      hintStyle: GoogleFonts.roboto(
                          fontSize: 12.0, letterSpacing: 1.5)),
                ).pSymmetric(h: 40.0),
                HeightBox(40.0),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "PASSWORD",
                      hintStyle: GoogleFonts.roboto(
                          fontSize: 12.0, letterSpacing: 1.5)),
                ).pSymmetric(h: 40.0),
                HeightBox(75.0),
                Row(
                  children: [
                    WidthBox(210.0),
                    Button(
                      buttonText: "RESET",
                      page: "/",
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
