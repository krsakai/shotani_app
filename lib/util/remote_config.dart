import 'package:package_info/package_info.dart';
import 'package:pub_semver/pub_semver.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';

class AppRemoteConfig {
  AppRemoteConfig();
  static AppRemoteConfig _instance;
  static RemoteConfig remoteConfig;

  static Future init() async {
    if (_instance == null) _instance = new AppRemoteConfig._internal();
    remoteConfig = await RemoteConfig.instance;
    return _instance;
  }
  AppRemoteConfig._internal();

  static Future setup() async {
    await AppRemoteConfig.init();
    try {
      final info = await PackageInfo.fromPlatform();
      final appVersion = info.version;
      await remoteConfig.setDefaults(<String, dynamic>{
        'admob_banner_enabled': false,
        'required_version': appVersion,
        'app_id': '585027354'
        }
      );
      await remoteConfig.setConfigSettings(RemoteConfigSettings(minimumFetchIntervalMillis: 1000 * 60 * 60));
      await remoteConfig.fetch();
      await remoteConfig.activateFetched();
    } on Exception catch (_) {
      await remoteConfig.fetch();
      await remoteConfig.activateFetched();
    } 
  }

  static Future<bool> shouldForceUpdate() async {
    await AppRemoteConfig.setup();
    final requiredVersion = Version.parse(AppRemoteConfig.remoteConfig.getString('required_version'));
    final packageInfo = await PackageInfo.fromPlatform();
    return Version.parse(packageInfo.version).compareTo(requiredVersion).isNegative;
  }

  static String appId() => Version.parse(AppRemoteConfig.remoteConfig.getString('app_id')).toString();
}

