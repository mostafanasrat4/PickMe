import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:pickme/res/app_constants.dart';

TextStyle myTextStyle(double fontSize, FontWeight fontWeight) {
  return TextStyle(
    color: Constants.FONT_COLOR_1,
    fontSize: fontSize,
    fontWeight: fontWeight,
  );
}

Widget myText(String text, double fontSize, FontWeight fontWeight, {Color ?color}) {

  return Text(
    text,
    style: TextStyle(
      color: color ?? Constants.FONT_COLOR_1,
      fontSize: fontSize,
      fontWeight: fontWeight,
    ),
  );
}

// class MyText extends Text {
//   MyText(super.data);
//
//
// }
