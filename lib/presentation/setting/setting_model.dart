import 'package:shotani_app/domain/setting/setting.dart';
import 'package:shotani_app/presentation/model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shotani_app/repository/user_repository.dart';
import 'package:shotani_app/util/messaging.dart';
import 'package:shotani_app/util/shared_preferences.dart';

final settingModelProvider = ChangeNotifierProvider.autoDispose((_) => SettingModel());

class SettingModel extends Model {
  final List<Setting> settingList = [
    Setting(id: 0, name: "プッシュ通知", group: "設定", content: SettingContent.pushNotification)
  ];
  bool isAvaiablePushNotification = false;

  @override
  Future init() async {
    isAvaiablePushNotification = await _isAvaiablePushNotification();
    notifyListeners();
  }

  Future<bool> _isAvaiablePushNotification() async {
    final isAvaiablePushNotification = await Messaging.isAvaiablePushNotification();
    final isUserAllowNotification = await PreferenceKey.isAllowedNotification.get<bool>();
    return isAvaiablePushNotification && isUserAllowNotification;
  }

  Future<bool> enablingPushNotificationWithUser() async {
    try {
      await UserRepository().updateToken();
      isAvaiablePushNotification = true;
      notifyListeners();
      await PreferenceKey.isAllowedNotification.set(PreferenceModel(true));
      return true;
    } catch(exception) {
      return false;
    }
  }

  Future<bool> disnablingPushNotificationWithUser() async {
    try {
      await UserRepository().update({'suspend': true});
      isAvaiablePushNotification = false;
      notifyListeners();
      await PreferenceKey.isAllowedNotification.set(PreferenceModel(false));
      return true;
    } catch(exception) {
      return false;
    }
  }
}