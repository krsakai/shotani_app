import 'package:flutter/material.dart';

class AppBorder {

  static Border squareBorder(Color color, double width) => Border(
    left: BorderSide(color: color, width: width),
    top: BorderSide(color: color, width: width),
    right: BorderSide(color: color, width: width),
    bottom: BorderSide(color: color, width: width),
  );
}