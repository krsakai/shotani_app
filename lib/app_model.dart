import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:shotani_app/presentation/model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shotani_app/repository/user_repository.dart';
import 'package:shotani_app/util/remote_config.dart';
import 'package:shotani_app/util/shared_preferences.dart';

final appModelProvider = ChangeNotifierProvider.autoDispose((_) => AppModel());

class AppModel extends Model {
  AppModel();

  RemoteConfig remoteConfig;

  Future init() async {
    await Firebase.initializeApp();
    final isReboot = await PreferenceKey.isReboot.get<bool>();
    if (isReboot == null || !isReboot) {
      await PreferenceKey.isReboot.set(true);
      await PreferenceKey.isAllowedGameStartNotification.set(true);
      await PreferenceKey.isAllowedBatReportNotification.set(true);
      await UserRepository().update({'bat_notification_suspend': false, 'game_notification_suspend': false});
      await AppRemoteConfig.setup();
    } 
    await UserRepository().updateToken();
  }
}
