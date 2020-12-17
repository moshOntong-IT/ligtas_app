import 'package:flutter/material.dart';
import 'package:ligtas_app/constant.dart';

class ThirdParty extends StatefulWidget {
  final bool isKeyboardShow;

  const ThirdParty({Key key, this.isKeyboardShow}) : super(key: key);
  @override
  _ThirdPartyState createState() => _ThirdPartyState();
}

class _ThirdPartyState extends State<ThirdParty> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Opacity(
      opacity: widget.isKeyboardShow ? 0.0 : 1.0,
      child: Container(
        // margin: EdgeInsets.symmetric(vertical: size.height * 0.02),
        width: size.width * 0.8,
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                beDivider(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text("BE CONNECT WITH"),
                ),
                beDivider(),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Expanded beDivider() {
    return Expanded(
      child: Divider(
        color: KPrimary_DarkColor,
      ),
    );
  }
}
