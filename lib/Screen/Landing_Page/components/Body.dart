import 'dart:ui';

import 'package:flutter/material.dart';
import '../../../constant.dart';
import '../Background.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; //Provide size of screen
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            "assets/images/SplashLogo.png",
            width: size.width * 0.5,
          ),
          Text(
            "LIGTAS",
            style: TextStyle(
                color: KPrimary_DarkColor,
                fontWeight: FontWeight.w700,
                fontFamily: 'Montserrat',
                fontSize: 30),
          ),
          Text(
            "Disaster Risk",
            style: TextStyle(
                color: KPrimary_DarkColor,
                fontWeight: FontWeight.w700,
                fontFamily: 'Montserrat',
                fontSize: 14),
          ),
          Text(
            "Management",
            style: TextStyle(
                color: KPrimary_DarkColor,
                fontWeight: FontWeight.w700,
                fontFamily: 'Montserrat',
                fontSize: 14),
          ),
        ],
      ),
    );
  }
}
