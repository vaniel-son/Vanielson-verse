import 'package:flutter/material.dart';
import 'colors.dart';

ColorScheme vanielsonColorScheme = const ColorScheme(
    primary: Color(0xffEB0A11),
    primaryContainer: Color(0xffB0070D),
    secondary: Color(0xff161B30),
    secondaryContainer: Color(0xff0D101C),
    surface: Color(0xff22283D),
    background: Color(0xff161B30),
    error: Colors.red,
    onPrimary: Color(0xffffffff),
    onSecondary: Color(0xffffffff),
    onSurface: Color(0xffffffff),
    onBackground: Color(0xffffffff),
    onError: Color(0xffffffff),
    brightness: Brightness.dark);

final ThemeData vanielsonTheme = ThemeData(
  colorScheme: vanielsonColorScheme,
  fontFamily: 'PressStart2P',
  textTheme: const TextTheme(
    // used by king of the hill
    caption: TextStyle(fontSize: 10),
    bodyText2: TextStyle(fontSize: 12, height: 1.5),

    // unused by king of the hill
    bodyText1: TextStyle(fontSize: 14, fontWeight: FontWeight.normal,fontStyle: FontStyle.normal,height: 1.5),
    headline6: TextStyle(fontSize: 18, color: offWhiteColor), // was 20
    headline5: TextStyle(fontSize: 18, color: offWhiteColor, fontWeight: FontWeight.bold), // was 36
    headline4: TextStyle(fontSize: 20),
    headline3: TextStyle(fontSize: 36),
    headline2: TextStyle(fontSize: 42),
    headline1: TextStyle(fontSize: 64),
  ),

);