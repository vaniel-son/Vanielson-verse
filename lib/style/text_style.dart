import '../style/colors.dart';
import 'package:flutter/material.dart';

TextStyle primaryBTBold1({Color color = onPrimaryWhite, double fontSize = 12.0, FontStyle fontStyle = FontStyle.normal}) {
  // future: dynamically choose the font size and family based on device and screen real estate
  String dFontFamily = 'PressStart2P';
  double dFontSize = fontSize;

  return TextStyle(
    color: color,
    fontWeight: FontWeight.bold,
    //fontFamily: dFontFamily,
    fontStyle:  fontStyle,
    fontSize: dFontSize,
  );
}