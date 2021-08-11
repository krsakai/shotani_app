import 'package:flutter/material.dart';

abstract class Model extends ChangeNotifier {
  Model() {
    init();
  }

  /// ローディングフラグ
  bool isLoading = false;

  Future<void> init() async {}

  @protected
  void startLoading() {
    isLoading = true;
    notifyListeners();
  }

  @protected
  void endLoading() {
    isLoading = false;
    notifyListeners();
  }
}