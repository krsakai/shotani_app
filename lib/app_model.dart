import 'package:firebase_core/firebase_core.dart';
import 'package:shotani_app/presentation/model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shotani_app/util/fcm_setting.dart';

final appModelProvider = ChangeNotifierProvider.autoDispose((_) => AppModel());

class AppModel extends Model {
  AppModel();

  Future init() async {
    await Firebase.initializeApp();
    await FCMSetting.updateToken();
  }
}