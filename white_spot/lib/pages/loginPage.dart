import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:white_spot/components/background.dart';
import 'package:white_spot/components/inputField.dart';
import 'package:white_spot/controllers/textFieldController.dart';

class LoginPage extends StatelessWidget {
  final TextFieldController textFieldController =
      Get.put(TextFieldController());

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
                HeightBox(200.0),
                "Login"
                    .text
                    .xl5
                    .extraBold
                    .textStyle(GoogleFonts.montserrat())
                    .make(),
                HeightBox(20.0),
                "Please sign in to continue."
                    .text
                    .xl
                    .hairLine
                    .textStyle(GoogleFonts.montserrat())
                    .color(Colors.grey[600])
                    .make(),
                HeightBox(30.0),
                InputField(
                  hintText: "EMAIL",
                  icon: Icon(
                    Icons.mail_outline,
                    color: Colors.black,
                  ),
                  fillingEmail: true,
                  fillingPassword: false,
                ),
                HeightBox(30.0),
                InputField(
                  hintText: "PASSWORD",
                  icon: Icon(
                    Icons.lock_outline,
                    color: Colors.black,
                  ),
                  fillingEmail: false,
                  fillingPassword: true,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
