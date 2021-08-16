import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:ribbon/ribbon.dart';
import 'package:shotani_app/util/colors.dart';

class DataTableRibbon extends HookWidget {
  const DataTableRibbon({
    this.isDisplay = true, 
    this.text = "", 
    this.child, 
    this.textColor = Colors.white,
    this.color = AppColor.tableCellNewRibbon,
    this.location = RibbonLocation.topStart
  });

  final bool isDisplay;
  final Widget child;
  final String text;
  final Color textColor;
  final Color color;
  final RibbonLocation location;

  @override
  Widget build(BuildContext context) {
    return Ribbon(
      nearLength: isDisplay ? 15 : 1,
      farLength: isDisplay ? 35 : 1,
      title: text,
      titleStyle: TextStyle(
        color: textColor,
        fontSize: 12,
        fontWeight: FontWeight.bold
      ),
      color: color,
      location: location,
      child: child
    );
  }
}