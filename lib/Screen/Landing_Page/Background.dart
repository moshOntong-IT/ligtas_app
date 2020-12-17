import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child; // this is for body
  const Background({
    Key key,
    @required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; //Provide size of screen
    return Container(
      height: size.height,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            top: -50,
            left: size.width * 0.3,
            child: Image.asset(
              "assets/images/decor_1.png",
              width: size.width * 0.7,
            ),
          ),
          Positioned(
            bottom: -50,
            right: 100 * 1.5,
            child: Image.asset("assets/images/decor_3.png"),
            width: size.width * 0.7,
          ),
          child, // insert body
        ],
      ),
    );
  }
}
