import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'Screen/Landing_Page/SplashScreen.dart';
import 'constant.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays(
        [SystemUiOverlay.bottom]); //removing status bar of screen
    return MaterialApp(
      title: 'Ligtas App',
      theme: ThemeData(
          primaryColor: KPrimaryColor,
          scaffoldBackgroundColor: Colors.white,
          textTheme: Theme.of(context).textTheme.apply(
                fontFamily: 'Montserrat',
              )),
      home: SplashScreen(),
    );
  }
}
