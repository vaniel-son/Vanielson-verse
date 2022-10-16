import '../style/colors.dart';
import 'package:flutter/material.dart';

TextStyle primaryBodyTextBold01({Color color = onPrimaryWhite, double fontSize = 14.0, FontStyle fontStyle = FontStyle.normal}) {
  // future: dynamically choose the font size and family based on device and screen real estate
  String dFontFamily = 'WorkSans';
  double dFontSize = fontSize;

  return TextStyle(
    color: color,
    fontWeight: FontWeight.bold,
    fontFamily: dFontFamily,
    fontStyle:  fontStyle,
    fontSize: dFontSize,
  );
}

TextStyle primaryBodyText01({Color color = onPrimaryWhite, double fontSize = 16.0, FontStyle fontStyle = FontStyle.normal}) {
  // future: dynamically choose the font size and family based on device and screen real estate
  String dFontFamily = 'WorkSans';
  double dFontSize = fontSize;

  return TextStyle(
    color: color,
    fontWeight: FontWeight.normal,
    fontFamily: dFontFamily,
    fontStyle:  fontStyle,
    fontSize: dFontSize,
  );
}

TextStyle header1({Color color = onPrimaryWhite, double fontSize = 24.0, FontStyle fontStyle = FontStyle.normal}) {
  // future: dynamically choose the font size and family based on device and screen real estate
  String dFontFamily = 'WorkSans';
  double dFontSize = fontSize;

  return TextStyle(
    color: color,
    fontWeight: FontWeight.bold,
    fontFamily: dFontFamily,
    fontStyle:  fontStyle,
    fontSize: dFontSize,
  );
}