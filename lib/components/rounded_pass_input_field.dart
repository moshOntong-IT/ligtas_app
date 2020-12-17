import 'package:flutter/material.dart';

import '../constant.dart';

class RoundedPasswordInputField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const RoundedPasswordInputField({
    Key key,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      obscureText: true,
      style: TextStyle(color: KPrimary_DarkColor, fontWeight: FontWeight.w500),
      decoration: InputDecoration(
        hintText: "Password",
        hintStyle: TextStyle(fontSize: 15),
        suffixIcon: Icon(Icons.visibility),
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
