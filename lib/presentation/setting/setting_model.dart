import 'package:shotani_app/domain/setting/setting.dart';
import 'package:shotani_app/presentation/model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shotani_app/repository/user_repository.dart';
import 'package:shotani_app/util/messaging.dart';
import 'package:shotani_app/util/shared_preferences.dart';

final settingModelProvider = ChangeNotifierProvider.autoDispose((_) => SettingModel());

class SettingModel extends Model {
  final List<Setting> settingList = [
    Setting(id: 0, name: "試合開始通知", group: "設定", content: SettingContent.gameStartPushNotification),
    Setting(id: 1, name: "打席結果通知", group: "設定", content: SettingContent.batReportPushNotification)
  ];
  bool isAvaiableGameStartPushNotification = false;
  bool isAvaiableBatReportPushNotification = false;

  @override
  Future init() async {
    isAvaiableGameStartPushNotification = await _isAvaiableGameStartPushNotification();
    isAvaiableBatReportPushNotification = await _isAvaiableBatReportPushNotification();
    notifyListeners();
  }

  Future<bool> _isAvaiableGameStartPushNotification() async {
    final isAvaiablePushNotification = await Messaging.isAvaiablePushNotification();
    final isUserAllowNotification = await PreferenceKey.isAllowedGameStartNotification.get<bool>();
    return isAvaiablePushNotification && isUserAllowNotification;
  }

  Future<bool> _isAvaiableBatReportPushNotification() async {
    final isAvaiablePushNotification = await Messaging.isAvaiablePushNotification();
    final isUserAllowNotification = await PreferenceKey.isAllowedBatReportNotification.get<bool>();
    return isAvaiablePushNotification && isUserAllowNotification;
  }

  Future<bool> enablingGameStartPushNotificationWithUser() async {
    try {
      await UserRepository().updateToken();
      await UserRepository().update({'game_notification_suspend': false});
      isAvaiableGameStartPushNotification = true;
      notifyListeners();
      await PreferenceKey.isAllowedGameStartNotification.set(PreferenceModel(true));
      return true;
    } catch(exception) {
      return false;
    }
  }

  Future<bool> disnablingGameStartPushNotificationWithUser() async {
    try {
      await UserRepository().update({'game_notification_suspend': true});
      isAvaiableGameStartPushNotification = false;
      notifyListeners();
      await PreferenceKey.isAllowedGameStartNotification.set(PreferenceModel(false));
      return true;
    } catch(exception) {
      return false;
    }
  }

  Future<bool> enablingBatReportPushNotificationWithUser() async {
    try {
      await UserRepository().updateToken();
      await UserRepository().update({'bat_notification_suspend': false});
      isAvaiableBatReportPushNotification = true;
      notifyListeners();
      await PreferenceKey.isAllowedBatReportNotification.set(PreferenceModel(true));
      return true;
    } catch(exception) {
      return false;
    }
  }

  Future<bool> disnablingBatReportPushNotificationWithUser() async {
    try {
      await UserRepository().update({'bat_notification_suspend': true});
      isAvaiableBatReportPushNotification = false;
      notifyListeners();
      await PreferenceKey.isAllowedBatReportNotification.set(PreferenceModel(false));
      return true;
    } catch(exception) {
      return false;
    }
  }
}