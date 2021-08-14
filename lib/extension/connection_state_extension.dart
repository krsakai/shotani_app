import 'package:flutter/cupertino.dart';

extension StateToFlag on ConnectionState {
  bool get isWaiting => (this == ConnectionState.waiting || this == ConnectionState.none);
}