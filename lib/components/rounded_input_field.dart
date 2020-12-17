import 'package:flutter/material.dart';

import '../constant.dart';

class RoundedInputField extends StatelessWidget {
  final String hintText;
  final ValueChanged<String> onChanged;
  const RoundedInputField({
    Key key,
    this.hintText,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      autocorrect: false,
      style: TextStyle(color: KPrimary_DarkColor, fontWeight: FontWeight.w500),
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(fontSize: 15),
        contentPadding: EdgeInsets.all(15),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(40)),
            borderSide: BorderSide(color: KPrimary_PinkColor, width: 1.5)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(40)),
            borderSide: BorderSide(color: KPrimary_PinkColor, width: 1.5)),
      ),
    );
  }
}
