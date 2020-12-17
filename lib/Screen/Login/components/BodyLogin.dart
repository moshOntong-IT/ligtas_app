// import 'package:flutter/material.dart';
// import 'package:ligtas_app/components/rounded_input_field.dart';
// import 'package:ligtas_app/components/rounded_pass_input_field.dart';
// import 'package:ligtas_app/components/text_field_container.dart';

// import '../../../constant.dart';
// import '../BackgroundLogin.dart';

// class BodyLogin extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size; //Provide size of screen
//     return LoginBackground(
//         child: Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: <Widget>[
//         Container(
//           child: Column(
//             children: <Widget>[
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: <Widget>[
//                   Image.asset(
//                     "assets/icon/Logo.png",
//                     width: size.width * 0.3,
//                   ),
//                   SizedBox(width: 20),
//                   Column(children: [
//                     Text(
//                       "LIGTAS",
//                       style: TextStyle(
//                           color: KPrimary_DarkColor,
//                           fontWeight: FontWeight.w700,
//                           fontSize: 30),
//                     ),
//                     Text(
//                       "Disaster Risk",
//                       style: TextStyle(
//                           color: KPrimary_DarkColor,
//                           fontWeight: FontWeight.w700,
//                           fontFamily: 'Montserrat',
//                           fontSize: 15),
//                     ),
//                     Text(
//                       "Management",
//                       style: TextStyle(
//                           color: KPrimary_DarkColor,
//                           fontWeight: FontWeight.w700,
//                           fontFamily: 'Montserrat',
//                           fontSize: 14),
//                     )
//                   ])
//                 ],
//               ),
//               Column(children: [
//                 TextFieldContainer(
//                   child: RoundedInputField(
//                     hintText: "Username",
//                     onChanged: (value) {},
//                   ),
//                 ),
//                 RoundedPasswordInputField(onChanged: (value) {}),
//               ]),
//             ],
//           ),
//         )
//       ],
//     ));
//   }
// }
