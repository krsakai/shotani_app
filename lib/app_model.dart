import 'package:firebase_core/firebase_core.dart';
import 'package:shotani_app/presentation/model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shotani_app/repository/user_repository.dart';
import 'package:shotani_app/util/shared_preferences.dart';

final appModelProvider = ChangeNotifierProvider.autoDispose((_) => AppModel());

class AppModel extends Model {
  AppModel();

  Future init() async {
    final isReboot = await PreferenceKey.isReboot.get<bool>();
    if (isReboot == null || !isReboot) {
      await PreferenceKey.isReboot.set(true);
      await PreferenceKey.isAllowedNotification.set(true);
    } 
    await Firebase.initializeApp();
    await UserRepository().updateToken();
  }
}
