import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:shotani_app/presentation/model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shotani_app/util/remote_config.dart';

final homeModelProvider = ChangeNotifierProvider((_) => HomeModel());

class HomeModel extends Model with WidgetsBindingObserver {
  final _reloadObserver = StreamController<bool>();
  Stream<bool> get loadStream => _reloadObserver.stream;
  int _currentIndex = 0;
  int get currentIndex => _currentIndex;
  
  bool shouldForceUpdate = false;
  bool opendForceUpdateDialog = false;

  set currentIndex(int index) {
    _currentIndex = index;
    notifyListeners();
  }

  @override
  Future init() async {
    WidgetsBinding.instance.addObserver(this);
    _reloadObserver.sink.add(true);
    shouldForceUpdate = await AppRemoteConfig.shouldForceUpdate();
    _reloadObserver.sink.add(false);
  }

  Future reload() async {
    final fetchedValue = await AppRemoteConfig.shouldForceUpdate();
    if (shouldForceUpdate != fetchedValue) {
      shouldForceUpdate = fetchedValue;
      _reloadObserver.sink.add(true);
      await Future.delayed(Duration(milliseconds: 500));
      _reloadObserver.sink.add(false);
    }
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      reload();
    }
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    _reloadObserver.close();
    super.dispose();
  }
}