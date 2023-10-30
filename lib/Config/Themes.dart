import 'package:e_book/Config/Colors.dart';
import 'package:flutter/material.dart';

var lightTheme = ThemeData(
  useMaterial3: true,
  
  colorScheme: const ColorScheme(
      brightness: Brightness.light,
      primary: primaryColor,
      onPrimary: backgroundColor,
      secondary: secondaryColor,
      onSecondary: backgroundColor,
      error: Colors.red,
      onError: fontColor,
      background: backgroundColor,
      onBackground: fontColor,
      surface: backgroundColor,
      onSurface: fontColor,
  ),


  textTheme: const TextTheme(
    headlineLarge: TextStyle(
      fontFamily: "Poppins",
      fontSize: 30,
      fontWeight: FontWeight.w600,
    ),
    headlineMedium: TextStyle(
      fontFamily: "Poppins",
      fontSize: 20,
      fontWeight: FontWeight.w600,
    ),
    bodyLarge: TextStyle(
      fontFamily: "Poppins",
      fontSize: 18,
      fontWeight: FontWeight.w500,
    ),
    bodyMedium: TextStyle(
      fontFamily: "Poppins",
      fontSize: 15,
      fontWeight: FontWeight.w500,
    ),
    bodySmall: TextStyle(
      fontFamily: "Poppins",
      fontSize: 12,
      fontWeight: FontWeight.w500,
    ),
    labelLarge: TextStyle(
      fontFamily: "Poppins",
      fontSize: 18,
      fontWeight: FontWeight.w400,
      color: labelColor,
    ),
    labelMedium: TextStyle(
      fontFamily: "Poppins",
      fontSize: 15,
      fontWeight: FontWeight.w400,
      color: labelColor,
    ),
    labelSmall: TextStyle(
      fontFamily: "Poppins",
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: labelColor,
    ),
  ),
);
