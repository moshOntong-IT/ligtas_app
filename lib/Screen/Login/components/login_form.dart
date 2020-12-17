import 'package:flutter/material.dart';
import 'package:ligtas_app/Screen/Login/components/ThirdParty.dart';
import 'package:ligtas_app/components/rounded_button.dart';
import 'package:ligtas_app/components/rounded_input_field.dart';
import 'package:ligtas_app/components/rounded_pass_input_field.dart';
import 'package:ligtas_app/components/text_field_container.dart';

import '../../../constant.dart';

class LoginForm extends StatefulWidget {
  final isKeyboardShow;
  const LoginForm({
    Key key,
    this.isKeyboardShow,
  }) : super(key: key);

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              "assets/icon/Logo.png",
              width: size.width * 0.3,
            ),
            SizedBox(width: 20),
            Column(children: [
              Text(
                "LIGTAS",
                style: TextStyle(
                    color: KPrimary_DarkColor,
                    fontWeight: FontWeight.w700,
                    fontSize: 30),
              ),
              Text(
                "Disaster Risk",
                style: TextStyle(
                    color: KPrimary_DarkColor,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Montserrat',
                    fontSize: 15),
              ),
              Text(
                "Management",
                style: TextStyle(
                    color: KPrimary_DarkColor,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Montserrat',
                    fontSize: 14),
              )
            ])
          ],
        ),
        Column(children: [
          TextFieldContainer(
            child: RoundedInputField(
              hintText: "Username",
              onChanged: (value) {},
            ),
          ),
          TextFieldContainer(
              child: RoundedPasswordInputField(onChanged: (value) {})),
          Container(
            alignment: Alignment.centerRight,
            child: GestureDetector(
              onTap: () {},
              child: Text("Forgot Password?"),
            ),
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          RoundedButton(title: "LOGIN", pressed: () {}),
        ]),
        SizedBox(
          height: size.height * 0.05,
        ),
        ThirdParty(
          isKeyboardShow: widget.isKeyboardShow,
        )
      ],
    );
  }
}
