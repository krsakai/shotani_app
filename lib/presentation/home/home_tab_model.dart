import 'package:shotani_app/presentation/model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final homeModelProvider = ChangeNotifierProvider((_) => HomeModel());

class HomeModel extends Model {
  int _currentIndex = 0;

  int get currentIndex => _currentIndex;

  set currentIndex(int index) {
    _currentIndex = index;
    notifyListeners();
  }
}