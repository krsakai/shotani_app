import 'package:firebase_messaging/firebase_messaging.dart';

class Messaging {
  static Future<String> getToken(String uid) async {
    try {
      final setting = await FirebaseMessaging.instance.requestPermission(sound: true, badge: true, alert: true);
      if (setting.authorizationStatus.isAuthorized) {
        return await FirebaseMessaging.instance.getToken();
      } else {
        throw Error();
      }
    } catch(exception) {
      throw exception;
    }
  }

  static Future<bool> isAvaiablePushNotification() async {
    final setting = await FirebaseMessaging.instance.getNotificationSettings();
    return setting.authorizationStatus.isAuthorized;
  }
}

extension AuthorizationStatusExtension on AuthorizationStatus {
  bool get isAuthorized => this == AuthorizationStatus.authorized;
}
