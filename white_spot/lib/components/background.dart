import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: -100.0,
      right: -125.0,
      child: Container(
        height: 300.0,
        width: 300.0,
        child: Image(
          image: AssetImage("assets/images/topRightGraphic.png"),
        ),
      ),
    );
  }
}
