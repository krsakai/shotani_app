import 'package:flutter/material.dart';

enum BorderDirection {
  left, right, top, bottom
}

extension BorderDirectionExtension on BorderDirection {
  static const List<BorderDirection> all = [
    BorderDirection.left, 
    BorderDirection.right, 
    BorderDirection.top, 
    BorderDirection.bottom
  ];
}

class AppBorder {

  static Border border(Color color, double width, [List<BorderDirection> directionList = BorderDirectionExtension.all]) {
    var left = 0.0; var right = 0.0; var top = 0.0; var bottom = 0.0;
    directionList.forEach((direction) {
      switch (direction) {
        case BorderDirection.left: return left = width;
        case BorderDirection.right: return right = width;
        case BorderDirection.top: return top = width;
        case BorderDirection.bottom: return bottom = width;
      }
    });
    return Border(
      left: BorderSide(color: color, width: left),
      top: BorderSide(color: color, width: top),
      right: BorderSide(color: color, width: right),
      bottom: BorderSide(color: color, width: bottom)
    );
  }
}