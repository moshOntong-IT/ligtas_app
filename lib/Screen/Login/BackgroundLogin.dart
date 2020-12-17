import 'package:flutter/material.dart';
import 'package:keyboard_visibility/keyboard_visibility.dart';

import 'components/login_form.dart';

class LoginBackground extends StatefulWidget {
  const LoginBackground({
    Key key,
  }) : super(key: key);

  @override
  _LoginBackgroundState createState() => _LoginBackgroundState();
}

class _LoginBackgroundState extends State<LoginBackground> {
  KeyboardVisibilityNotification _keyboardVisibility =
      new KeyboardVisibilityNotification();
  int _keyboardVisibilitySubscriberId;
  bool _keyboardState;

  @protected
  void initState() {
    super.initState();

    _keyboardState = _keyboardVisibility.isKeyboardVisible;

    _keyboardVisibilitySubscriberId = _keyboardVisibility.addNewListener(
      onChange: (bool visible) {
        setState(() {
          _keyboardState = visible;
        });
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
    _keyboardVisibility.removeListener(_keyboardVisibilitySubscriberId);
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Opacity(
            opacity: _keyboardState ? 0.0 : 1.0,
            child: Stack(
              children: [
                Positioned(
                  top: -25,
                  child: Image.asset(
                    "assets/images/decor_4.png",
                    width: size.width * 1.0,
                  ),
                ),
                Positioned(
                  bottom: -30,
                  right: 0,
                  child: Image.asset("assets/images/decor_5.png"),
                  width: size.width * 0.45,
                ),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
                child: LoginForm(
                  isKeyboardShow: _keyboardState,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
