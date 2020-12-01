import 'package:flutter/material.dart';

Color gPrimaryColor = Color(0xFF1B1F22);
Color btnTopColor = Color(0xFF232726);
Color shadowColor = Color(0xFF33373a);
Color iconsColors = Color(0xFFde8670);
Color unselct = Color(0xFF62584c);
Color bottomColors = Color(0xFF1b1f22);
Color bodyColors = Color(0xFF1f2326);
Color mC = Colors.grey.shade100;
Color mCL = Colors.black45;
//Color mCLl = Colors.grey;
Color mCD = Colors.black.withOpacity(0.85);
Color mCLl = Colors.black26.withOpacity(0.85);
Color mCC = Colors.green.withOpacity(0.65);
Color fCD = Colors.grey.shade700;
Color fCL = Colors.grey;

BoxShadow gBoxShadow = BoxShadow(
  color: Colors.grey.withOpacity(0.2),
  spreadRadius: 2,
  blurRadius: 8,
  offset: Offset(0, 0),
);

BoxDecoration nMboxInvert = BoxDecoration(
  borderRadius: BorderRadius.circular(50),
  gradient: new LinearGradient(
      colors: [
        const Color(0xFF33373a),
        const Color(0xFF232726),
      ],
      begin: const FractionalOffset(0.0, 0.0),
      end: const FractionalOffset(1.0, 0.0),
      stops: [0.0, 1.0],
      tileMode: TileMode.clamp),

  boxShadow: [
    BoxShadow(
      color: shadowColor,
      offset: Offset(-4.0, -3.0),
      blurRadius: 12.0,
    ),
    BoxShadow(
      color: Colors.black.withOpacity(0.6),
      offset: Offset(8.0, 8.0),
      blurRadius: 8.0,
    ),
  ],
  color: Color(0xFFEFEEEE),

  // boxShadow: [
  //   BoxShadow(
  //       color: shadowColor,
  //       offset: Offset(-3, -2),
  //       blurRadius: 2,
  //       spreadRadius: 1),
  // ]
);

BoxDecoration storyContainer = BoxDecoration(
    borderRadius: BorderRadius.circular(50),
    color: btnTopColor,
    border: Border.all(width: .5, color: iconsColors, style: BorderStyle.solid),
    boxShadow: [
      BoxShadow(
          color: shadowColor,
          offset: Offset(1, 1),
          blurRadius: 6,
          spreadRadius: 3),
    ]);
