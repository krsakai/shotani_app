import 'package:flutter/material.dart';

abstract class Model extends ChangeNotifier {
  Model() {init();}
  Future<void> init() async {}
}