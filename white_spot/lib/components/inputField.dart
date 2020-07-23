import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:white_spot/controllers/textFieldController.dart';

class InputField extends StatelessWidget {
  InputField(
      {this.icon, this.hintText, this.fillingEmail, this.fillingPassword});

  Icon icon;
  String hintText;
  bool fillingEmail;
  bool fillingPassword;

  final TextFieldController textFieldController =
      Get.put(TextFieldController());

  @override
  Widget build(BuildContext context) {
    return Obx(() => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40.0),
          child: Material(
            color: Colors.white,
            elevation: fillingEmail
                ? textFieldController.emailFieldElevation.value
                : textFieldController.passwordFieldElevation.value,
            child: TextFormField(
              obscureText: fillingPassword,
              style: GoogleFonts.montserrat(fontWeight: FontWeight.bold),
              cursorColor: Colors.black,
              onTap: () {
                textFieldController.emailFieldElevation.value = 20.0;
                textFieldController.passwordFieldElevation.value = 0.0;
              },
              onEditingComplete: () {
                textFieldController.fillingPassword.value = false;
                textFieldController.fillingEmail.value = false;
              },
              decoration: InputDecoration(
                  prefixIcon: icon,
                  hintText: hintText,
                  hintStyle: GoogleFonts.montserrat(
                      fontSize: 11.0,
                      letterSpacing: 1.5,
                      fontWeight: FontWeight.w400),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent))),
            ),
          ),
        ));
  }
}
