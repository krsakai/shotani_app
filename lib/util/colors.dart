
import 'package:flutter/material.dart';

class AppColor {
  static const int _primaryValue = 0xFF1A55A4;
  static const MaterialColor primarySwatch = MaterialColor(
    _primaryValue,
    const <int, Color>{
      50: Color(0xFFE8F0F8),
      100: Color(0xFFC5DAEE),
      200: Color(0xFF9EC2E3),
      300: Color(0xFF77AAD7),
      400: Color(0xFF5A97CF),
      500: Color(0xFF3D85C6),
      600: Color(0xFF377DC0),
      700: Color(0xFF2F72B9),
      800: Color(0xFF2768B1),
      900: Color(0xFF1A55A4),
    },
  );

  static const tableBorder = Color(0xFFFFFFFF);
  static const tableHeaderCell = Color(0xFF2F72B9);
  static const tableContentCell1 = Color(0xFFE9E9E9);
  static const tableContentCell2 = Color(0xFFCBCBCB);
  static const tableLeadCell = Color(0xFF2F72B9);

  static const tableCellNewRibbon = Color(0xFFFE001E);

  static const offWhite = Color(0xFFF9F3F3);
  static const primaryRed = Color(0xFFDE0F27);
}