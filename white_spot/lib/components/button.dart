import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class Button extends StatelessWidget {
  Button({this.buttonText, this.page, this.icon});

  String buttonText;
  String page;
  Icon icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      width: 130.0,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            blurRadius: 20.0,
            offset: Offset(0.0, 5.0),
            color: Colors.blueAccent[400])
      ], borderRadius: BorderRadius.circular(30.0)),
      child: RaisedButton(
        onPressed: () {
          Get.toNamed(page);
        },
        color: Colors.blueAccent[400],
        elevation: 0.0,
        shape: Vx.roundedLg,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buttonText.text.xl.white.semiBold
                .letterSpacing(1.5)
                .textStyle(GoogleFonts.roboto())
                .makeCentered(),
            icon != null ? WidthBox(5.0) : Container(),
            icon != null ? icon : Container()
          ],
        ).box.height(60.0).width(130.0).make(),
      ),
    );
  }
}
