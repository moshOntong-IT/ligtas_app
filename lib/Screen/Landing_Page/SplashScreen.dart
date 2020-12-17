import 'dart:async';
import 'package:flutter/material.dart';
import 'package:ligtas_app/Screen/Login/Login_Screen.dart';

import 'components/Body.dart';

class SplashScreen extends StatefulWidget {
  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 10),
      () => Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (BuildContext context) => LoginScreen())),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}
