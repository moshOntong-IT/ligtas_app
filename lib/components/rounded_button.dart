import 'package:flutter/material.dart';

import '../constant.dart';

class RoundedButton extends StatelessWidget {
  final String title;
  final Function pressed;
  const RoundedButton({
    Key key,
    this.title,
    this.pressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.7,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: FlatButton(
          onPressed: pressed,
          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
          color: KPrimary_PinkColor,
          child: Text(
            title,
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.w600, fontSize: 15),
          ),
        ),
      ),
    );
  }
}
