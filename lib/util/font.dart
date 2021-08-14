
import 'package:flutter/material.dart';

class AppFont {

  static TextStyle systemBoldBlack(double fontSize) => TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: fontSize,
    color: Colors.black87,
  );

  static TextStyle systemBoldWhite(double fontSize) => TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: fontSize,
    color: Colors.white,
  );

  static TextStyle systemBlack(double fontSize) => TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: fontSize,
    color: Colors.black87,
  );

  static TextStyle systemWhite(double fontSize) => TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: fontSize,
    color: Colors.white,
  );
}