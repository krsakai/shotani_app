import 'package:shotani_app/presentation/model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final settingModelProvider = ChangeNotifierProvider.autoDispose((_) => SettingModel());

class SettingModel extends Model {
  int _counter = 0;
  bool _toggle = false;
  bool get toggle => _toggle;
  int get counter => _counter;
  void incrementCounter() {
    _counter++;
    notifyListeners();
  }

  void update(bool value) {
    _toggle = value;
    notifyListeners();
  }
}